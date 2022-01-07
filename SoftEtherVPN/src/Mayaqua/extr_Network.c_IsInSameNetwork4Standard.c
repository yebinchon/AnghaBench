
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int IsInSameNetwork4 (int *,int *,int *) ;
 int SetIP (int *,int,int,int ,int ) ;

bool IsInSameNetwork4Standard(IP *a1, IP *a2)
{
 IP subnet;

 SetIP(&subnet, 255, 255, 0, 0);

 return IsInSameNetwork4(a1, a2, &subnet);
}
