
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;
typedef int AVIOInterruptCB ;
typedef int AVDictionary ;


 int ffurl_open_whitelist (int **,char const*,int,int const*,int **,int *,int *,int *) ;

int ffurl_open(URLContext **puc, const char *filename, int flags,
               const AVIOInterruptCB *int_cb, AVDictionary **options)
{
    return ffurl_open_whitelist(puc, filename, flags,
                                int_cb, options, ((void*)0), ((void*)0), ((void*)0));
}
