
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int media_type; } ;
struct TYPE_8__ {int nb_as; TYPE_2__* as; } ;
typedef TYPE_1__ DASHContext ;
typedef TYPE_2__ AdaptationSet ;
typedef TYPE_3__ AVFormatContext ;


 int AVERROR (int ) ;
 int ENOMEM ;
 void* av_realloc (TYPE_2__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static int add_adaptation_set(AVFormatContext *s, AdaptationSet **as, enum AVMediaType type)
{
    DASHContext *c = s->priv_data;

    void *mem = av_realloc(c->as, sizeof(*c->as) * (c->nb_as + 1));
    if (!mem)
        return AVERROR(ENOMEM);
    c->as = mem;
    ++c->nb_as;

    *as = &c->as[c->nb_as - 1];
    memset(*as, 0, sizeof(**as));
    (*as)->media_type = type;

    return 0;
}
