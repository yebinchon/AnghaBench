#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  int8_t ;
struct TYPE_3__ {int stride; int qpStride; int* yHistogram; int /*<<< orphan*/  forcedQPTable; int /*<<< orphan*/  stdQPTable; int /*<<< orphan*/  nonBQPTable; int /*<<< orphan*/  deintTemp; int /*<<< orphan*/ * tempBlurredPast; int /*<<< orphan*/ * tempBlurred; int /*<<< orphan*/  tempBlocks; int /*<<< orphan*/  tempSrc; int /*<<< orphan*/  tempDst; } ;
typedef  TYPE_1__ PPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void**,int) ; 

__attribute__((used)) static void FUNC1(PPContext *c, int width, int height, int stride, int qpStride){
    int mbWidth = (width+15)>>4;
    int mbHeight= (height+15)>>4;
    int i;

    c->stride= stride;
    c->qpStride= qpStride;

    FUNC0((void **)&c->tempDst, stride*24+32);
    FUNC0((void **)&c->tempSrc, stride*24);
    FUNC0((void **)&c->tempBlocks, 2*16*8);
    FUNC0((void **)&c->yHistogram, 256*sizeof(uint64_t));
    for(i=0; i<256; i++)
            c->yHistogram[i]= width*height/64*15/256;

    for(i=0; i<3; i++){
        //Note: The +17*1024 is just there so I do not have to worry about r/w over the end.
        FUNC0((void **)&c->tempBlurred[i], stride*mbHeight*16 + 17*1024);
        FUNC0((void **)&c->tempBlurredPast[i], 256*((height+7)&(~7))/2 + 17*1024);//FIXME size
    }

    FUNC0((void **)&c->deintTemp, 2*width+32);
    FUNC0((void **)&c->nonBQPTable, qpStride*mbHeight*sizeof(int8_t));
    FUNC0((void **)&c->stdQPTable, qpStride*mbHeight*sizeof(int8_t));
    FUNC0((void **)&c->forcedQPTable, mbWidth*sizeof(int8_t));
}