
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SInt64 ;
typedef int SInt32 ;


 scalar_t__ OSAddAtomic (int ,long volatile*) ;
 scalar_t__ OSAddAtomic64 (int ,int *) ;

long
OSAddAtomicLong(long theAmount, volatile long *address)
{

 return (long)OSAddAtomic64((SInt64)theAmount, (SInt64*)address);



}
