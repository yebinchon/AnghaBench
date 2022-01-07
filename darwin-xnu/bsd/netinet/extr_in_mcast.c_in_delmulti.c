
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_multi {int dummy; } ;


 int in_leavegroup (struct in_multi*,int *) ;

void
in_delmulti(struct in_multi *inm)
{

 (void) in_leavegroup(inm, ((void*)0));
}
