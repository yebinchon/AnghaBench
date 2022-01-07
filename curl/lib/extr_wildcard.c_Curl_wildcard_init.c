
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WildcardData {int state; int filelist; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int CURLWC_INIT ;
 int Curl_llist_init (int *,int ) ;
 int fileinfo_dtor ;

CURLcode Curl_wildcard_init(struct WildcardData *wc)
{
  Curl_llist_init(&wc->filelist, fileinfo_dtor);
  wc->state = CURLWC_INIT;

  return CURLE_OK;
}
