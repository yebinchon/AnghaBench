
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ WaitToUseCipher; } ;
typedef TYPE_1__ SOCK ;


 scalar_t__ CopyStr (char*) ;
 int Free (scalar_t__) ;

void SetWantToUseCipher(SOCK *sock, char *name)
{

 if (sock == ((void*)0) || name == ((void*)0))
 {
  return;
 }

 if (sock->WaitToUseCipher)
 {
  Free(sock->WaitToUseCipher);
 }

 sock->WaitToUseCipher = CopyStr(name);
}
