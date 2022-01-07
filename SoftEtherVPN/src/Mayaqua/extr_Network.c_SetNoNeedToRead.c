
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int NoNeedToRead; } ;
typedef TYPE_1__ SOCK ;



void SetNoNeedToRead(SOCK *sock)
{

 if (sock == ((void*)0))
 {
  return;
 }

 sock->NoNeedToRead = 1;
}
