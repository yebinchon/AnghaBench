
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int * data32; } ;


 scalar_t__ calloc (int ,int) ;
 int free (int *) ;
 TYPE_1__* scspchannel ;
 int scspsoundbufsize ;

__attribute__((used)) static int
scsp_alloc_bufs (void)
{
  if (scspchannel[0].data32)
    free(scspchannel[0].data32);
  scspchannel[0].data32 = ((void*)0);
  if (scspchannel[1].data32)
    free(scspchannel[1].data32);
  scspchannel[1].data32 = ((void*)0);

  scspchannel[0].data32 = (u32 *)calloc(scspsoundbufsize, sizeof(u32));
  if (scspchannel[0].data32 == ((void*)0))
    return -1;
  scspchannel[1].data32 = (u32 *)calloc(scspsoundbufsize, sizeof(u32));
  if (scspchannel[1].data32 == ((void*)0))
    return -1;

  return 0;
}
