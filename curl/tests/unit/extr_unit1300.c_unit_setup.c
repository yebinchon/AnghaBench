
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CURLE_OK ;
 int Curl_llist_init (int *,int ) ;
 int llist ;
 int llist_destination ;
 int test_curl_llist_dtor ;

__attribute__((used)) static CURLcode unit_setup(void)
{
  Curl_llist_init(&llist, test_curl_llist_dtor);
  Curl_llist_init(&llist_destination, test_curl_llist_dtor);
  return CURLE_OK;
}
