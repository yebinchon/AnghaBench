
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int esp_restart () ;
 int setup_values () ;

__attribute__((used)) static void do_restart(void)
{
    setup_values();
    esp_restart();
}
