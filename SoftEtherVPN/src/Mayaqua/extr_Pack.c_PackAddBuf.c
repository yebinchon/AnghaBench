
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; int Buf; } ;
typedef int PACK ;
typedef int ELEMENT ;
typedef TYPE_1__ BUF ;


 int * PackAddData (int *,char*,int ,int ) ;

ELEMENT *PackAddBuf(PACK *p, char *name, BUF *b)
{

 if (p == ((void*)0) || name == ((void*)0) || b == ((void*)0))
 {
  return ((void*)0);
 }

 return PackAddData(p, name, b->Buf, b->Size);
}
