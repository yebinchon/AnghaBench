
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ Type; int Connected; } ;
struct TYPE_5__ {scalar_t__ NumSocket; TYPE_2__** Sock; } ;
typedef TYPE_1__ SOCKSET ;
typedef TYPE_2__ SOCK ;


 scalar_t__ MAX_SOCKSET_NUM ;
 scalar_t__ SOCK_TCP ;

void AddSockSet(SOCKSET *set, SOCK *sock)
{

 if (set == ((void*)0) || sock == ((void*)0))
 {
  return;
 }
 if (sock->Type == SOCK_TCP && sock->Connected == 0)
 {
  return;
 }

 if (set->NumSocket >= MAX_SOCKSET_NUM)
 {

  return;
 }
 set->Sock[set->NumSocket++] = sock;
}
