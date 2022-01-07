
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int BUF ;


 int StrLen (char*) ;
 int WriteBuf (int *,char*,int) ;

void CfgAddLine(BUF *b, char *str, UINT depth)
{
 UINT i;

 if (b == ((void*)0))
 {
  return;
 }

 for (i = 0;i < depth;i++)
 {
  WriteBuf(b, "\t", 1);
 }
 WriteBuf(b, str, StrLen(str));
 WriteBuf(b, "\r\n", 2);
}
