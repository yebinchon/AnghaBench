
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pingpong {scalar_t__ nread_resp; scalar_t__ cache_size; scalar_t__ cache; int sendleft; } ;


 int FALSE ;
 int TRUE ;

bool Curl_pp_moredata(struct pingpong *pp)
{
  return (!pp->sendleft && pp->cache && pp->nread_resp < pp->cache_size) ?
         TRUE : FALSE;
}
