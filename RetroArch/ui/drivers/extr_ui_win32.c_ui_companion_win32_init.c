
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ui_companion_win32_t ;


 scalar_t__ calloc (int,int) ;

__attribute__((used)) static void *ui_companion_win32_init(void)
{
   ui_companion_win32_t *handle = (ui_companion_win32_t*)
      calloc(1, sizeof(*handle));

   if (!handle)
      return ((void*)0);

   return handle;
}
