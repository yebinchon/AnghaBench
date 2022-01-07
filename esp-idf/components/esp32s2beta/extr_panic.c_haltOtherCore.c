
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_cpu_stall (int) ;
 scalar_t__ xPortGetCoreID () ;

__attribute__((used)) static void haltOtherCore(void)
{
    esp_cpu_stall( xPortGetCoreID() == 0 ? 1 : 0 );
}
