
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;


 int ReplaceStrEx (char*,int ,char*,char*,char*,int) ;

UINT ReplaceStr(char *dst, UINT size, char *string, char *old_keyword, char *new_keyword)
{
 return ReplaceStrEx(dst, size, string, old_keyword, new_keyword, 1);
}
