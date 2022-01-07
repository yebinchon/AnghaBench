
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pool {int pool_limit; } ;



void
pool_sethardlimit(struct pool *pp, int n, const char *warnmess, int ratecap)
{
#pragma unused(warnmess, ratecap)
 pp->pool_limit = n;
}
