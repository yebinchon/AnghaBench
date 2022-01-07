
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char curl_slist ;
typedef int CURL ;


 int CURLINFO_CONDITION_UNMET ;
 int CURLOPT_HTTPHEADER ;
 int CURLOPT_TIMECONDITION ;
 int CURLOPT_TIMEVALUE ;
 int CURLOPT_URL ;
 int CURL_GLOBAL_ALL ;
 scalar_t__ CURL_TIMECOND_IFMODSINCE ;
 int TEST_ERR_FAILURE ;
 int TEST_ERR_MAJOR_BAD ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_getinfo (int *,int ,long*) ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 char* curl_slist_append (int *,char*) ;
 int curl_slist_free_all (char*) ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int global_init (int ) ;

int test(char *URL)
{
  struct curl_slist *header = ((void*)0);
  long unmet;
  CURL *curl = ((void*)0);
  int res = 0;

  global_init(CURL_GLOBAL_ALL);

  easy_init(curl);

  easy_setopt(curl, CURLOPT_URL, URL);
  easy_setopt(curl, CURLOPT_TIMECONDITION, (long)CURL_TIMECOND_IFMODSINCE);

  easy_setopt(curl, CURLOPT_TIMEVALUE, 1566210680L);

  header = curl_slist_append(((void*)0), "If-Modified-Since:");
  if(!header) {
    res = TEST_ERR_MAJOR_BAD;
    goto test_cleanup;
  }

  easy_setopt(curl, CURLOPT_HTTPHEADER, header);

  res = curl_easy_perform(curl);
  if(res)
    goto test_cleanup;






  res = curl_easy_getinfo(curl, CURLINFO_CONDITION_UNMET, &unmet);
  if(res)
    goto test_cleanup;

  if(unmet != 1L) {
    res = TEST_ERR_FAILURE;
    goto test_cleanup;
  }

test_cleanup:


  curl_easy_cleanup(curl);
  curl_slist_free_all(header);
  curl_global_cleanup();

  return res;
}
