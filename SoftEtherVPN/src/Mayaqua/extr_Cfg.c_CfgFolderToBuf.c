
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FOLDER ;
typedef int BUF ;


 int * CfgFolderToBufEx (int *,int,int) ;

BUF *CfgFolderToBuf(FOLDER *f, bool textmode)
{
 return CfgFolderToBufEx(f, textmode, 0);
}
