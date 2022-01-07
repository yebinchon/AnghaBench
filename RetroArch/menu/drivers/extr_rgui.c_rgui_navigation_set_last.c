
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int rgui_navigation_set (void*,int) ;

__attribute__((used)) static void rgui_navigation_set_last(void *data)
{
   rgui_navigation_set(data, 1);
}
