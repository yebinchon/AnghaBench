
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; int * AttributeList; } ;
typedef TYPE_1__ SSTP_PACKET ;


 int Free (TYPE_1__*) ;
 int SstpFreeAttributeList (int *) ;

void SstpFreePacket(SSTP_PACKET *p)
{

 if (p == ((void*)0))
 {
  return;
 }

 if (p->AttributeList != ((void*)0))
 {
  SstpFreeAttributeList(p->AttributeList);
 }

 if (p->Data != ((void*)0))
 {
  Free(p->Data);
 }

 Free(p);
}
