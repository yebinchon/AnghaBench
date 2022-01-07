
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ detailLevel ;
 int fprintf (int ,char*) ;
 int stderr ;

void M_ChangeDetail(int choice)
{
    choice = 0;
    detailLevel = 1 - detailLevel;


    fprintf( stderr, "M_ChangeDetail: low detail mode n.a.\n");

    return;







}
