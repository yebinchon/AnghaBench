
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int UCHAR ;
typedef int IP ;


 int IPToStr6 (char*,int ,int *) ;
 int SetIP6 (int *,int *) ;

void IPToStr6Array(char *str, UINT size, UCHAR *bytes)
{
 IP ip;

 if (str == ((void*)0) || bytes == ((void*)0))
 {
  return;
 }

 SetIP6(&ip, bytes);

 IPToStr6(str, size, &ip);
}
