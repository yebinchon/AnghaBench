
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int Copy (int *,int *,int) ;

void CopyIP(IP *dst, IP *src)
{
 Copy(dst, src, sizeof(IP));
}
