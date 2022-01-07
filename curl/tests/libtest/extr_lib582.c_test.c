
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ st_size; } ;
typedef TYPE_2__ struct_stat ;
struct TYPE_8__ {int sockets; } ;
struct TYPE_6__ {int member_2; int member_1; int * member_0; } ;
struct timeval {int member_0; int tv_sec; int tv_usec; TYPE_3__ write; TYPE_3__ read; TYPE_1__ member_1; } ;
struct ReadWriteSockets {int member_0; int tv_sec; int tv_usec; TYPE_3__ write; TYPE_3__ read; TYPE_1__ member_1; } ;
typedef int fd_set ;
typedef scalar_t__ curl_socket_t ;
typedef long curl_off_t ;
typedef int FILE ;
typedef int CURLM ;
typedef int CURL ;


 int CURLMOPT_SOCKETDATA ;
 int CURLMOPT_SOCKETFUNCTION ;
 int CURLMOPT_TIMERDATA ;
 int CURLMOPT_TIMERFUNCTION ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_READDATA ;
 int CURLOPT_SSH_PRIVATE_KEYFILE ;
 int CURLOPT_SSH_PUBLIC_KEYFILE ;
 int CURLOPT_SSL_VERIFYHOST ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_USERPWD ;
 int CURLOPT_VERBOSE ;
 int CURL_CSELECT_IN ;
 int CURL_CSELECT_OUT ;
 int CURL_GLOBAL_ALL ;
 int CURL_SOCKET_TIMEOUT ;
 int FD_ZERO (int *) ;
 int TEST_ERR_FOPEN ;
 int TEST_ERR_FSTAT ;
 int TEST_ERR_MAJOR_BAD ;
 int TEST_ERR_USAGE ;
 int abort_on_test_timeout () ;
 int checkFdSet (int *,TYPE_3__*,int *,int ,char*) ;
 int checkForCompletion (int *,int*) ;
 struct timeval* curlSocketCallback ;
 struct timeval* curlTimerCallback ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int errno ;
 int fclose (int *) ;
 int fileno (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 int free (int ) ;
 int fstat (int ,TYPE_2__*) ;
 int getMicroSecondTimeout (struct timeval*) ;
 char* libtest_arg2 ;
 long libtest_arg3 ;
 int multi_add_handle (int *,int *) ;
 int multi_init (int *) ;
 int multi_setopt (int *,int ,struct timeval*) ;
 int notifyCurl (int *,int ,int ,char*) ;
 int res_global_init (int ) ;
 int select_test (int,int *,int *,int *,struct timeval*) ;
 int start_test_timing () ;
 int stderr ;
 char* strerror (int) ;
 int updateFdSet (TYPE_3__*,int *,scalar_t__*) ;

int test(char *URL)
{
  int res = 0;
  CURL *curl = ((void*)0);
  FILE *hd_src = ((void*)0);
  int hd;
  struct_stat file_info;
  CURLM *m = ((void*)0);
  struct ReadWriteSockets sockets = {{((void*)0), 0, 0}, {((void*)0), 0, 0}};
  struct timeval timeout = {-1, 0};
  int success = 0;

  start_test_timing();

  if(!libtest_arg3) {
    fprintf(stderr, "Usage: lib582 [url] [filename] [username]\n");
    return TEST_ERR_USAGE;
  }

  hd_src = fopen(libtest_arg2, "rb");
  if(((void*)0) == hd_src) {
    fprintf(stderr, "fopen() failed with error: %d (%s)\n",
            errno, strerror(errno));
    fprintf(stderr, "Error opening file: (%s)\n", libtest_arg2);
    return TEST_ERR_FOPEN;
  }


  hd = fstat(fileno(hd_src), &file_info);
  if(hd == -1) {

    fprintf(stderr, "fstat() failed with error: %d (%s)\n",
            errno, strerror(errno));
    fprintf(stderr, "ERROR: cannot open file (%s)\n", libtest_arg2);
    fclose(hd_src);
    return TEST_ERR_FSTAT;
  }
  fprintf(stderr, "Set to upload %d bytes\n", (int)file_info.st_size);

  res_global_init(CURL_GLOBAL_ALL);
  if(res) {
    fclose(hd_src);
    return res;
  }

  easy_init(curl);


  easy_setopt(curl, CURLOPT_UPLOAD, 1L);


  easy_setopt(curl, CURLOPT_URL, URL);


  easy_setopt(curl, CURLOPT_VERBOSE, 1L);


  easy_setopt(curl, CURLOPT_READDATA, hd_src);

  easy_setopt(curl, CURLOPT_USERPWD, libtest_arg3);
  easy_setopt(curl, CURLOPT_SSH_PUBLIC_KEYFILE, "curl_client_key.pub");
  easy_setopt(curl, CURLOPT_SSH_PRIVATE_KEYFILE, "curl_client_key");
  easy_setopt(curl, CURLOPT_SSL_VERIFYHOST, 0L);

  easy_setopt(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t)file_info.st_size);

  multi_init(m);

  multi_setopt(m, CURLMOPT_SOCKETFUNCTION, curlSocketCallback);
  multi_setopt(m, CURLMOPT_SOCKETDATA, &sockets);

  multi_setopt(m, CURLMOPT_TIMERFUNCTION, curlTimerCallback);
  multi_setopt(m, CURLMOPT_TIMERDATA, &timeout);

  multi_add_handle(m, curl);

  while(!checkForCompletion(m, &success)) {
    fd_set readSet, writeSet;
    curl_socket_t maxFd = 0;
    struct timeval tv = {10, 0};

    FD_ZERO(&readSet);
    FD_ZERO(&writeSet);
    updateFdSet(&sockets.read, &readSet, &maxFd);
    updateFdSet(&sockets.write, &writeSet, &maxFd);

    if(timeout.tv_sec != -1) {
      int usTimeout = getMicroSecondTimeout(&timeout);
      tv.tv_sec = usTimeout / 1000000;
      tv.tv_usec = usTimeout % 1000000;
    }
    else if(maxFd <= 0) {
      tv.tv_sec = 0;
      tv.tv_usec = 100000;
    }

    select_test((int)maxFd, &readSet, &writeSet, ((void*)0), &tv);


    checkFdSet(m, &sockets.read, &readSet, CURL_CSELECT_IN, "read");
    checkFdSet(m, &sockets.write, &writeSet, CURL_CSELECT_OUT, "write");

    if(timeout.tv_sec != -1 && getMicroSecondTimeout(&timeout) == 0) {

      notifyCurl(m, CURL_SOCKET_TIMEOUT, 0, "timeout");
    }

    abort_on_test_timeout();
  }

  if(!success) {
    fprintf(stderr, "Error uploading file.\n");
    res = TEST_ERR_MAJOR_BAD;
  }

test_cleanup:



  curl_multi_remove_handle(m, curl);
  curl_easy_cleanup(curl);
  curl_multi_cleanup(m);
  curl_global_cleanup();


  fclose(hd_src);


  free(sockets.read.sockets);
  free(sockets.write.sockets);

  return res;
}
