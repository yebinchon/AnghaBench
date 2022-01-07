
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int (* Read ) (TYPE_1__*,void*,size_t*) ;} ;
typedef int SRes ;
typedef TYPE_1__ ISeqInStream ;


 int RINOK (int ) ;
 int SZ_OK ;
 int stub1 (TYPE_1__*,void*,size_t*) ;

SRes SeqInStream_Read2(ISeqInStream *stream, void *buf, size_t size, SRes errorType)
{
   while (size != 0)
   {
      size_t processed = size;
      RINOK(stream->Read(stream, buf, &processed));
      if (processed == 0)
         return errorType;
      buf = (void *)((uint8_t *)buf + processed);
      size -= processed;
   }
   return SZ_OK;
}
