
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ st_size; } ;
typedef TYPE_1__ struct_stat ;
struct curl_slist {int dummy; } ;
typedef char* curl_off_t ;
typedef char FILE ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_READDATA ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_RTSP_STREAM_URI ;
 int CURLOPT_RTSP_TRANSPORT ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURLOPT_WRITEDATA ;
 int CURL_GLOBAL_ALL ;
 char* CURL_RTSPREQ_GET_PARAMETER ;
 char* CURL_RTSPREQ_OPTIONS ;
 char* CURL_RTSPREQ_SETUP ;
 int O_RDONLY ;
 int TEST_ERR_MAJOR_BAD ;
 int close (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int fclose (char*) ;
 char* fopen (char*,char*) ;
 int fprintf (int ,char*) ;
 int free (char*) ;
 int fstat (int,TYPE_1__*) ;
 int open (char*,int ) ;
 int stderr ;
 char* stdout ;
 char* suburl (char*,int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  int res;
  CURL *curl;
  int params;
  FILE *paramsf = ((void*)0);
  struct_stat file_info;
  char *stream_uri = ((void*)0);
  int request = 1;
  struct curl_slist *custom_headers = ((void*)0);

  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  test_setopt(curl, CURLOPT_HEADERDATA, stdout);
  test_setopt(curl, CURLOPT_WRITEDATA, stdout);
  test_setopt(curl, CURLOPT_VERBOSE, 1L);

  test_setopt(curl, CURLOPT_URL, URL);


  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  test_setopt(curl, CURLOPT_RTSP_TRANSPORT, "Planes/Trains/Automobiles");
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_SETUP);
  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);


  params = open("log/file572.txt", O_RDONLY);
  fstat(params, &file_info);
  close(params);

  paramsf = fopen("log/file572.txt", "rb");
  if(paramsf == ((void*)0)) {
    fprintf(stderr, "can't open log/file572.txt\n");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_GET_PARAMETER);

  test_setopt(curl, CURLOPT_READDATA, paramsf);
  test_setopt(curl, CURLOPT_UPLOAD, 1L);
  test_setopt(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t) file_info.st_size);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  test_setopt(curl, CURLOPT_UPLOAD, 0L);
  fclose(paramsf);
  paramsf = ((void*)0);


  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;



  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_GET_PARAMETER);
  test_setopt(curl, CURLOPT_POSTFIELDS, "packets_received\njitter\n");

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  test_setopt(curl, CURLOPT_POSTFIELDS, ((void*)0));


  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_OPTIONS);
  res = curl_easy_perform(curl);

test_cleanup:

  if(paramsf)
    fclose(paramsf);

  free(stream_uri);

  if(custom_headers)
    curl_slist_free_all(custom_headers);

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
