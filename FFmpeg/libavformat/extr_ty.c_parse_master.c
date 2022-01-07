
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int TySeqTable ;
struct TYPE_9__ {int chunk_bitmask; int timestamp; } ;
struct TYPE_8__ {TYPE_1__* priv_data; } ;
struct TYPE_7__ {unsigned int seq_table_size; int cur_chunk_pos; scalar_t__ chunk; TYPE_5__* seq_table; } ;
typedef TYPE_1__ TYDemuxContext ;
typedef TYPE_2__ AVFormatContext ;


 int AV_LOG_ERROR ;
 unsigned int AV_RB32 (scalar_t__) ;
 int AV_RB64 (scalar_t__) ;
 int CHUNK_SIZE ;
 TYPE_5__* av_calloc (unsigned int,int) ;
 int av_freep (TYPE_5__**) ;
 int av_log (TYPE_2__*,int ,char*) ;
 int memcpy (int ,scalar_t__,unsigned int) ;

__attribute__((used)) static void parse_master(AVFormatContext *s)
{
    TYDemuxContext *ty = s->priv_data;
    unsigned map_size;
    unsigned i, j;
    av_freep(&ty->seq_table);



    map_size = AV_RB32(ty->chunk + 20);
    i = AV_RB32(ty->chunk + 28);

    ty->seq_table_size = i / (8LL + map_size);

    if (ty->seq_table_size == 0) {
        ty->seq_table = ((void*)0);
        return;
    }


    ty->seq_table = av_calloc(ty->seq_table_size, sizeof(TySeqTable));
    if (ty->seq_table == ((void*)0)) {
        ty->seq_table_size = 0;
        return;
    }

    ty->cur_chunk_pos = 32;
    for (j = 0; j < ty->seq_table_size; j++) {
        if (ty->cur_chunk_pos >= CHUNK_SIZE - 8)
            return;
        ty->seq_table[j].timestamp = AV_RB64(ty->chunk + ty->cur_chunk_pos);
        ty->cur_chunk_pos += 8;
        if (map_size > 8) {
            av_log(s, AV_LOG_ERROR, "Unsupported SEQ bitmap size in master chunk.\n");
            ty->cur_chunk_pos += map_size;
        } else {
            memcpy(ty->seq_table[j].chunk_bitmask, ty->chunk + ty->cur_chunk_pos, map_size);
        }
    }
}
