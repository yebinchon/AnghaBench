
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {size_t last_stsd_index; size_t stsc_index; int* extradata_size; int ** extradata; TYPE_1__* stsc_data; } ;
struct TYPE_4__ {size_t id; } ;
typedef TYPE_2__ MOVStreamContext ;
typedef int AVPacket ;


 int AVERROR (int ) ;
 int AV_PKT_DATA_NEW_EXTRADATA ;
 int ENOMEM ;
 int * av_packet_new_side_data (int *,int ,int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static int mov_change_extradata(MOVStreamContext *sc, AVPacket *pkt)
{
    uint8_t *side, *extradata;
    int extradata_size;


    sc->last_stsd_index = sc->stsc_data[sc->stsc_index].id - 1;


    extradata_size = sc->extradata_size[sc->last_stsd_index];
    extradata = sc->extradata[sc->last_stsd_index];
    if (extradata_size > 0 && extradata) {
        side = av_packet_new_side_data(pkt,
                                       AV_PKT_DATA_NEW_EXTRADATA,
                                       extradata_size);
        if (!side)
            return AVERROR(ENOMEM);
        memcpy(side, extradata, extradata_size);
    }

    return 0;
}
