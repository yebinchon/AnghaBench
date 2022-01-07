
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int TPCircularBuffer ;


 void* TPCircularBufferHead (int *,int *) ;
 int TPCircularBufferProduce (int *,int ) ;
 int memcpy (void*,void const*,int ) ;

__attribute__((used)) static __inline__ __attribute__((always_inline)) bool TPCircularBufferProduceBytes(TPCircularBuffer *buffer, const void* src, int32_t len) {
    int32_t space;
    void *ptr = TPCircularBufferHead(buffer, &space);
    if ( space < len ) return 0;
    memcpy(ptr, src, len);
    TPCircularBufferProduce(buffer, len);
    return 1;
}
