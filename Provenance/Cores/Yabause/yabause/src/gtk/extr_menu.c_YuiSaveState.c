
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int YabSaveStateSlot (char*,int) ;
 char* g_key_file_get_value (int ,char*,char*,int *) ;
 int keyfile ;

void YuiSaveState(void) {
  char * dir = g_key_file_get_value(keyfile, "General", "StatePath", ((void*)0));

  YabSaveStateSlot(dir, 1);
}
