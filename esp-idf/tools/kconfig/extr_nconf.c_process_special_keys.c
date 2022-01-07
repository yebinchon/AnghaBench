
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct menu {int dummy; } ;
struct TYPE_2__ {int key; int (* handler ) (int*,struct menu*) ;} ;


 int KEY_F (int) ;
 int KEY_RESIZE ;
 TYPE_1__* function_keys ;
 int function_keys_num ;
 int setup_windows () ;
 int stub1 (int*,struct menu*) ;

__attribute__((used)) static int process_special_keys(int *key, struct menu *menu)
{
 int i;

 if (*key == KEY_RESIZE) {
  setup_windows();
  return 1;
 }

 for (i = 0; i < function_keys_num; i++) {
  if (*key == KEY_F(function_keys[i].key) ||
      *key == '0' + function_keys[i].key){
   function_keys[i].handler(key, menu);
   return 1;
  }
 }

 return 0;
}
