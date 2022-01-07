
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int RingbufHandle_t ;


 int RINGBUF_TYPE_NOSPLIT ;
 size_t rbALIGN_SIZE (size_t) ;
 size_t rbHEADER_SIZE ;
 int xRingbufferCreate (size_t,int ) ;

RingbufHandle_t xRingbufferCreateNoSplit(size_t xItemSize, size_t xItemNum)
{
    return xRingbufferCreate((rbALIGN_SIZE(xItemSize) + rbHEADER_SIZE) * xItemNum, RINGBUF_TYPE_NOSPLIT);
}
