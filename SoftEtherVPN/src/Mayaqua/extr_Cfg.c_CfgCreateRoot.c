
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;


 int * CfgCreateFolder (int *,int ) ;
 int TAG_ROOT ;

FOLDER *CfgCreateRoot()
{
 return CfgCreateFolder(((void*)0), TAG_ROOT);
}
