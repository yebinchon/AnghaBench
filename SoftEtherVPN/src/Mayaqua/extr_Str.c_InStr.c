
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int InStrEx (char*,char*,int) ;

bool InStr(char *str, char *keyword)
{
 return InStrEx(str, keyword, 0);
}
