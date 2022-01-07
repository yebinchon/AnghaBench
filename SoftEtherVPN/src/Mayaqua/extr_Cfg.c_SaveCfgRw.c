
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int FOLDER ;
typedef int CFG_RW ;


 int INFINITE ;
 int SaveCfgRwEx (int *,int *,int ) ;

UINT SaveCfgRw(CFG_RW *rw, FOLDER *f)
{
 return SaveCfgRwEx(rw, f, INFINITE);
}
