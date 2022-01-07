
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef int int64_t ;
struct TYPE_4__ {int (* Seek ) (TYPE_1__*,int *,int ) ;} ;
typedef int SRes ;
typedef TYPE_1__ ILookInStream ;


 int SZ_SEEK_SET ;
 int stub1 (TYPE_1__*,int *,int ) ;

SRes LookInStream_SeekTo(ILookInStream *stream, uint64_t offset)
{
   int64_t t = offset;
   return stream->Seek(stream, &t, SZ_SEEK_SET);
}
