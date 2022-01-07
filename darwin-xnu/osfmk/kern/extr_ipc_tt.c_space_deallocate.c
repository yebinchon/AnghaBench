
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ipc_space_t ;


 scalar_t__ IS_NULL ;
 int is_release (scalar_t__) ;

void
space_deallocate(
 ipc_space_t space)
{
 if (space != IS_NULL)
  is_release(space);
}
