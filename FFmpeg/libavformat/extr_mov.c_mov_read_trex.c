
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {scalar_t__ trex_count; TYPE_2__* trex_data; TYPE_1__* fc; } ;
struct TYPE_7__ {void* flags; void* size; void* duration; void* stsd_id; void* track_id; } ;
struct TYPE_6__ {int duration; } ;
typedef TYPE_2__ MOVTrackExt ;
typedef TYPE_3__ MOVContext ;
typedef int MOVAtom ;
typedef int AVIOContext ;


 int AVERROR_INVALIDDATA ;
 int AV_NOPTS_VALUE ;
 int UINT_MAX ;
 int av_reallocp_array (TYPE_2__**,scalar_t__,int) ;
 int avio_r8 (int *) ;
 int avio_rb24 (int *) ;
 void* avio_rb32 (int *) ;

__attribute__((used)) static int mov_read_trex(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVTrackExt *trex;
    int err;

    if ((uint64_t)c->trex_count+1 >= UINT_MAX / sizeof(*c->trex_data))
        return AVERROR_INVALIDDATA;
    if ((err = av_reallocp_array(&c->trex_data, c->trex_count + 1,
                                 sizeof(*c->trex_data))) < 0) {
        c->trex_count = 0;
        return err;
    }

    c->fc->duration = AV_NOPTS_VALUE;

    trex = &c->trex_data[c->trex_count++];
    avio_r8(pb);
    avio_rb24(pb);
    trex->track_id = avio_rb32(pb);
    trex->stsd_id = avio_rb32(pb);
    trex->duration = avio_rb32(pb);
    trex->size = avio_rb32(pb);
    trex->flags = avio_rb32(pb);
    return 0;
}
