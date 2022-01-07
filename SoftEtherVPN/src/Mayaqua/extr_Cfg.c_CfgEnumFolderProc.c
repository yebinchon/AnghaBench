
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int depth; int b; } ;
typedef int FOLDER ;
typedef TYPE_1__ CFG_ENUM_PARAM ;


 int CfgOutputFolderText (int ,int *,int ) ;

bool CfgEnumFolderProc(FOLDER *f, void *param)
{
 CFG_ENUM_PARAM *p;

 if (f == ((void*)0) || param == ((void*)0))
 {
  return 0;
 }

 p = (CFG_ENUM_PARAM *)param;

 CfgOutputFolderText(p->b, f, p->depth);

 return 1;
}
