
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SInt16 ;


 int OSAddAtomic16 (int,int volatile*) ;

SInt16 OSIncrementAtomic16(volatile SInt16 * value)
{
 return OSAddAtomic16(1, value);
}
