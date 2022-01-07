
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CT ;


 int CtInsertColumn (int *,int ,int) ;
 int * CtNew () ;
 int _UU (char*) ;

CT *CtNewStandardEx()
{
 CT *ct = CtNew();

 CtInsertColumn(ct, _UU("CMD_CT_STD_COLUMN_1"), 0);
 CtInsertColumn(ct, _UU("CMD_CT_STD_COLUMN_2"), 0);
 CtInsertColumn(ct, _UU("CMD_CT_STD_COLUMN_3"), 0);

 return ct;
}
