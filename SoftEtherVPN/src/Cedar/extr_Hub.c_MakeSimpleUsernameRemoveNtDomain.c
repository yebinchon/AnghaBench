
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmp2 ;
typedef int tmp1 ;
typedef int UINT ;


 int MAX_SIZE ;
 int ParseNtUsername (char*,char*,int,char*,int,int) ;
 int StrCpy (char*,int ,char*) ;

void MakeSimpleUsernameRemoveNtDomain(char *dst, UINT dst_size, char *src)
{
 char tmp1[MAX_SIZE];
 char tmp2[MAX_SIZE];

 if (dst == ((void*)0) || src == ((void*)0))
 {
  return;
 }

 ParseNtUsername(src, tmp1, sizeof(tmp1), tmp2, sizeof(tmp2), 0);

 StrCpy(dst, dst_size, tmp1);
}
