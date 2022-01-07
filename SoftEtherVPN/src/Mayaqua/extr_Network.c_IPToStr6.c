
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int IP ;


 int IPToStr6Inner (char*,int *) ;
 int MAX_SIZE ;
 int StrCpy (char*,int ,char*) ;

void IPToStr6(char *str, UINT size, IP *ip)
{
 char tmp[MAX_SIZE];

 IPToStr6Inner(tmp, ip);

 StrCpy(str, size, tmp);
}
