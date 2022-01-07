
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef int uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_15__ {scalar_t__ buffer; scalar_t__ buf_ptr; int error; } ;
struct TYPE_14__ {int done; TYPE_1__* levels; TYPE_11__* ctx; } ;
struct TYPE_13__ {int length; } ;
struct TYPE_12__ {TYPE_3__* pb; } ;
typedef TYPE_2__ MatroskaDemuxContext ;
typedef TYPE_3__ AVIOContext ;


 int AVERROR_EOF ;
 int AV_LOG_WARNING ;
 int EBML_UNKNOWN_LENGTH ;
 scalar_t__ FFMAX (scalar_t__,scalar_t__) ;
 int MATROSKA_ID_ATTACHMENTS ;
 int MATROSKA_ID_CHAPTERS ;
 int MATROSKA_ID_CLUSTER ;
 int MATROSKA_ID_CUES ;
 int MATROSKA_ID_INFO ;
 int MATROSKA_ID_SEEKHEAD ;
 int MATROSKA_ID_TAGS ;
 int MATROSKA_ID_TRACKS ;
 int SEEK_SET ;
 int av_log (TYPE_11__*,int ,char*) ;
 int avio_feof (TYPE_3__*) ;
 int avio_r8 (TYPE_3__*) ;
 int avio_rb32 (TYPE_3__*) ;
 scalar_t__ avio_seek (TYPE_3__*,scalar_t__,int ) ;
 scalar_t__ avio_tell (TYPE_3__*) ;
 int matroska_reset_status (TYPE_2__*,int,int) ;

__attribute__((used)) static int matroska_resync(MatroskaDemuxContext *matroska, int64_t last_pos)
{
    AVIOContext *pb = matroska->ctx->pb;
    uint32_t id;



    if (last_pos < avio_tell(pb) && avio_seek(pb, last_pos + 1, SEEK_SET) < 0) {
        av_log(matroska->ctx, AV_LOG_WARNING,
               "Seek to desired resync point failed. Seeking to "
               "earliest point available instead.\n");
        avio_seek(pb, FFMAX(avio_tell(pb) + (pb->buffer - pb->buf_ptr),
                            last_pos + 1), SEEK_SET);
    }

    id = avio_rb32(pb);


    while (!avio_feof(pb)) {
        if (id == MATROSKA_ID_INFO || id == MATROSKA_ID_TRACKS ||
            id == MATROSKA_ID_CUES || id == MATROSKA_ID_TAGS ||
            id == MATROSKA_ID_SEEKHEAD || id == MATROSKA_ID_ATTACHMENTS ||
            id == MATROSKA_ID_CLUSTER || id == MATROSKA_ID_CHAPTERS) {

            matroska_reset_status(matroska, id, -1);




            matroska->levels[0].length = EBML_UNKNOWN_LENGTH;
            return 0;
        }
        id = (id << 8) | avio_r8(pb);
    }

    matroska->done = 1;
    return pb->error ? pb->error : AVERROR_EOF;
}
