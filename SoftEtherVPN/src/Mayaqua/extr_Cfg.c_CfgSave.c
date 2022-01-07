
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;


 int CfgSaveEx (int *,int *,char*) ;

void CfgSave(FOLDER *f, char *name)
{
 CfgSaveEx(((void*)0), f, name);
}
