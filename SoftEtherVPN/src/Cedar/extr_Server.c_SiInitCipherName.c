
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Cedar; } ;
typedef TYPE_1__ SERVER ;


 int SERVER_DEFAULT_CIPHER_NAME ;
 int SetCedarCipherList (int ,int ) ;

void SiInitCipherName(SERVER *s)
{

 if (s == ((void*)0))
 {
  return;
 }

 SetCedarCipherList(s->Cedar, SERVER_DEFAULT_CIPHER_NAME);
}
