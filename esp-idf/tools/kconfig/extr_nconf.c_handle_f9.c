
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct menu {int dummy; } ;


 int do_exit () ;

__attribute__((used)) static void handle_f9(int *key, struct menu *current_item)
{
 do_exit();
 return;
}
