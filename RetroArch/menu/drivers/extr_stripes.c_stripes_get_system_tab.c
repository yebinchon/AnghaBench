
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int system_tab_end; int* tabs; } ;
typedef TYPE_1__ stripes_handle_t ;


 int UINT_MAX ;

__attribute__((used)) static unsigned stripes_get_system_tab(stripes_handle_t *stripes, unsigned i)
{
   if (i <= stripes->system_tab_end)
   {
      return stripes->tabs[i];
   }
   return UINT_MAX;
}
