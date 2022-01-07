
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int syssram ;


 scalar_t__ __locksram (int ) ;

syssram* __SYS_LockSram()
{
 return (syssram*)__locksram(0);
}
