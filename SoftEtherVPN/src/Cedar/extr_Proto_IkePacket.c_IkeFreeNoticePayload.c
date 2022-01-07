
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * Spi; int * MessageData; } ;
typedef TYPE_1__ IKE_PACKET_NOTICE_PAYLOAD ;


 int FreeBuf (int *) ;

void IkeFreeNoticePayload(IKE_PACKET_NOTICE_PAYLOAD *t)
{

 if (t == ((void*)0))
 {
  return;
 }

 if (t->MessageData != ((void*)0))
 {
  FreeBuf(t->MessageData);
  t->MessageData = ((void*)0);
 }

 if (t->Spi != ((void*)0))
 {
  FreeBuf(t->Spi);
  t->Spi = ((void*)0);
 }
}
