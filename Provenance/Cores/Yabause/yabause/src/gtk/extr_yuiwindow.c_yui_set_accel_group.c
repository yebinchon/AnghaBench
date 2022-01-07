
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gpointer ;


 int gtk_action_set_accel_group (int ,int ) ;

__attribute__((used)) static void yui_set_accel_group(gpointer action, gpointer group) {
 gtk_action_set_accel_group(action, group);
}
