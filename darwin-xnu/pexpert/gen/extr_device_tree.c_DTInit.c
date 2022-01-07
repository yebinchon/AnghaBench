
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ RealDTEntry ;


 int DTInitialized ;
 scalar_t__ DTRootNode ;

void
DTInit(void *base)
{
 DTRootNode = (RealDTEntry) base;
 DTInitialized = (DTRootNode != 0);
}
