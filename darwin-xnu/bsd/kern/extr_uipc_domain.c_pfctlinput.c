
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int dummy; } ;


 int pfctlinput2 (int,struct sockaddr*,int *) ;

void
pfctlinput(int cmd, struct sockaddr *sa)
{
 pfctlinput2(cmd, sa, ((void*)0));
}
