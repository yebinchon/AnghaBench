
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {TYPE_2__* priv_data; } ;
struct TYPE_13__ {int header_count; int last_syncpoint_pos; TYPE_1__* avf; } ;
struct TYPE_12__ {int nb_streams; int nb_chapters; int * streams; } ;
typedef TYPE_2__ NUTContext ;
typedef int AVIOContext ;
typedef TYPE_3__ AVFormatContext ;


 int INFO_STARTCODE ;
 int INT_MIN ;
 int MAIN_STARTCODE ;
 int STREAM_STARTCODE ;
 int avio_open_dyn_buf (int **) ;
 int ff_metadata_conv_ctx (TYPE_3__*,int ,int *) ;
 int ff_nut_metadata_conv ;
 int ffio_free_dyn_buf (int **) ;
 int put_packet (TYPE_2__*,int *,int *,int,int ) ;
 int write_chapter (TYPE_2__*,int *,int) ;
 int write_globalinfo (TYPE_2__*,int *) ;
 int write_mainheader (TYPE_2__*,int *) ;
 int write_streamheader (TYPE_3__*,int *,int ,int) ;
 int write_streaminfo (TYPE_2__*,int *,int) ;

__attribute__((used)) static int write_headers(AVFormatContext *avctx, AVIOContext *bc)
{
    NUTContext *nut = avctx->priv_data;
    AVIOContext *dyn_bc;
    int i, ret;

    ff_metadata_conv_ctx(avctx, ff_nut_metadata_conv, ((void*)0));

    ret = avio_open_dyn_buf(&dyn_bc);
    if (ret < 0)
        return ret;
    write_mainheader(nut, dyn_bc);
    put_packet(nut, bc, dyn_bc, 1, MAIN_STARTCODE);

    for (i = 0; i < nut->avf->nb_streams; i++) {
        ret = avio_open_dyn_buf(&dyn_bc);
        if (ret < 0)
            return ret;
        ret = write_streamheader(avctx, dyn_bc, nut->avf->streams[i], i);
        if (ret < 0) {
            ffio_free_dyn_buf(&dyn_bc);
            return ret;
        }
        put_packet(nut, bc, dyn_bc, 1, STREAM_STARTCODE);
    }

    ret = avio_open_dyn_buf(&dyn_bc);
    if (ret < 0)
        return ret;
    write_globalinfo(nut, dyn_bc);
    put_packet(nut, bc, dyn_bc, 1, INFO_STARTCODE);

    for (i = 0; i < nut->avf->nb_streams; i++) {
        ret = avio_open_dyn_buf(&dyn_bc);
        if (ret < 0)
            return ret;
        ret = write_streaminfo(nut, dyn_bc, i);
        if (ret > 0)
            put_packet(nut, bc, dyn_bc, 1, INFO_STARTCODE);
        else {
            ffio_free_dyn_buf(&dyn_bc);
            if (ret < 0)
                return ret;
        }
    }

    for (i = 0; i < nut->avf->nb_chapters; i++) {
        ret = avio_open_dyn_buf(&dyn_bc);
        if (ret < 0)
            return ret;
        ret = write_chapter(nut, dyn_bc, i);
        if (ret < 0) {
            ffio_free_dyn_buf(&dyn_bc);
            return ret;
        }
        put_packet(nut, bc, dyn_bc, 1, INFO_STARTCODE);
    }

    nut->last_syncpoint_pos = INT_MIN;
    nut->header_count++;
    return 0;
}
