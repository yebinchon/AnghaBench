
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
typedef int TPCircularBuffer ;


 int TPCircularBufferConsume (int *,int ) ;
 scalar_t__ TPCircularBufferTail (int *,int *) ;

void TPCircularBufferClear(TPCircularBuffer *buffer) {
    int32_t fillCount;
    if ( TPCircularBufferTail(buffer, &fillCount) ) {
        TPCircularBufferConsume(buffer, fillCount);
    }
}
