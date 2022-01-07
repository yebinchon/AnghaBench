
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_calloc (int) ;
 int esp_restart () ;

__attribute__((used)) static void test_fn2(void)
{
    check_calloc(7000);
    esp_restart();
}
