
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_12__ ;


typedef int uint8_t ;
struct TYPE_15__ {int size; int * data; } ;
struct TYPE_14__ {scalar_t__ size; int pos; int data; int buf; } ;
struct TYPE_18__ {scalar_t__ reference; int discard_padding; TYPE_2__ additional; int additional_id; int duration; TYPE_1__ bin; scalar_t__ non_simple; } ;
struct TYPE_17__ {scalar_t__ pos; int timecode; TYPE_5__ block; } ;
struct TYPE_16__ {int num_levels; int done; TYPE_12__* ctx; TYPE_4__ current_cluster; } ;
struct TYPE_13__ {int pb; } ;
typedef TYPE_3__ MatroskaDemuxContext ;
typedef TYPE_4__ MatroskaCluster ;
typedef TYPE_5__ MatroskaBlock ;


 int AVERROR_EOF ;
 int AVERROR_INVALIDDATA ;
 int AV_LOG_WARNING ;
 scalar_t__ INT64_MIN ;
 int av_assert0 (int) ;
 int av_log (TYPE_12__*,int ,char*) ;
 int avio_feof (int ) ;
 int avio_r8 (int ) ;
 scalar_t__ avio_tell (int ) ;
 int ebml_free (int ,TYPE_5__*) ;
 int ebml_parse (TYPE_3__*,int ,TYPE_4__*) ;
 int matroska_blockgroup ;
 int matroska_cluster_enter ;
 int matroska_cluster_parsing ;
 int matroska_parse_block (TYPE_3__*,int ,int ,scalar_t__,int ,int ,int ,int,int *,int ,int ,scalar_t__,int ) ;
 int matroska_segment ;
 int memset (TYPE_5__*,int ,int) ;

__attribute__((used)) static int matroska_parse_cluster(MatroskaDemuxContext *matroska)
{
    MatroskaCluster *cluster = &matroska->current_cluster;
    MatroskaBlock *block = &cluster->block;
    int res;

    av_assert0(matroska->num_levels <= 2);

    if (matroska->num_levels == 1) {
        res = ebml_parse(matroska, matroska_segment, ((void*)0));

        if (res == 1) {

            cluster->pos = avio_tell(matroska->ctx->pb) - 4;

            res = ebml_parse(matroska, matroska_cluster_enter, cluster);
            if (res < 0)
                return res;
        }
    }

    if (matroska->num_levels == 2) {

        res = ebml_parse(matroska, matroska_cluster_parsing, cluster);

        if (res >= 0 && block->bin.size > 0) {
            int is_keyframe = block->non_simple ? block->reference == INT64_MIN : -1;
            uint8_t* additional = block->additional.size > 0 ?
                                    block->additional.data : ((void*)0);

            res = matroska_parse_block(matroska, block->bin.buf, block->bin.data,
                                       block->bin.size, block->bin.pos,
                                       cluster->timecode, block->duration,
                                       is_keyframe, additional, block->additional_id,
                                       block->additional.size, cluster->pos,
                                       block->discard_padding);
        }

        ebml_free(matroska_blockgroup, block);
        memset(block, 0, sizeof(*block));
    } else if (!matroska->num_levels) {
        if (!avio_feof(matroska->ctx->pb)) {
            avio_r8(matroska->ctx->pb);
            if (!avio_feof(matroska->ctx->pb)) {
                av_log(matroska->ctx, AV_LOG_WARNING, "File extends beyond "
                       "end of segment.\n");
                return AVERROR_INVALIDDATA;
            }
        }
        matroska->done = 1;
        return AVERROR_EOF;
    }

    return res;
}
