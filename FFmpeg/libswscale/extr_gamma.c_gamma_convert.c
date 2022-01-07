
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
typedef size_t uint16_t ;
struct TYPE_9__ {size_t* table; } ;
struct TYPE_8__ {TYPE_2__* src; TYPE_4__* instance; } ;
struct TYPE_7__ {int width; TYPE_1__* plane; } ;
struct TYPE_6__ {int sliceY; int ** line; } ;
typedef TYPE_3__ SwsFilterDescriptor ;
typedef int SwsContext ;
typedef TYPE_4__ GammaContext ;


 size_t AV_RL16 (size_t*) ;
 int AV_WL16 (size_t*,size_t) ;

__attribute__((used)) static int gamma_convert(SwsContext *c, SwsFilterDescriptor *desc, int sliceY, int sliceH)
{
    GammaContext *instance = desc->instance;
    uint16_t *table = instance->table;
    int srcW = desc->src->width;

    int i;
    for (i = 0; i < sliceH; ++i) {
        uint8_t ** src = desc->src->plane[0].line;
        int src_pos = sliceY+i - desc->src->plane[0].sliceY;

        uint16_t *src1 = (uint16_t*)*(src+src_pos);
        int j;
        for (j = 0; j < srcW; ++j) {
            uint16_t r = AV_RL16(src1 + j*4 + 0);
            uint16_t g = AV_RL16(src1 + j*4 + 1);
            uint16_t b = AV_RL16(src1 + j*4 + 2);

            AV_WL16(src1 + j*4 + 0, table[r]);
            AV_WL16(src1 + j*4 + 1, table[g]);
            AV_WL16(src1 + j*4 + 2, table[b]);
        }

    }
    return sliceH;
}
