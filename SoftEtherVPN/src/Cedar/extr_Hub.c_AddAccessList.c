
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUB ;
typedef int ACCESS ;


 int AddAccessListEx (int *,int *,int,int) ;

void AddAccessList(HUB *hub, ACCESS *a)
{
 AddAccessListEx(hub, a, 0, 0);
}
