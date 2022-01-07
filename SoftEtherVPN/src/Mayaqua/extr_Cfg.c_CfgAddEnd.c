
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int BUF ;


 int CfgAddLine (int *,char*,int ) ;

void CfgAddEnd(BUF *b, UINT depth)
{

 if (b == ((void*)0))
 {
  return;
 }

 CfgAddLine(b, "}", depth);

}
