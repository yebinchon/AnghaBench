
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {size_t nAllocLen; size_t nFilledLen; scalar_t__ nFlags; scalar_t__ nOffset; int pBuffer; } ;
struct TYPE_11__ {size_t inputBufferHeaderCount; TYPE_2__* imageResizer; TYPE_1__* imageDecoder; int * pOutputBufferHeader; TYPE_4__** ppInputBufferHeader; } ;
struct TYPE_10__ {int outPort; int component; int handle; } ;
struct TYPE_9__ {int outPort; int component; int handle; } ;
typedef TYPE_3__ OPENMAX_JPEG_DECODER ;
typedef TYPE_4__ OMX_BUFFERHEADERTYPE ;


 int OMXJPEG_ERROR_MEMORY ;
 int OMXJPEG_OK ;
 scalar_t__ OMX_BUFFERFLAG_EOS ;
 int OMX_EmptyThisBuffer (int ,TYPE_4__*) ;
 int OMX_ErrorNone ;
 int OMX_EventBufferFlag ;
 int OMX_EventPortSettingsChanged ;
 int OMX_FillThisBuffer (int ,int *) ;
 size_t bufferIndex ;
 int fprintf (int ,char*,int) ;
 int ilclient_remove_event (int ,int ,int ,int ,int ,int) ;
 int ilclient_wait_for_event (int ,int ,int ,int,scalar_t__,int,int ,int) ;
 int memcpy (int ,char*,size_t) ;
 int perror (char*) ;
 int portSettingsChanged (TYPE_3__*) ;
 int portSettingsChangedAgain (TYPE_3__*) ;
 int sleep (int) ;
 int stderr ;

int
decodeImage(OPENMAX_JPEG_DECODER * decoder, char *sourceImage,
     size_t imageSize)
{
    char *sourceOffset = sourceImage;


    size_t toread = 0;
    toread += imageSize;
    int bFilled = 0;

    bufferIndex = 0;

    while (toread > 0) {

 OMX_BUFFERHEADERTYPE *pBufHeader =
     decoder->ppInputBufferHeader[bufferIndex];


 bufferIndex++;
 if (bufferIndex >= decoder->inputBufferHeaderCount)
     bufferIndex = 0;


 if (toread > pBufHeader->nAllocLen)
     pBufHeader->nFilledLen = pBufHeader->nAllocLen;
 else
     pBufHeader->nFilledLen = toread;

 toread = toread - pBufHeader->nFilledLen;


 memcpy(pBufHeader->pBuffer, sourceOffset, pBufHeader->nFilledLen);



 sourceOffset = sourceOffset + pBufHeader->nFilledLen;
 pBufHeader->nOffset = 0;
 pBufHeader->nFlags = 0;
 if (toread <= 0) {
     pBufHeader->nFlags = OMX_BUFFERFLAG_EOS;
 }

 int ret =
     OMX_EmptyThisBuffer(decoder->imageDecoder->handle,
    pBufHeader);

 if (ret != OMX_ErrorNone) {
     perror("Empty input buffer");
     fprintf(stderr, "return code %x\n", ret);
     return OMXJPEG_ERROR_MEMORY;
 }

 int done = 0;
 while ((done == 0) && (decoder->pOutputBufferHeader == ((void*)0))) {
     if (decoder->pOutputBufferHeader == ((void*)0)) {
  ret =
      ilclient_wait_for_event
      (decoder->imageDecoder->component,
       OMX_EventPortSettingsChanged,
       decoder->imageDecoder->outPort, 0, 0, 1, 0, 5);

  if (ret == 0) {
      ret = portSettingsChanged(decoder);
      if (ret != OMXJPEG_OK)
   return ret;
  }
     } else {
  ret =
      ilclient_remove_event(decoder->imageDecoder->component,
       OMX_EventPortSettingsChanged,
       decoder->imageDecoder->outPort,
       0, 0, 1);
  if (ret == 0)
      portSettingsChangedAgain(decoder);

     }


     if (pBufHeader->nFilledLen == 0)
  done = 1;

     if ((done == 0)
  || (decoder->pOutputBufferHeader == ((void*)0)))
  sleep(1);
 }


 if ((bFilled == 0) && (decoder->pOutputBufferHeader != ((void*)0))) {
     ret = OMX_FillThisBuffer(decoder->imageResizer->handle,
         decoder->pOutputBufferHeader);
     if (ret != OMX_ErrorNone) {
  perror("Filling output buffer");
  fprintf(stderr, "Error code %x\n", ret);
  return OMXJPEG_ERROR_MEMORY;
     }

     bFilled = 1;
 }
    }







    int ret =
 ilclient_wait_for_event(decoder->imageDecoder->component,
    OMX_EventBufferFlag,
    decoder->imageDecoder->outPort, 1,
    OMX_BUFFERFLAG_EOS, 1,
    0, 2);
    if (ret != 0) {
 fprintf(stderr, "No EOS event on image decoder %d\n", ret);
    }
    ret = ilclient_wait_for_event(decoder->imageResizer->component,
      OMX_EventBufferFlag,
      decoder->imageResizer->outPort, 1,
      OMX_BUFFERFLAG_EOS, 1, 0, 2);
    if (ret != 0) {
 fprintf(stderr, "No EOS event on image resizer %d\n", ret);
    }
    return OMXJPEG_OK;
}
