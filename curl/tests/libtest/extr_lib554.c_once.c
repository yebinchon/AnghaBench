
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_httppost {int dummy; } ;
struct WriteThis {void* sizeleft; void* readptr; } ;
typedef int curl_off_t ;
typedef int CURLcode ;
typedef scalar_t__ CURLFORMcode ;
typedef int CURL ;


 int CURLE_OK ;
 int CURLFORM_BUFFER ;
 int CURLFORM_BUFFERLENGTH ;
 int CURLFORM_BUFFERPTR ;
 int CURLFORM_CONTENTLEN ;
 int CURLFORM_CONTENTSLENGTH ;
 int CURLFORM_CONTENTTYPE ;
 int CURLFORM_COPYCONTENTS ;
 int CURLFORM_COPYNAME ;
 int CURLFORM_END ;
 int CURLFORM_FILENAME ;
 int CURLFORM_STREAM ;
 int CURLOPT_HEADER ;
 int CURLOPT_HTTPPOST ;
 int CURLOPT_POST ;
 int CURLOPT_POSTFIELDSIZE ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_init () ;
 int curl_easy_perform (int *) ;
 scalar_t__ curl_formadd (struct curl_httppost**,struct curl_httppost**,int ,char*,int ,...) ;
 int curl_formfree (struct curl_httppost*) ;
 int curl_global_cleanup () ;
 void* data ;
 int fprintf (int ,char*) ;
 int printf (char*,int) ;
 long read_callback ;
 int stderr ;
 void* strlen (void*) ;
 int test_setopt (int *,int ,...) ;

__attribute__((used)) static int once(char *URL, bool oldstyle)
{
  CURL *curl;
  CURLcode res = CURLE_OK;
  CURLFORMcode formrc;

  struct curl_httppost *formpost = ((void*)0);
  struct curl_httppost *lastptr = ((void*)0);
  struct WriteThis pooh;
  struct WriteThis pooh2;

  pooh.readptr = data;
  pooh.sizeleft = strlen(data);


  if(oldstyle) {
    formrc = curl_formadd(&formpost,
                          &lastptr,
                          CURLFORM_COPYNAME, "sendfile",
                          CURLFORM_STREAM, &pooh,
                          CURLFORM_CONTENTSLENGTH, (long)pooh.sizeleft,
                          CURLFORM_FILENAME, "postit2.c",
                          CURLFORM_END);
  }
  else {

    formrc = curl_formadd(&formpost,
                          &lastptr,
                          CURLFORM_COPYNAME, "sendfile alternative",
                          CURLFORM_STREAM, &pooh,
                          CURLFORM_CONTENTLEN, (curl_off_t)pooh.sizeleft,
                          CURLFORM_FILENAME, "file name 2",
                          CURLFORM_END);
  }

  if(formrc)
    printf("curl_formadd(1) = %d\n", (int)formrc);




  pooh2.readptr = data;
  pooh2.sizeleft = strlen(data);


  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_COPYNAME, "callbackdata",
                        CURLFORM_STREAM, &pooh2,
                        CURLFORM_CONTENTSLENGTH, (long)pooh2.sizeleft,
                        CURLFORM_END);

  if(formrc)
    printf("curl_formadd(2) = %d\n", (int)formrc);


  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_COPYNAME, "filename",






                        CURLFORM_COPYCONTENTS, "postit2.c",

                        CURLFORM_END);

  if(formrc)
    printf("curl_formadd(3) = %d\n", (int)formrc);


  formrc = curl_formadd(&formpost,
                        &lastptr,
                        CURLFORM_COPYNAME, "submit",





                        CURLFORM_COPYCONTENTS, "send",

                        CURLFORM_CONTENTTYPE, "text/plain",
                        CURLFORM_END);

  if(formrc)
    printf("curl_formadd(4) = %d\n", (int)formrc);

  formrc = curl_formadd(&formpost, &lastptr,
                        CURLFORM_COPYNAME, "somename",
                        CURLFORM_BUFFER, "somefile.txt",
                        CURLFORM_BUFFERPTR, "blah blah",
                        CURLFORM_BUFFERLENGTH, (long)9,
                        CURLFORM_END);

  if(formrc)
    printf("curl_formadd(5) = %d\n", (int)formrc);

  curl = curl_easy_init();
  if(!curl) {
    fprintf(stderr, "curl_easy_init() failed\n");
    curl_formfree(formpost);
    curl_global_cleanup();
    return TEST_ERR_MAJOR_BAD;
  }


  test_setopt(curl, CURLOPT_URL, URL);


  test_setopt(curl, CURLOPT_POST, 1L);


  test_setopt(curl, CURLOPT_POSTFIELDSIZE, (long)pooh.sizeleft);


  test_setopt(curl, CURLOPT_READFUNCTION, read_callback);


  test_setopt(curl, CURLOPT_HTTPPOST, formpost);


  test_setopt(curl, CURLOPT_VERBOSE, 1L);


  test_setopt(curl, CURLOPT_HEADER, 1L);


  res = curl_easy_perform(curl);

test_cleanup:


  curl_easy_cleanup(curl);


  curl_formfree(formpost);

  return res;
}
