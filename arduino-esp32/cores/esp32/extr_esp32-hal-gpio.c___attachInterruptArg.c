
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidFuncPtrArg ;
typedef int uint8_t ;


 int __attachInterruptFunctionalArg (int ,int ,void*,int,int) ;

extern void __attachInterruptArg(uint8_t pin, voidFuncPtrArg userFunc, void * arg, int intr_type)
{
 __attachInterruptFunctionalArg(pin, userFunc, arg, intr_type, 0);
}
