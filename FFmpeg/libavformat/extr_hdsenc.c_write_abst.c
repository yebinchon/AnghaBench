
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int temp_filename ;
typedef int int64_t ;
typedef int filename ;
struct TYPE_16__ {char* url; int (* io_open ) (TYPE_5__*,int **,char*,int ,int *) ;TYPE_1__** streams; TYPE_4__* priv_data; } ;
struct TYPE_15__ {scalar_t__ window_size; } ;
struct TYPE_14__ {size_t first_stream; int nb_fragments; int fragment_index; TYPE_2__** fragments; int last_ts; } ;
struct TYPE_13__ {int n; int duration; int start_time; } ;
struct TYPE_12__ {int id; } ;
typedef TYPE_3__ OutputStream ;
typedef TYPE_4__ HDSContext ;
typedef int AVIOContext ;
typedef TYPE_5__ AVFormatContext ;


 int AVIO_FLAG_WRITE ;
 int AV_LOG_ERROR ;
 int FFMAX (scalar_t__,int ) ;
 int MKTAG (char,float,char,char) ;
 int av_log (TYPE_5__*,int ,char*,char*) ;
 int avio_tell (int *) ;
 int avio_w8 (int *,int) ;
 int avio_wb32 (int *,int) ;
 int avio_wb64 (int *,int ) ;
 int avio_wl32 (int *,int ) ;
 int ff_format_io_close (TYPE_5__*,int **) ;
 int ff_rename (char*,char*,TYPE_5__*) ;
 int snprintf (char*,int,char*,char*,int) ;
 int stub1 (TYPE_5__*,int **,char*,int ,int *) ;
 int update_size (int *,int ) ;

__attribute__((used)) static int write_abst(AVFormatContext *s, OutputStream *os, int final)
{
    HDSContext *c = s->priv_data;
    AVIOContext *out;
    char filename[1024], temp_filename[1024];
    int i, ret;
    int64_t asrt_pos, afrt_pos;
    int start = 0, fragments;
    int index = s->streams[os->first_stream]->id;
    int64_t cur_media_time = 0;
    if (c->window_size)
        start = FFMAX(os->nb_fragments - c->window_size, 0);
    fragments = os->nb_fragments - start;
    if (final)
        cur_media_time = os->last_ts;
    else if (os->nb_fragments)
        cur_media_time = os->fragments[os->nb_fragments - 1]->start_time;

    snprintf(filename, sizeof(filename),
             "%s/stream%d.abst", s->url, index);
    snprintf(temp_filename, sizeof(temp_filename),
             "%s/stream%d.abst.tmp", s->url, index);
    ret = s->io_open(s, &out, temp_filename, AVIO_FLAG_WRITE, ((void*)0));
    if (ret < 0) {
        av_log(s, AV_LOG_ERROR, "Unable to open %s for writing\n", temp_filename);
        return ret;
    }
    avio_wb32(out, 0);
    avio_wl32(out, MKTAG('a','b','s','t'));
    avio_wb32(out, 0);
    avio_wb32(out, os->fragment_index - 1);
    avio_w8(out, final ? 0 : 0x20);
    avio_wb32(out, 1000);
    avio_wb64(out, cur_media_time);
    avio_wb64(out, 0);
    avio_w8(out, 0);
    avio_w8(out, 0);
    avio_w8(out, 0);
    avio_w8(out, 0);
    avio_w8(out, 0);
    avio_w8(out, 1);
    asrt_pos = avio_tell(out);
    avio_wb32(out, 0);
    avio_wl32(out, MKTAG('a','s','r','t'));
    avio_wb32(out, 0);
    avio_w8(out, 0);
    avio_wb32(out, 1);
    avio_wb32(out, 1);
    avio_wb32(out, final ? (os->fragment_index - 1) : 0xffffffff);
    update_size(out, asrt_pos);
    avio_w8(out, 1);
    afrt_pos = avio_tell(out);
    avio_wb32(out, 0);
    avio_wl32(out, MKTAG('a','f','r','t'));
    avio_wb32(out, 0);
    avio_wb32(out, 1000);
    avio_w8(out, 0);
    avio_wb32(out, fragments);
    for (i = start; i < os->nb_fragments; i++) {
        avio_wb32(out, os->fragments[i]->n);
        avio_wb64(out, os->fragments[i]->start_time);
        avio_wb32(out, os->fragments[i]->duration);
    }
    update_size(out, afrt_pos);
    update_size(out, 0);
    ff_format_io_close(s, &out);
    return ff_rename(temp_filename, filename, s);
}
