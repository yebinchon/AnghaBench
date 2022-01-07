
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;
typedef int BUF ;


 int * CfgFolderToBufBin (int *) ;
 int * CfgFolderToBufTextEx (int *,int) ;

BUF *CfgFolderToBufEx(FOLDER *f, bool textmode, bool no_banner)
{

 if (f == ((void*)0))
 {
  return ((void*)0);
 }

 if (textmode)
 {
  return CfgFolderToBufTextEx(f, no_banner);
 }
 else
 {
  return CfgFolderToBufBin(f);;
 }
}
