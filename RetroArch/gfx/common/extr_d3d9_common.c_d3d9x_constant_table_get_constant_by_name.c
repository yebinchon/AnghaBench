
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* lpVtbl; } ;
struct TYPE_4__ {scalar_t__ (* GetConstantByName ) (TYPE_2__*,scalar_t__,scalar_t__) ;} ;
typedef TYPE_2__* LPD3DXCONSTANTTABLE ;
typedef scalar_t__ LPCSTR ;
typedef scalar_t__ D3DXHANDLE ;


 scalar_t__ stub1 (TYPE_2__*,scalar_t__,scalar_t__) ;

void *d3d9x_constant_table_get_constant_by_name(void *_tbl,
      void *_handle, void *_name)
{
   return ((void*)0);
}
