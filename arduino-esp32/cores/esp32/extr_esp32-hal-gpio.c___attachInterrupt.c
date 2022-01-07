
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int voidFuncPtrArg ;
typedef scalar_t__ voidFuncPtr ;
typedef int uint8_t ;


 int __attachInterruptFunctionalArg (int ,int ,int *,int,int) ;

extern void __attachInterrupt(uint8_t pin, voidFuncPtr userFunc, int intr_type) {
    __attachInterruptFunctionalArg(pin, (voidFuncPtrArg)userFunc, ((void*)0), intr_type, 0);
}
