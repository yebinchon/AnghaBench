
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WriteThis {void* sizeleft; void* readptr; } ;
typedef void* curl_off_t ;
typedef int curl_mimepart ;
typedef int curl_mime ;
typedef int CURLcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_MIMEPOST ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_ZERO_TERMINATED ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 char* curl_easy_strerror (int) ;
 int curl_global_cleanup () ;
 int * curl_mime_addpart (int *) ;
 int curl_mime_data (int *,char*,...) ;
 int curl_mime_data_cb (int *,void*,int ,int *,int *,struct WriteThis*) ;
 int curl_mime_filename (int *,char*) ;
 int curl_mime_free (int *) ;
 int * curl_mime_init (int *) ;
 int curl_mime_name (int *,char*) ;
 void* data ;
 int fprintf (int ,char*) ;
 int printf (char*,char*) ;
 int read_callback ;
 int stderr ;
 scalar_t__ strlen (void*) ;
 int test_setopt (int *,int ,...) ;

__attribute__((used)) static int once(char *URL, bool oldstyle)
{
  CURL *curl;
  CURLcode res = CURLE_OK;

  curl_mime *mime = ((void*)0);
  curl_mimepart *part = ((void*)0);
  struct WriteThis pooh;
  struct WriteThis pooh2;
  curl_off_t datasize = -1;

  pooh.readptr = data;

  datasize = (curl_off_t)strlen(data);

  pooh.sizeleft = datasize;

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  mime = curl_mime_init(curl);
  if(!mime) {
    fprintf(stderr, "curl_mime_init() failed\n");
    curl_easy_cleanup(curl);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  part = curl_mime_addpart(mime);
  if(!part) {
    fprintf(stderr, "curl_mime_addpart(1) failed\n");
    curl_mime_free(mime);
    curl_easy_cleanup(curl);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  if(oldstyle) {
    res = curl_mime_name(part, "sendfile");
    if(!res)
      res = curl_mime_data_cb(part, datasize, read_callback,
                              ((void*)0), ((void*)0), &pooh);
    if(!res)
      res = curl_mime_filename(part, "postit2.c");
  }
  else {

    res = curl_mime_name(part, "sendfile alternative");
    if(!res)
      res = curl_mime_data_cb(part, datasize, read_callback,
                              ((void*)0), ((void*)0), &pooh);
    if(!res)
      res = curl_mime_filename(part, "file name 2");
  }

  if(res)
    printf("curl_mime_xxx(1) = %s\n", curl_easy_strerror(res));




  pooh2.readptr = data;

  datasize = (curl_off_t)strlen(data);

  pooh2.sizeleft = datasize;

  part = curl_mime_addpart(mime);
  if(!part) {
    fprintf(stderr, "curl_mime_addpart(2) failed\n");
    curl_mime_free(mime);
    curl_easy_cleanup(curl);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }

  res = curl_mime_name(part, "callbackdata");
  if(!res)
    res = curl_mime_data_cb(part, datasize, read_callback,
                            ((void*)0), ((void*)0), &pooh2);

  if(res)
    printf("curl_mime_xxx(2) = %s\n", curl_easy_strerror(res));

  part = curl_mime_addpart(mime);
  if(!part) {
    fprintf(stderr, "curl_mime_addpart(3) failed\n");
    curl_mime_free(mime);
    curl_easy_cleanup(curl);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  res = curl_mime_name(part, "filename");
  if(!res)
    res = curl_mime_data(part,





                          "postit2.c",

                          CURL_ZERO_TERMINATED);

  if(res)
    printf("curl_mime_xxx(3) = %s\n", curl_easy_strerror(res));


  part = curl_mime_addpart(mime);
  if(!part) {
    fprintf(stderr, "curl_mime_addpart(4) failed\n");
    curl_mime_free(mime);
    curl_easy_cleanup(curl);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }
  res = curl_mime_name(part, "submit");
  if(!res)
    res = curl_mime_data(part,





                          "send",

                          CURL_ZERO_TERMINATED);

  if(res)
    printf("curl_mime_xxx(4) = %s\n", curl_easy_strerror(res));

  part = curl_mime_addpart(mime);
  if(!part) {
    fprintf(stderr, "curl_mime_addpart(5) failed\n");
    curl_mime_free(mime);
    curl_easy_cleanup(curl);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }
  res = curl_mime_name(part, "somename");
  if(!res)
    res = curl_mime_filename(part, "somefile.txt");
  if(!res)
    res = curl_mime_data(part, "blah blah", 9);

  if(res)
    printf("curl_mime_xxx(5) = %s\n", curl_easy_strerror(res));


  test_setopt(curl, CURLOPT_URL, URL);


  test_setopt(curl, CURLOPT_MIMEPOST, mime);


  test_setopt(curl, CURLOPT_VERBOSE, 1L);


  test_setopt(curl, CURLOPT_HEADER, 1L);


  res = curl_easy_perform(curl);

test_cleanup:


  curl_easy_cleanup(curl);


  curl_mime_free(mime);

  return res;
}
