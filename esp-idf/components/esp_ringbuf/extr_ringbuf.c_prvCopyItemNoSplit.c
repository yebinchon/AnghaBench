
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int Ringbuffer_t ;


 int memcpy (int *,int const*,size_t) ;
 int * prvAcquireItemNoSplit (int *,size_t) ;
 int prvSendItemDoneNoSplit (int *,int *) ;

__attribute__((used)) static void prvCopyItemNoSplit(Ringbuffer_t *pxRingbuffer, const uint8_t *pucItem, size_t xItemSize)
{
    uint8_t* item_addr = prvAcquireItemNoSplit(pxRingbuffer, xItemSize);
    memcpy(item_addr, pucItem, xItemSize);
    prvSendItemDoneNoSplit(pxRingbuffer, item_addr);
}
