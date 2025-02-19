
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {int num_levels; int resync_pos; TYPE_1__* ctx; scalar_t__ unknown_count; scalar_t__ current_id; } ;
struct TYPE_4__ {int pb; } ;
typedef TYPE_2__ MatroskaDemuxContext ;


 int SEEK_SET ;
 int av_log2 (scalar_t__) ;
 scalar_t__ avio_seek (int ,scalar_t__,int ) ;
 int avio_tell (int ) ;

__attribute__((used)) static int matroska_reset_status(MatroskaDemuxContext *matroska,
                                 uint32_t id, int64_t position)
{
    if (position >= 0) {
        int64_t err = avio_seek(matroska->ctx->pb, position, SEEK_SET);
        if (err < 0)
            return err;
    }

    matroska->current_id = id;
    matroska->num_levels = 1;
    matroska->unknown_count = 0;
    matroska->resync_pos = avio_tell(matroska->ctx->pb);
    if (id)
        matroska->resync_pos -= (av_log2(id) + 7) / 8;

    return 0;
}
