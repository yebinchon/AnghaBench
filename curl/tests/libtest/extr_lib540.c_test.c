
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int dummy; } ;
typedef int buffer ;
typedef int CURLM ;


 int CURL_GLOBAL_ALL ;
 int HOST ;
 int NUM_HANDLES ;
 int PROXYUSERPWD ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int curl_global_cleanup () ;
 int curl_multi_cleanup (int *) ;
 int curl_multi_remove_handle (int *,int *) ;
 struct curl_slist* curl_slist_append (struct curl_slist*,char*) ;
 int curl_slist_free_all (struct curl_slist*) ;
 int ** eh ;
 int fprintf (int ,char*) ;
 int loop (int,int *,char*,int ,struct curl_slist*) ;
 int msnprintf (char*,int,char*,int ) ;
 int res_global_init (int ) ;
 int res_multi_init (int *) ;
 int start_test_timing () ;
 int stderr ;
 int test_argc ;

int test(char *URL)
{
  CURLM *cm = ((void*)0);
  struct curl_slist *headers = ((void*)0);
  char buffer[246];
  int res = 0;
  int i;

  for(i = 0; i < NUM_HANDLES; i++)
    eh[i] = ((void*)0);

  start_test_timing();

  if(test_argc < 4)
    return 99;

  msnprintf(buffer, sizeof(buffer), "Host: %s", HOST);


  headers = curl_slist_append(headers, buffer);
  if(!headers) {
    fprintf(stderr, "curl_slist_append() failed\n");
    return TEST_ERR_MAJOR_BAD;
  }

  res_global_init(CURL_GLOBAL_ALL);
  if(res) {
    curl_slist_free_all(headers);
    return res;
  }

  res_multi_init(cm);
  if(res) {
    curl_global_cleanup();
    curl_slist_free_all(headers);
    return res;
  }

  res = loop(0, cm, URL, PROXYUSERPWD, headers);
  if(res)
    goto test_cleanup;

  fprintf(stderr, "lib540: now we do the request again\n");

  res = loop(1, cm, URL, PROXYUSERPWD, headers);

test_cleanup:



  for(i = 0; i < NUM_HANDLES; i++) {
    curl_multi_remove_handle(cm, eh[i]);
    curl_easy_cleanup(eh[i]);
  }

  curl_multi_cleanup(cm);
  curl_global_cleanup();

  curl_slist_free_all(headers);

  return res;
}
