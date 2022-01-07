
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BaseType_t ;


 unsigned int portENTER_CRITICAL_NESTED () ;
 int portEXIT_CRITICAL_NESTED (unsigned int) ;
 scalar_t__* port_interruptNesting ;
 size_t xPortGetCoreID () ;

BaseType_t xPortInIsrContext(void)
{
 unsigned int irqStatus;
 BaseType_t ret;
 irqStatus=portENTER_CRITICAL_NESTED();
 ret=(port_interruptNesting[xPortGetCoreID()] != 0);
 portEXIT_CRITICAL_NESTED(irqStatus);
 return ret;
}
