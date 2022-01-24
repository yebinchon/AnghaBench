#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int uint32_t ;
struct TYPE_7__ {int* buf; } ;
typedef  TYPE_1__ PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 

void FUNC5(PutBitContext *pb, int start)
{
    int size;
    int i, ff_count;
    uint8_t *buf = pb->buf + start;
    int align= (-(size_t)(buf))&3;
    int pad = (-FUNC3(pb))&7;

    if (pad)
        FUNC2(pb, pad, (1<<pad)-1);

    FUNC1(pb);
    size = FUNC3(pb) - start * 8;

    FUNC0((size&7) == 0);
    size >>= 3;

    ff_count=0;
    for(i=0; i<size && i<align; i++){
        if(buf[i]==0xFF) ff_count++;
    }
    for(; i<size-15; i+=16){
        int acc, v;

        v= *(uint32_t*)(&buf[i]);
        acc= (((v & (v>>4))&0x0F0F0F0F)+0x01010101)&0x10101010;
        v= *(uint32_t*)(&buf[i+4]);
        acc+=(((v & (v>>4))&0x0F0F0F0F)+0x01010101)&0x10101010;
        v= *(uint32_t*)(&buf[i+8]);
        acc+=(((v & (v>>4))&0x0F0F0F0F)+0x01010101)&0x10101010;
        v= *(uint32_t*)(&buf[i+12]);
        acc+=(((v & (v>>4))&0x0F0F0F0F)+0x01010101)&0x10101010;

        acc>>=4;
        acc+= (acc>>16);
        acc+= (acc>>8);
        ff_count+= acc&0xFF;
    }
    for(; i<size; i++){
        if(buf[i]==0xFF) ff_count++;
    }

    if(ff_count==0) return;

    FUNC1(pb);
    FUNC4(pb, ff_count);

    for(i=size-1; ff_count; i--){
        int v= buf[i];

        if(v==0xFF){
            buf[i+ff_count]= 0;
            ff_count--;
        }

        buf[i+ff_count]= v;
    }
}