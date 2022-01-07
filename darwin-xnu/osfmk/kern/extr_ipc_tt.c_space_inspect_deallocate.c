
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ipc_space_t ;
typedef scalar_t__ ipc_space_inspect_t ;


 scalar_t__ IS_INSPECT_NULL ;
 int is_release (int ) ;

void
space_inspect_deallocate(
 ipc_space_inspect_t space)
{
 if (space != IS_INSPECT_NULL)
  is_release((ipc_space_t)space);
}
