
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SESSION ;
typedef int POLICY ;
typedef int HUB ;
typedef int CONNECTION ;
typedef int CEDAR ;


 int * NewServerSessionEx (int *,int *,int *,char*,int *,int,int *) ;

SESSION *NewServerSession(CEDAR *cedar, CONNECTION *c, HUB *h, char *username, POLICY *policy)
{
 return NewServerSessionEx(cedar, c, h, username, policy, 0, ((void*)0));
}
