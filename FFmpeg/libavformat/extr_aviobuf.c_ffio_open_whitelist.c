
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLContext ;
typedef int AVIOInterruptCB ;
typedef int AVIOContext ;
typedef int AVDictionary ;


 int ffio_fdopen (int **,int *) ;
 int ffurl_close (int *) ;
 int ffurl_open_whitelist (int **,char const*,int,int const*,int **,char const*,char const*,int *) ;

int ffio_open_whitelist(AVIOContext **s, const char *filename, int flags,
                         const AVIOInterruptCB *int_cb, AVDictionary **options,
                         const char *whitelist, const char *blacklist
                        )
{
    URLContext *h;
    int err;

    err = ffurl_open_whitelist(&h, filename, flags, int_cb, options, whitelist, blacklist, ((void*)0));
    if (err < 0)
        return err;
    err = ffio_fdopen(s, h);
    if (err < 0) {
        ffurl_close(h);
        return err;
    }
    return 0;
}
