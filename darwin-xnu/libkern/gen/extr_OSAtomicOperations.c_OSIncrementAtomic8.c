
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SInt8 ;


 int OSAddAtomic8 (int,int volatile*) ;

SInt8 OSIncrementAtomic8(volatile SInt8 * value)
{
 return OSAddAtomic8(1, value);
}
