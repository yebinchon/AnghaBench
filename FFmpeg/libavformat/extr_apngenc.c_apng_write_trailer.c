
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int plays; int frame_number; scalar_t__ acTL_offset; scalar_t__ prev_packet; } ;
struct TYPE_9__ {TYPE_1__* pb; TYPE_3__* priv_data; } ;
struct TYPE_8__ {int seekable; } ;
typedef TYPE_1__ AVIOContext ;
typedef TYPE_2__ AVFormatContext ;
typedef TYPE_3__ APNGMuxContext ;


 int AVIO_SEEKABLE_NORMAL ;
 int AV_WB32 (int *,int ) ;
 int MKBETAG (char,char,char,char) ;
 int SEEK_SET ;
 int apng_write_chunk (TYPE_1__*,int ,int *,int) ;
 int avio_seek (TYPE_1__*,scalar_t__,int ) ;
 int flush_packet (TYPE_2__*,int *) ;

__attribute__((used)) static int apng_write_trailer(AVFormatContext *format_context)
{
    APNGMuxContext *apng = format_context->priv_data;
    AVIOContext *io_context = format_context->pb;
    uint8_t buf[8];
    int ret;

    if (apng->prev_packet) {
        ret = flush_packet(format_context, ((void*)0));
        if (ret < 0)
            return ret;
    }

    apng_write_chunk(io_context, MKBETAG('I', 'E', 'N', 'D'), ((void*)0), 0);

    if (apng->acTL_offset && (io_context->seekable & AVIO_SEEKABLE_NORMAL)) {
        avio_seek(io_context, apng->acTL_offset, SEEK_SET);

        AV_WB32(buf, apng->frame_number);
        AV_WB32(buf + 4, apng->plays);
        apng_write_chunk(io_context, MKBETAG('a', 'c', 'T', 'L'), buf, 8);
    }

    return 0;
}
