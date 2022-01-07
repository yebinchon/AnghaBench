
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ TypeL4; scalar_t__ PayloadSize; int * Payload; } ;
typedef TYPE_1__ PKT ;


 scalar_t__ INFINITE ;
 scalar_t__ L4_TCP ;
 scalar_t__ SearchBin (int *,int ,scalar_t__,char*,int) ;

bool IsTcpPacketNcsiHttpAccess(PKT *p)
{

 if (p == ((void*)0))
 {
  return 0;
 }

 if (p->TypeL4 != L4_TCP)
 {
  return 0;
 }

 if (p->Payload == ((void*)0) || p->PayloadSize == 0)
 {
  return 0;
 }

 if (SearchBin(p->Payload, 0, p->PayloadSize, "NCSI", 4) != INFINITE)
 {
  return 1;
 }

 if (SearchBin(p->Payload, 0, p->PayloadSize, ".jpeg", 5) != INFINITE)
 {
  return 1;
 }

 if (SearchBin(p->Payload, 0, p->PayloadSize, ".jpg", 4) != INFINITE)
 {
  return 1;
 }

 if (SearchBin(p->Payload, 0, p->PayloadSize, ".gif", 4) != INFINITE)
 {
  return 1;
 }

 if (SearchBin(p->Payload, 0, p->PayloadSize, ".css", 4) != INFINITE)
 {
  return 1;
 }

 return 0;
}
