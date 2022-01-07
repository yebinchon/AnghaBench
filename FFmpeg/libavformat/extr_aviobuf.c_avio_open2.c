
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int AVIOInterruptCB ;
typedef int AVIOContext ;
typedef int AVDictionary ;


 int ffio_open_whitelist (int **,char const*,int,int const*,int **,int *,int *) ;

int avio_open2(AVIOContext **s, const char *filename, int flags,
               const AVIOInterruptCB *int_cb, AVDictionary **options)
{
    return ffio_open_whitelist(s, filename, flags, int_cb, options, ((void*)0), ((void*)0));
}
