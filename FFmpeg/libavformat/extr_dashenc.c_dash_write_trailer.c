
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int filename ;
struct TYPE_14__ {int nb_streams; char* url; TYPE_1__** streams; TYPE_3__* priv_data; } ;
struct TYPE_13__ {char* dirname; scalar_t__ master_playlist_created; scalar_t__ hls_playlist; TYPE_2__* streams; scalar_t__ remove_at_exit; void* total_duration; void* last_duration; } ;
struct TYPE_12__ {scalar_t__ segment_type; int initfile; int nb_segments; scalar_t__ first_pts; scalar_t__ max_pts; scalar_t__ start_pts; } ;
struct TYPE_11__ {int time_base; } ;
typedef TYPE_2__ OutputStream ;
typedef TYPE_3__ DASHContext ;
typedef TYPE_4__ AVFormatContext ;


 int AV_TIME_BASE_Q ;
 scalar_t__ SEGMENT_TYPE_MP4 ;
 void* av_rescale_q (scalar_t__,int ,int ) ;
 int dash_flush (TYPE_4__*,int,int) ;
 int dashenc_delete_file (TYPE_4__*,char*) ;
 int dashenc_delete_media_segments (TYPE_4__*,TYPE_2__*,int ) ;
 int dashenc_delete_segment_file (TYPE_4__*,int ) ;
 int get_hls_playlist_name (char*,int,char*,int) ;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int dash_write_trailer(AVFormatContext *s)
{
    DASHContext *c = s->priv_data;
    int i;

    if (s->nb_streams > 0) {
        OutputStream *os = &c->streams[0];


        if (!c->last_duration)
            c->last_duration = av_rescale_q(os->max_pts - os->start_pts,
                                            s->streams[0]->time_base,
                                            AV_TIME_BASE_Q);
        c->total_duration = av_rescale_q(os->max_pts - os->first_pts,
                                         s->streams[0]->time_base,
                                         AV_TIME_BASE_Q);
    }
    dash_flush(s, 1, -1);

    if (c->remove_at_exit) {
        for (i = 0; i < s->nb_streams; ++i) {
            OutputStream *os = &c->streams[i];
            dashenc_delete_media_segments(s, os, os->nb_segments);
            dashenc_delete_segment_file(s, os->initfile);
            if (c->hls_playlist && os->segment_type == SEGMENT_TYPE_MP4) {
                char filename[1024];
                get_hls_playlist_name(filename, sizeof(filename), c->dirname, i);
                dashenc_delete_file(s, filename);
            }
        }
        dashenc_delete_file(s, s->url);

        if (c->hls_playlist && c->master_playlist_created) {
            char filename[1024];
            snprintf(filename, sizeof(filename), "%smaster.m3u8", c->dirname);
            dashenc_delete_file(s, filename);
        }
    }

    return 0;
}
