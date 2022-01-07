
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_3__ {int elements; } ;
typedef TYPE_1__ PACK ;
typedef int ELEMENT ;
typedef int BUF ;


 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int WriteBufInt (int *,scalar_t__) ;
 int WriteElement (int *,int *) ;

void WritePack(BUF *b, PACK *p)
{
 UINT i;

 if (b == ((void*)0) || p == ((void*)0))
 {
  return;
 }


 WriteBufInt(b, LIST_NUM(p->elements));


 for (i = 0;i < LIST_NUM(p->elements);i++)
 {
  ELEMENT *e = LIST_DATA(p->elements, i);
  WriteElement(b, e);
 }
}
