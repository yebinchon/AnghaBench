
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Size; int Buf; } ;
typedef int ITEM ;
typedef int FOLDER ;
typedef TYPE_1__ BUF ;


 int * CfgAddByte (int *,char*,int ,int ) ;

ITEM *CfgAddBuf(FOLDER *f, char *name, BUF *b)
{

 if (f == ((void*)0) || name == ((void*)0) || b == ((void*)0))
 {
  return ((void*)0);
 }
 return CfgAddByte(f, name, b->Buf, b->Size);
}
