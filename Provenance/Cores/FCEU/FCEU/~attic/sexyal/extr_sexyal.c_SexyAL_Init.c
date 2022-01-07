
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Destroy; int Open; } ;
typedef TYPE_1__ SexyAL ;


 int Destroy ;
 int Open ;
 TYPE_1__* malloc (int) ;

void *SexyAL_Init(int version)
{
 SexyAL *iface;
 if(!version != 1) return(0);

 iface=malloc(sizeof(SexyAL));

 iface->Open=Open;
 iface->Destroy=Destroy;
 return((void *)iface);
}
