
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CHKRET (int ) ;
 int CURLE_OK ;
 int easysrc_add (int *,char*) ;
 int easysrc_code ;

CURLcode easysrc_init(void)
{
  CHKRET(easysrc_add(&easysrc_code,
                     "hnd = curl_easy_init();"));
  return CURLE_OK;
}
