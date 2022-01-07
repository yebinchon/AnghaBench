
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int CurrentTos; int socket; } ;
typedef TYPE_1__ SOCK ;


 int IPPROTO_IP ;
 int IP_TOS ;
 int setsockopt (int ,int ,int ,char*,int) ;

void SetSockTos(SOCK *s, int tos)
{

 if (s == ((void*)0))
 {
  return;
 }

 if (s->CurrentTos == tos)
 {
  return;
 }





 s->CurrentTos = tos;
}
