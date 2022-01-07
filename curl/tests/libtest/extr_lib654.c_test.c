
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
struct WriteThis {int freecount; scalar_t__ sizeleft; int readptr; } ;
typedef scalar_t__ curl_off_t ;
typedef int curl_mimepart ;
typedef char curl_mime ;
typedef scalar_t__ CURLcode ;
typedef int CURL ;


 scalar_t__ CURLE_OK ;
 int CURLOPT_HEADER ;
 int CURLOPT_MIMEPOST ;
 int CURLOPT_URL ;
 int CURLOPT_VERBOSE ;
 int CURL_GLOBAL_ALL ;
 int CURL_ZERO_TERMINATED ;
 int TEST_ERR_FAILURE ;
 int TEST_ERR_MAJOR_BAD ;
 int TRUE ;
 int curl_easy_cleanup (int *) ;
 int * curl_easy_duphandle (int *) ;
 int * curl_easy_init () ;
 scalar_t__ curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 scalar_t__ curl_global_init (int ) ;
 int * curl_mime_addpart (char*) ;
 int curl_mime_data (int *,char*,int ) ;
 int curl_mime_data_cb (int *,scalar_t__,int ,int *,int ,struct WriteThis*) ;
 int curl_mime_encoder (int *,char*) ;
 int curl_mime_filedata (int *,char*) ;
 int curl_mime_free (char*) ;
 int curl_mime_headers (int *,struct curl_slist*,int ) ;
 char* curl_mime_init (int *) ;
 int curl_mime_name (int *,char*) ;
 int curl_mime_type (int *,char*) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 int data ;
 int fprintf (int ,char*,...) ;
 int free_callback ;
 int read_callback ;
 int stderr ;
 scalar_t__ strlen (int ) ;
 int test_setopt (int *,int ,...) ;

int test(char *URL)
{
  CURL *easy = ((void*)0);
  CURL *easy2 = ((void*)0);
  curl_mime *mime = ((void*)0);
  curl_mimepart *part;
  struct curl_slist *hdrs = ((void*)0);
  CURLcode result;
  int res = TEST_ERR_FAILURE;
  struct WriteThis pooh;






  if(curl_global_init(CURL_GLOBAL_ALL) != CURLE_OK) {
    fprintf(stderr, "curl_global_init() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  easy = curl_easy_init();


  test_setopt(easy, CURLOPT_URL, URL);


  test_setopt(easy, CURLOPT_VERBOSE, 1L);


  test_setopt(easy, CURLOPT_HEADER, 1L);


  pooh.readptr = data;
  pooh.sizeleft = (curl_off_t) strlen(data);
  pooh.freecount = 0;


  mime = curl_mime_init(easy);
  part = curl_mime_addpart(mime);
  curl_mime_data(part, "hello", CURL_ZERO_TERMINATED);
  curl_mime_name(part, "greeting");
  curl_mime_type(part, "application/X-Greeting");
  curl_mime_encoder(part, "base64");
  hdrs = curl_slist_append(hdrs, "X-Test-Number: 654");
  curl_mime_headers(part, hdrs, TRUE);
  part = curl_mime_addpart(mime);
  curl_mime_filedata(part, "log/file654.txt");
  part = curl_mime_addpart(mime);
  curl_mime_data_cb(part, (curl_off_t) -1, read_callback, ((void*)0), free_callback,
                    &pooh);


  test_setopt(easy, CURLOPT_MIMEPOST, mime);


  easy2 = curl_easy_duphandle(easy);
  if(!easy2) {
    fprintf(stderr, "curl_easy_duphandle() failed\n");
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }



  curl_mime_free(mime);
  mime = ((void*)0);


  result = curl_easy_perform(easy);
  if(result) {
    fprintf(stderr, "curl_easy_perform(original) failed\n");
    res = (int) result;
    goto test_cleanup;
  }



  result = curl_easy_perform(easy2);
  if(result) {
    fprintf(stderr, "curl_easy_perform(duplicated) failed\n");
    res = (int) result;
    goto test_cleanup;
  }




  curl_easy_cleanup(easy2);
  easy2 = ((void*)0);

  if(pooh.freecount != 2) {
    fprintf(stderr, "free_callback() called %d times instead of 2\n",
            pooh.freecount);
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

test_cleanup:
  curl_easy_cleanup(easy);
  curl_easy_cleanup(easy2);
  curl_mime_free(mime);
  curl_global_cleanup();
  return res;
}
