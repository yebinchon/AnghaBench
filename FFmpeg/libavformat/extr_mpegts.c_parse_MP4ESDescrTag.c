
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int64_t ;
struct TYPE_6__ {scalar_t__ descr_count; scalar_t__ max_descr_count; TYPE_1__* active_descr; int pb; TYPE_1__* descr; } ;
struct TYPE_5__ {int es_id; } ;
typedef TYPE_2__ MP4DescrParseContext ;


 int AVERROR_INVALIDDATA ;
 int MP4DecConfigDescrTag ;
 int MP4SLDescrTag ;
 int ff_mp4_parse_es_descr (int *,int*) ;
 int parse_mp4_descr (TYPE_2__*,int ,int,int ) ;
 int update_offsets (int *,int *,int*) ;

__attribute__((used)) static int parse_MP4ESDescrTag(MP4DescrParseContext *d, int64_t off, int len)
{
    int es_id = 0;
    int ret = 0;

    if (d->descr_count >= d->max_descr_count)
        return AVERROR_INVALIDDATA;
    ff_mp4_parse_es_descr(&d->pb, &es_id);
    d->active_descr = d->descr + (d->descr_count++);

    d->active_descr->es_id = es_id;
    update_offsets(&d->pb, &off, &len);
    if ((ret = parse_mp4_descr(d, off, len, MP4DecConfigDescrTag)) < 0)
        return ret;
    update_offsets(&d->pb, &off, &len);
    if (len > 0)
        ret = parse_mp4_descr(d, off, len, MP4SLDescrTag);
    d->active_descr = ((void*)0);
    return ret;
}
