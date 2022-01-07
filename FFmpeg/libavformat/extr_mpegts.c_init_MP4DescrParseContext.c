
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int max_descr_count; int * active_descr; int * descr; scalar_t__ descr_count; scalar_t__ level; int * s; int pb; } ;
typedef int Mp4Descr ;
typedef TYPE_1__ MP4DescrParseContext ;
typedef int AVFormatContext ;


 int AVERROR_INVALIDDATA ;
 int ffio_init_context (int *,unsigned char*,unsigned int,int ,int *,int *,int *,int *) ;

__attribute__((used)) static int init_MP4DescrParseContext(MP4DescrParseContext *d, AVFormatContext *s,
                                     const uint8_t *buf, unsigned size,
                                     Mp4Descr *descr, int max_descr_count)
{
    int ret;
    if (size > (1 << 30))
        return AVERROR_INVALIDDATA;

    if ((ret = ffio_init_context(&d->pb, (unsigned char *)buf, size, 0,
                                 ((void*)0), ((void*)0), ((void*)0), ((void*)0))) < 0)
        return ret;

    d->s = s;
    d->level = 0;
    d->descr_count = 0;
    d->descr = descr;
    d->active_descr = ((void*)0);
    d->max_descr_count = max_descr_count;

    return 0;
}
