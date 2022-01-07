
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int DataSize; int Data; int Type; } ;
typedef TYPE_1__ PPP_OPTION ;


 int Copy (int ,void*,int ) ;
 TYPE_1__* ZeroMalloc (int) ;

PPP_OPTION *NewPPPOption(UCHAR type, void *data, UINT size)
{
 PPP_OPTION *o;

 if (size != 0 && data == ((void*)0))
 {
  return ((void*)0);
 }

 o = ZeroMalloc(sizeof(PPP_OPTION));

 o->Type = type;
 Copy(o->Data, data, size);
 o->DataSize = size;

 return o;
}
