
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int isamplesiz; int remap; scalar_t__ ibytes; int list; int * buf; scalar_t__ input_done; } ;
typedef TYPE_2__ hb_work_private_t ;
typedef int UInt32 ;
struct TYPE_7__ {TYPE_1__* mBuffers; } ;
struct TYPE_5__ {int mDataByteSize; int * mData; } ;
typedef int OSStatus ;
typedef int AudioStreamPacketDescription ;
typedef int AudioConverterRef ;
typedef TYPE_3__ AudioBufferList ;


 int MIN (scalar_t__,int) ;
 int * calloc (int,int) ;
 int free (int *) ;
 int hb_audio_remap (int ,int **,int) ;
 int hb_list_bytes (int ) ;
 int hb_list_getbytes (int ,int *,int,int *,int *) ;
 int noErr ;

__attribute__((used)) static OSStatus inInputDataProc(AudioConverterRef converter, UInt32 *npackets,
                                AudioBufferList *buffers,
                                AudioStreamPacketDescription **ignored,
                                void *userdata)
{
    hb_work_private_t *pv = userdata;

    if (!pv->ibytes)
    {
        *npackets = 0;
        if (pv->input_done)
        {

            buffers->mBuffers[0].mDataByteSize = 0;
            return noErr;
        }
        else
        {

            return 1;
        }
    }

    if (pv->buf != ((void*)0))
    {
        free(pv->buf);
    }

    buffers->mBuffers[0].mDataByteSize = MIN(pv->ibytes,
                                             pv->isamplesiz * *npackets);
    pv->buf = calloc(1, buffers->mBuffers[0].mDataByteSize);
    buffers->mBuffers[0].mData = pv->buf;

    if (hb_list_bytes(pv->list) >= buffers->mBuffers[0].mDataByteSize)
    {
        hb_list_getbytes(pv->list, buffers->mBuffers[0].mData,
                         buffers->mBuffers[0].mDataByteSize, ((void*)0), ((void*)0));
    }
    else
    {
        *npackets = 0;
        return 1;
    }

    *npackets = buffers->mBuffers[0].mDataByteSize / pv->isamplesiz;
    pv->ibytes -= buffers->mBuffers[0].mDataByteSize;

    hb_audio_remap(pv->remap, (uint8_t**)(&buffers->mBuffers[0].mData),
                   (int)(*npackets));

    return noErr;
}
