
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ nelem; scalar_t__ used_elem; } ;


 scalar_t__ g_min_free_table_elem ;
 TYPE_1__ g_wqlinktable ;
 int ltable_grow (TYPE_1__*,scalar_t__) ;
 int wqdbg_v (char*,scalar_t__,scalar_t__,scalar_t__) ;

__attribute__((used)) static void wql_ensure_free_space(void)
{
 if (g_wqlinktable.nelem - g_wqlinktable.used_elem < g_min_free_table_elem) {



  if (g_wqlinktable.used_elem <= g_wqlinktable.nelem) {
   wqdbg_v("Forcing table growth: nelem=%d, used=%d, min_free=%d",
    g_wqlinktable.nelem, g_wqlinktable.used_elem,
    g_min_free_table_elem);
   ltable_grow(&g_wqlinktable, g_min_free_table_elem);
  }
 }
}
