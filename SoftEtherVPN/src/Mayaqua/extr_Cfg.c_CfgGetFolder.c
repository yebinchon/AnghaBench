
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;


 int * CfgFindFolder (int *,char*) ;

FOLDER *CfgGetFolder(FOLDER *parent, char *name)
{
 return CfgFindFolder(parent, name);
}
