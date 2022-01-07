
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int bittable; int seektable; int frames; } ;
struct TYPE_4__ {TYPE_2__* priv_data; } ;
typedef TYPE_1__ AVFormatContext ;
typedef TYPE_2__ APEContext ;


 int av_freep (int *) ;

__attribute__((used)) static int ape_read_close(AVFormatContext * s)
{
    APEContext *ape = s->priv_data;

    av_freep(&ape->frames);
    av_freep(&ape->seektable);
    av_freep(&ape->bittable);
    return 0;
}
