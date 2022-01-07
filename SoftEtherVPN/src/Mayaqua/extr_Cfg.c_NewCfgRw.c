
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;
typedef int CFG_RW ;


 int * NewCfgRwEx (int **,char*,int) ;

CFG_RW *NewCfgRw(FOLDER **root, char *cfg_name)
{
 return NewCfgRwEx(root, cfg_name, 0);
}
