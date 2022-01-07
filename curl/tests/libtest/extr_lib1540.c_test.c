
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct transfer_status {int * easy; } ;
typedef int st ;
typedef int CURL ;


 int CURLOPT_HEADERDATA ;
 int CURLOPT_HEADERFUNCTION ;
 int CURLOPT_NOPROGRESS ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEDATA ;
 int CURLOPT_WRITEFUNCTION ;
 int CURLOPT_XFERINFODATA ;
 int CURLOPT_XFERINFOFUNCTION ;
 int CURL_GLOBAL_ALL ;
 int curl_easy_cleanup (int *) ;
 int curl_easy_perform (int *) ;
 int curl_global_cleanup () ;
 int easy_init (int *) ;
 int easy_setopt (int *,int ,...) ;
 int global_init (int ) ;
 long header_callback ;
 int memset (struct transfer_status*,int ,int) ;
 long please_continue ;
 int start_test_timing () ;
 long write_callback ;

int test(char *URL)
{
  CURL *curls = ((void*)0);
  int i = 0;
  int res = 0;
  struct transfer_status st;

  start_test_timing();

  memset(&st, 0, sizeof(st));

  global_init(CURL_GLOBAL_ALL);

  easy_init(curls);
  st.easy = curls;

  easy_setopt(curls, CURLOPT_URL, URL);
  easy_setopt(curls, CURLOPT_WRITEFUNCTION, write_callback);
  easy_setopt(curls, CURLOPT_WRITEDATA, &st);
  easy_setopt(curls, CURLOPT_HEADERFUNCTION, header_callback);
  easy_setopt(curls, CURLOPT_HEADERDATA, &st);

  easy_setopt(curls, CURLOPT_XFERINFOFUNCTION, please_continue);
  easy_setopt(curls, CURLOPT_XFERINFODATA, &st);
  easy_setopt(curls, CURLOPT_NOPROGRESS, 0L);

  res = curl_easy_perform(curls);

test_cleanup:

  curl_easy_cleanup(curls);
  curl_global_cleanup();

  if(res)
    i = res;

  return i;
}
