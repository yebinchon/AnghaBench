
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int LANG_CONFIG_FILENAME ;
 int LoadLangConfig (int ,char*,int ) ;

bool LoadLangConfigCurrentDir(char *str, UINT str_size)
{

 if (str == ((void*)0))
 {
  return 0;
 }

 return LoadLangConfig(LANG_CONFIG_FILENAME, str, str_size);
}
