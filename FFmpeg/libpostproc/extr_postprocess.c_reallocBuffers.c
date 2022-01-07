
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int8_t ;
struct TYPE_3__ {int stride; int qpStride; int* yHistogram; int forcedQPTable; int stdQPTable; int nonBQPTable; int deintTemp; int * tempBlurredPast; int * tempBlurred; int tempBlocks; int tempSrc; int tempDst; } ;
typedef TYPE_1__ PPContext ;


 int reallocAlign (void**,int) ;

__attribute__((used)) static void reallocBuffers(PPContext *c, int width, int height, int stride, int qpStride){
    int mbWidth = (width+15)>>4;
    int mbHeight= (height+15)>>4;
    int i;

    c->stride= stride;
    c->qpStride= qpStride;

    reallocAlign((void **)&c->tempDst, stride*24+32);
    reallocAlign((void **)&c->tempSrc, stride*24);
    reallocAlign((void **)&c->tempBlocks, 2*16*8);
    reallocAlign((void **)&c->yHistogram, 256*sizeof(uint64_t));
    for(i=0; i<256; i++)
            c->yHistogram[i]= width*height/64*15/256;

    for(i=0; i<3; i++){

        reallocAlign((void **)&c->tempBlurred[i], stride*mbHeight*16 + 17*1024);
        reallocAlign((void **)&c->tempBlurredPast[i], 256*((height+7)&(~7))/2 + 17*1024);
    }

    reallocAlign((void **)&c->deintTemp, 2*width+32);
    reallocAlign((void **)&c->nonBQPTable, qpStride*mbHeight*sizeof(int8_t));
    reallocAlign((void **)&c->stdQPTable, qpStride*mbHeight*sizeof(int8_t));
    reallocAlign((void **)&c->forcedQPTable, mbWidth*sizeof(int8_t));
}
