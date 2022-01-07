
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int stripes_handle_t ;


 int stripes_selection_pointer_changed (int *,int) ;

__attribute__((used)) static void stripes_navigation_pointer_changed(void *data)
{
   stripes_handle_t *stripes = (stripes_handle_t*)data;
   stripes_selection_pointer_changed(stripes, 1);
}
