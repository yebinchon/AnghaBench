
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CURLcode ;


 int CHKRET (int ) ;
 int CURLE_OK ;
 int easysrc_add (int *,char*) ;
 int easysrc_code ;

CURLcode easysrc_cleanup(void)
{
  CHKRET(easysrc_add(&easysrc_code, "curl_easy_cleanup(hnd);"));
  CHKRET(easysrc_add(&easysrc_code, "hnd = NULL;"));

  return CURLE_OK;
}
