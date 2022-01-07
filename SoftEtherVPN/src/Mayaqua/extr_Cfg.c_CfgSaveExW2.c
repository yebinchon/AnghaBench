
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int FOLDER ;
typedef int CFG_RW ;


 int CfgSaveExW3 (int *,int *,int *,int *,int ) ;
 int IsFileExistsW (int ) ;
 int SAVE_BINARY_FILE_NAME_SWITCH ;

bool CfgSaveExW2(CFG_RW *rw, FOLDER *f, wchar_t *name, UINT *written_size)
{
 return CfgSaveExW3(rw, f, name, written_size, IsFileExistsW(SAVE_BINARY_FILE_NAME_SWITCH));
}
