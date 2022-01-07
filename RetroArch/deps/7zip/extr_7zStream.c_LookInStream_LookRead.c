
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int (* Skip ) (TYPE_1__*,size_t) ;int (* Look ) (TYPE_1__*,void const**,size_t*) ;} ;
typedef int SRes ;
typedef TYPE_1__ ILookInStream ;


 int RINOK (int ) ;
 int SZ_OK ;
 int memcpy (void*,void const*,size_t) ;
 int stub1 (TYPE_1__*,void const**,size_t*) ;
 int stub2 (TYPE_1__*,size_t) ;

SRes LookInStream_LookRead(ILookInStream *stream, void *buf, size_t *size)
{
   const void *lookBuf;
   if (*size == 0)
      return SZ_OK;
   RINOK(stream->Look(stream, &lookBuf, size));
   memcpy(buf, lookBuf, *size);
   return stream->Skip(stream, *size);
}
