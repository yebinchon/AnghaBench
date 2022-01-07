
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TaskHandle_t ;


 int abort () ;
 int panicPutStr (char*) ;

void __attribute__((weak)) vApplicationStackOverflowHook( TaskHandle_t xTask, signed char *pcTaskName )
{
    panicPutStr("***ERROR*** A stack overflow in task ");
    panicPutStr((char *)pcTaskName);
    panicPutStr(" has been detected.\r\n");
    abort();
}
