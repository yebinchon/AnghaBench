
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SInt32 ;


 int OSAddAtomic (int,int volatile*) ;

SInt32 OSIncrementAtomic(volatile SInt32 * value)
{
 return OSAddAtomic(1, value);
}
