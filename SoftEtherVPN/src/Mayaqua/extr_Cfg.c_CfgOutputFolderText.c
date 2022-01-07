
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_10__ {TYPE_1__* f; int * b; scalar_t__ depth; } ;
struct TYPE_9__ {int Items; int Folders; int Name; } ;
typedef TYPE_1__ FOLDER ;
typedef TYPE_2__ CFG_ENUM_PARAM ;
typedef int BUF ;


 int CfgAddDeclare (int *,int ,scalar_t__) ;
 int CfgAddEnd (int *,scalar_t__) ;
 int CfgEnumFolder (TYPE_1__*,int ,TYPE_2__*) ;
 int CfgEnumFolderProc ;
 int CfgEnumItem (TYPE_1__*,int ,TYPE_2__*) ;
 int CfgEnumItemProc ;
 scalar_t__ LIST_NUM (int ) ;
 int WriteBuf (int *,char*,int) ;
 int Zero (TYPE_2__*,int) ;

void CfgOutputFolderText(BUF *b, FOLDER *f, UINT depth)
{
 CFG_ENUM_PARAM p;

 if (b == ((void*)0) || f == ((void*)0))
 {
  return;
 }


 CfgAddDeclare(b, f->Name, depth);
 depth++;

 Zero(&p, sizeof(CFG_ENUM_PARAM));
 p.depth = depth;
 p.b = b;
 p.f = f;


 CfgEnumItem(f, CfgEnumItemProc, &p);

 if (LIST_NUM(f->Folders) != 0 && LIST_NUM(f->Items) != 0)
 {
  WriteBuf(b, "\r\n", 2);
 }


 CfgEnumFolder(f, CfgEnumFolderProc, &p);

 depth--;
 CfgAddEnd(b, depth);


}
