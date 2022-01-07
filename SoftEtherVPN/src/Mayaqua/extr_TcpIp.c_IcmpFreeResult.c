
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ICMP_RESULT ;


 int IcmpApiFreeResult (int *) ;

void IcmpFreeResult(ICMP_RESULT *r)
{

 if (r == ((void*)0))
 {
  return;
 }

 IcmpApiFreeResult(r);
}
