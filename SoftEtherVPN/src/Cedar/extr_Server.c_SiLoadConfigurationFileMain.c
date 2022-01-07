
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;
typedef int FOLDER ;


 int SiLoadConfigurationCfg (int *,int *) ;

bool SiLoadConfigurationFileMain(SERVER *s, FOLDER *root)
{

 if (s == ((void*)0) || root == ((void*)0))
 {
  return 0;
 }

 return SiLoadConfigurationCfg(s, root);
}
