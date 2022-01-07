
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
typedef enum AVPacketSideDataType { ____Placeholder_AVPacketSideDataType } AVPacketSideDataType ;
struct TYPE_5__ {int nb_side_data; TYPE_1__* side_data; } ;
struct TYPE_4__ {int type; int size; int * data; } ;
typedef TYPE_2__ AVStream ;



uint8_t *av_stream_get_side_data(const AVStream *st,
                                 enum AVPacketSideDataType type, int *size)
{
    int i;

    for (i = 0; i < st->nb_side_data; i++) {
        if (st->side_data[i].type == type) {
            if (size)
                *size = st->side_data[i].size;
            return st->side_data[i].data;
        }
    }
    return ((void*)0);
}
