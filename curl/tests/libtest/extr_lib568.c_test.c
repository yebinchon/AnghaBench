
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ st_size; } ;
typedef TYPE_1__ struct_stat ;
typedef char curl_slist ;
typedef char* curl_off_t ;
typedef char FILE ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADERDATA ;
 int CURLOPT_INFILESIZE_LARGE ;
 int CURLOPT_POSTFIELDS ;
 int CURLOPT_READDATA ;
 int CURLOPT_RTSPHEADER ;
 int CURLOPT_RTSP_REQUEST ;
 int CURLOPT_RTSP_STREAM_URI ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURL_GLOBAL_ALL ;
 char* CURL_RTSPREQ_ANNOUNCE ;
 char* CURL_RTSPREQ_DESCRIBE ;
 char* CURL_RTSPREQ_OPTIONS ;
 int O_RDONLY ;
 int TEST_ERR_MAJOR_BAD ;
 int close (int) ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 char* curl_slist_append (char*,char*) ;
 int curl_slist_free_all (char*) ;
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
  int sdp;
  FILE *sdpf = ((void*)0);
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

  test_setopt(curl, CURLOPT_URL, URL);

  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  sdp = open("log/file568.txt", O_RDONLY);
  fstat(sdp, &file_info);
  close(sdp);

  sdpf = fopen("log/file568.txt", "rb");
  if(sdpf == ((void*)0)) {
    fprintf(stderr, "can't open log/file568.txt\n");
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_ANNOUNCE);

  test_setopt(curl, CURLOPT_READDATA, sdpf);
  test_setopt(curl, CURLOPT_UPLOAD, 1L);
  test_setopt(curl, CURLOPT_INFILESIZE_LARGE, (curl_off_t) file_info.st_size);


  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  test_setopt(curl, CURLOPT_UPLOAD, 0L);
  fclose(sdpf);
  sdpf = ((void*)0);


  stream_uri = suburl(URL, request++);
  if(!stream_uri) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSP_STREAM_URI, stream_uri);
  free(stream_uri);
  stream_uri = ((void*)0);

  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_DESCRIBE);
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

  custom_headers = curl_slist_append(custom_headers,
                                     "Content-Type: posty goodness");
  if(!custom_headers) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }
  test_setopt(curl, CURLOPT_RTSPHEADER, custom_headers);
  test_setopt(curl, CURLOPT_RTSP_REQUEST, CURL_RTSPREQ_ANNOUNCE);
  test_setopt(curl, CURLOPT_POSTFIELDS,
              "postyfield=postystuff&project=curl\n");

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;

  test_setopt(curl, CURLOPT_POSTFIELDS, ((void*)0));
  test_setopt(curl, CURLOPT_RTSPHEADER, ((void*)0));
  curl_slist_free_all(custom_headers);
  custom_headers = ((void*)0);


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

  if(sdpf)
    fclose(sdpf);

  free(stream_uri);

  if(custom_headers)
    curl_slist_free_all(custom_headers);

  curl_easy_cleanup(curl);
  curl_global_cleanup();

  return res;
}
