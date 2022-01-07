
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum menu_display_prim_type { ____Placeholder_menu_display_prim_type } menu_display_prim_type ;
typedef int INT32 ;


 int D3DPT_COMM_TRIANGLESTRIP ;




__attribute__((used)) static INT32 menu_display_prim_to_d3d9_enum(
      enum menu_display_prim_type prim_type)
{
   switch (prim_type)
   {
      case 129:
      case 128:
         return D3DPT_COMM_TRIANGLESTRIP;
      case 130:
      default:
         break;
   }


   return 0;
}
