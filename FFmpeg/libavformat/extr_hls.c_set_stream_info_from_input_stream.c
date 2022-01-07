
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct playlist {scalar_t__ is_id3_timestamped; } ;
struct TYPE_8__ {int num; int den; } ;
struct TYPE_9__ {int pts_wrap_bits; TYPE_1__* internal; TYPE_2__ time_base; int codecpar; } ;
struct TYPE_7__ {int need_context_update; } ;
typedef TYPE_3__ AVStream ;


 int MPEG_TIME_BASE ;
 int avcodec_parameters_copy (int ,int ) ;
 int avpriv_set_pts_info (TYPE_3__*,int,int,int ) ;

__attribute__((used)) static int set_stream_info_from_input_stream(AVStream *st, struct playlist *pls, AVStream *ist)
{
    int err;

    err = avcodec_parameters_copy(st->codecpar, ist->codecpar);
    if (err < 0)
        return err;

    if (pls->is_id3_timestamped)
        avpriv_set_pts_info(st, 33, 1, MPEG_TIME_BASE);
    else
        avpriv_set_pts_info(st, ist->pts_wrap_bits, ist->time_base.num, ist->time_base.den);

    st->internal->need_context_update = 1;

    return 0;
}
