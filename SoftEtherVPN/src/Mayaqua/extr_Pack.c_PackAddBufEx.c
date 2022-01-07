
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int Size; int Buf; } ;
typedef int PACK ;
typedef int ELEMENT ;
typedef TYPE_1__ BUF ;


 int * PackAddDataEx (int *,char*,int ,int ,scalar_t__,scalar_t__) ;

ELEMENT *PackAddBufEx(PACK *p, char *name, BUF *b, UINT index, UINT total)
{

 if (p == ((void*)0) || name == ((void*)0) || b == ((void*)0) || total == 0)
 {
  return ((void*)0);
 }

 return PackAddDataEx(p, name, b->Buf, b->Size, index, total);
}
