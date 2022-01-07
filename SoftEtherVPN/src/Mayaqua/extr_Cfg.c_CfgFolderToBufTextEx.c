
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;
typedef int BUF ;


 int CfgOutputFolderText (int *,int *,int ) ;
 int * NewBuf () ;
 int StrLen (int ) ;
 int TAG_CPYRIGHT ;
 int WriteBuf (int *,int ,int ) ;

BUF *CfgFolderToBufTextEx(FOLDER *f, bool no_banner)
{
 BUF *b;

 if (f == ((void*)0))
 {
  return ((void*)0);
 }


 b = NewBuf();


 if (no_banner == 0)
 {
  WriteBuf(b, TAG_CPYRIGHT, StrLen(TAG_CPYRIGHT));
 }


 CfgOutputFolderText(b, f, 0);

 return b;
}
