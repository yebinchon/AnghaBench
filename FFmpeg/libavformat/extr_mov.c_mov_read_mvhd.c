
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef void* int64_t ;
struct TYPE_6__ {int duration; int metadata; } ;
struct TYPE_5__ {int time_scale; void*** movie_display_matrix; void* duration; TYPE_3__* fc; int trex_data; } ;
typedef TYPE_1__ MOVContext ;
typedef int MOVAtom ;
typedef int AVIOContext ;


 int AV_LOG_ERROR ;
 int AV_LOG_TRACE ;
 int AV_TIME_BASE ;
 int av_log (TYPE_3__*,int ,char*,int) ;
 int av_rescale (void*,int ,int) ;
 int avio_r8 (int *) ;
 int avio_rb16 (int *) ;
 int avio_rb24 (int *) ;
 void* avio_rb32 (int *) ;
 void* avio_rb64 (int *) ;
 int avio_skip (int *,int) ;
 int mov_metadata_creation_time (int *,void*,TYPE_3__*) ;

__attribute__((used)) static int mov_read_mvhd(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    int i;
    int64_t creation_time;
    int version = avio_r8(pb);
    avio_rb24(pb);

    if (version == 1) {
        creation_time = avio_rb64(pb);
        avio_rb64(pb);
    } else {
        creation_time = avio_rb32(pb);
        avio_rb32(pb);
    }
    mov_metadata_creation_time(&c->fc->metadata, creation_time, c->fc);
    c->time_scale = avio_rb32(pb);
    if (c->time_scale <= 0) {
        av_log(c->fc, AV_LOG_ERROR, "Invalid mvhd time scale %d, defaulting to 1\n", c->time_scale);
        c->time_scale = 1;
    }
    av_log(c->fc, AV_LOG_TRACE, "time scale = %i\n", c->time_scale);

    c->duration = (version == 1) ? avio_rb64(pb) : avio_rb32(pb);


    if (c->time_scale > 0 && !c->trex_data)
        c->fc->duration = av_rescale(c->duration, AV_TIME_BASE, c->time_scale);
    avio_rb32(pb);

    avio_rb16(pb);

    avio_skip(pb, 10);


    for (i = 0; i < 3; i++) {
        c->movie_display_matrix[i][0] = avio_rb32(pb);
        c->movie_display_matrix[i][1] = avio_rb32(pb);
        c->movie_display_matrix[i][2] = avio_rb32(pb);
    }

    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);
    avio_rb32(pb);

    return 0;
}
