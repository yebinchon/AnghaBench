
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int geotag_count; TYPE_3__* geotags; } ;
typedef TYPE_1__ TiffContext ;
struct TYPE_5__ {struct TYPE_5__* val; } ;


 int av_freep (TYPE_3__**) ;

__attribute__((used)) static void free_geotags(TiffContext *const s)
{
    int i;
    for (i = 0; i < s->geotag_count; i++) {
        if (s->geotags[i].val)
            av_freep(&s->geotags[i].val);
    }
    av_freep(&s->geotags);
    s->geotag_count = 0;
}
