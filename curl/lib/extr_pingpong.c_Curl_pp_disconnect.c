
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pingpong {int * cache; } ;
typedef int CURLcode ;


 int CURLE_OK ;
 int free (int *) ;

CURLcode Curl_pp_disconnect(struct pingpong *pp)
{
  free(pp->cache);
  pp->cache = ((void*)0);
  return CURLE_OK;
}
