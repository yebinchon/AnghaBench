
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LANG_CONFIG_FILENAME ;
 int SaveLangConfig (int ,char*) ;

bool SaveLangConfigCurrentDir(char *str)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 return SaveLangConfig(LANG_CONFIG_FILENAME, str);
}
