
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64 ;


 int Assert (int) ;
 scalar_t__ palloc0 (int) ;

__attribute__((used)) static uint64 *
AllocateUint64(uint64 value)
{
 uint64 *allocatedValue = (uint64 *) palloc0(sizeof(uint64));
 Assert(sizeof(uint64) >= 8);

 (*allocatedValue) = value;

 return allocatedValue;
}
