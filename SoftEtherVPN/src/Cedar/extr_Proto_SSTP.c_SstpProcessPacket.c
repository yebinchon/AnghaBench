
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ IsControl; } ;
struct TYPE_9__ {int Now; int LastRecvTick; } ;
typedef TYPE_1__ SSTP_SERVER ;
typedef TYPE_2__ SSTP_PACKET ;


 int SstpProcessControlPacket (TYPE_1__*,TYPE_2__*) ;
 int SstpProcessDataPacket (TYPE_1__*,TYPE_2__*) ;

void SstpProcessPacket(SSTP_SERVER *s, SSTP_PACKET *p)
{

 if (s == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 s->LastRecvTick = s->Now;

 if (p->IsControl)
 {

  SstpProcessControlPacket(s, p);
 }
 else
 {

  SstpProcessDataPacket(s, p);
 }
}
