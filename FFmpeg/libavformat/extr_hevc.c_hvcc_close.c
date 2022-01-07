
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_5__ {struct TYPE_5__* nalUnitLength; struct TYPE_5__* nalUnit; scalar_t__ numNalus; } ;
struct TYPE_4__ {size_t numOfArrays; TYPE_3__* array; } ;
typedef TYPE_1__ HEVCDecoderConfigurationRecord ;


 int av_freep (TYPE_3__**) ;

__attribute__((used)) static void hvcc_close(HEVCDecoderConfigurationRecord *hvcc)
{
    uint8_t i;

    for (i = 0; i < hvcc->numOfArrays; i++) {
        hvcc->array[i].numNalus = 0;
        av_freep(&hvcc->array[i].nalUnit);
        av_freep(&hvcc->array[i].nalUnitLength);
    }

    hvcc->numOfArrays = 0;
    av_freep(&hvcc->array);
}
