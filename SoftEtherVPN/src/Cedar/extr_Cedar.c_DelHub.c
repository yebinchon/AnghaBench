
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HUB ;
typedef int CEDAR ;


 int DelHubEx (int *,int *,int) ;

void DelHub(CEDAR *c, HUB *h)
{
 DelHubEx(c, h, 0);
}
