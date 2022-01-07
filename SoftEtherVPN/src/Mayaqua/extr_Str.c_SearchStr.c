
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int SearchStrEx (char*,char*,int ,int) ;

UINT SearchStr(char *string, char *keyword, UINT start)
{
 return SearchStrEx(string, keyword, start, 1);
}
