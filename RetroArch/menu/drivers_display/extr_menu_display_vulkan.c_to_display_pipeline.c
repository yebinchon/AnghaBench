
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum menu_display_prim_type { ____Placeholder_menu_display_prim_type } menu_display_prim_type ;


 int MENU_DISPLAY_PRIM_TRIANGLESTRIP ;

__attribute__((used)) static unsigned to_display_pipeline(
      enum menu_display_prim_type type, bool blend)
{
   return ((type == MENU_DISPLAY_PRIM_TRIANGLESTRIP) << 1) | (blend << 0);
}
