
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int g_strlcpy (char*,int ,int) ;
 int gdk_keyval_name (int ) ;

void PERGTKKeyName(u32 key, char * name, int size)
{
   g_strlcpy(name, gdk_keyval_name(key), size);
}
