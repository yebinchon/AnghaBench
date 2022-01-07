
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int lbl ;
typedef int LPD3DXCONSTANTTABLE ;


 void* d3d9x_constant_table_get_constant_by_name (int ,int *,char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void *d3d9_hlsl_get_constant_by_name(void *data, const char *name)
{
   LPD3DXCONSTANTTABLE prog = (LPD3DXCONSTANTTABLE)data;
   char lbl[64];
   lbl[0] = '\0';
   snprintf(lbl, sizeof(lbl), "$%s", name);
   return d3d9x_constant_table_get_constant_by_name(prog, ((void*)0), lbl);
}
