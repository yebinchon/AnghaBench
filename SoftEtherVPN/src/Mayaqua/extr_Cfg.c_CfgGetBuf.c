
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size; int Buf; } ;
typedef TYPE_1__ ITEM ;
typedef int FOLDER ;
typedef int BUF ;


 TYPE_1__* CfgFindItem (int *,char*) ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,int ,int ) ;

BUF *CfgGetBuf(FOLDER *f, char *name)
{
 ITEM *t;
 BUF *b;

 if (f == ((void*)0) || name == ((void*)0))
 {
  return ((void*)0);
 }

 t = CfgFindItem(f, name);
 if (t == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();
 WriteBuf(b, t->Buf, t->size);
 SeekBuf(b, 0, 0);

 return b;
}
