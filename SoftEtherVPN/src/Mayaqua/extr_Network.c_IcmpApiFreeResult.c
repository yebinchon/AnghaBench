
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Data; } ;
typedef TYPE_1__ ICMP_RESULT ;


 int Free (TYPE_1__*) ;

void IcmpApiFreeResult(ICMP_RESULT *ret)
{

 if (ret == ((void*)0))
 {
  return;
 }

 if (ret->Data != ((void*)0))
 {
  Free(ret->Data);
 }

 Free(ret);
}
