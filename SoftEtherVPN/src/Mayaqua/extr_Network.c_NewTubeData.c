
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {void* Header; scalar_t__ HeaderSize; scalar_t__ DataSize; void* Data; } ;
typedef TYPE_1__ TUBEDATA ;


 void* Clone (void*,scalar_t__) ;
 void* ZeroMalloc (scalar_t__) ;

TUBEDATA *NewTubeData(void *data, UINT size, void *header, UINT header_size)
{
 TUBEDATA *d;

 if (size == 0 || data == ((void*)0))
 {
  return ((void*)0);
 }

 d = ZeroMalloc(sizeof(TUBEDATA));

 d->Data = Clone(data, size);
 d->DataSize = size;
 if (header != ((void*)0))
 {
  d->Header = Clone(header, header_size);
  d->HeaderSize = header_size;
 }
 else
 {
  d->Header = ZeroMalloc(header_size);
 }

 return d;
}
