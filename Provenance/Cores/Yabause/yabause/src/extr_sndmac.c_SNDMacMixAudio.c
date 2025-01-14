
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_5__ {TYPE_1__* mBuffers; } ;
struct TYPE_4__ {scalar_t__ mDataByteSize; void* mData; } ;
typedef int OSStatus ;
typedef int AudioUnitRenderActionFlags ;
typedef int AudioTimeStamp ;
typedef TYPE_2__ AudioBufferList ;


 int BUFFER_LEN ;
 scalar_t__ buffer ;
 int memcpy (void*,scalar_t__,scalar_t__) ;
 int memset (void*,int ,scalar_t__) ;
 scalar_t__ muted ;
 int mutex ;
 int noErr ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ read_pos ;
 scalar_t__ write_pos ;

__attribute__((used)) static OSStatus SNDMacMixAudio(void *inRefCon,
                               AudioUnitRenderActionFlags *ioActionFlags,
                               const AudioTimeStamp *inTimeStamp,
                               UInt32 inBusNumber,
                               UInt32 inNumFrames,
                               AudioBufferList *ioData) {
    UInt32 len = ioData->mBuffers[0].mDataByteSize;
    void *ptr = ioData->mBuffers[0].mData;

    pthread_mutex_lock(&mutex);

    if(muted || (read_pos + len > write_pos && write_pos > read_pos)) {
        memset(ptr, 0, len);
    }
    else {
        memcpy(ptr, buffer + read_pos, len);

        read_pos += len;
        read_pos &= (BUFFER_LEN - 1);
    }

    pthread_mutex_unlock(&mutex);

    return noErr;
}
