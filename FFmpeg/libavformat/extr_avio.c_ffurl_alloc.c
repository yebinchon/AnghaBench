
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int URLProtocol ;
typedef int URLContext ;
typedef int AVIOInterruptCB ;


 int AVERROR_PROTOCOL_NOT_FOUND ;
 int url_alloc_for_protocol (int **,int const*,char const*,int,int const*) ;
 int * url_find_protocol (char const*) ;

int ffurl_alloc(URLContext **puc, const char *filename, int flags,
                const AVIOInterruptCB *int_cb)
{
    const URLProtocol *p = ((void*)0);

    p = url_find_protocol(filename);
    if (p)
       return url_alloc_for_protocol(puc, p, filename, flags, int_cb);

    *puc = ((void*)0);
    return AVERROR_PROTOCOL_NOT_FOUND;
}
