
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ aid_t ;
typedef int SInt64 ;


 scalar_t__ OSIncrementAtomic64 (int *) ;
 int global_aid ;

__attribute__((used)) static aid_t
get_aid()
{
 aid_t aid;
 aid = (aid_t)OSIncrementAtomic64((SInt64 *)&global_aid);
 return aid;
}
