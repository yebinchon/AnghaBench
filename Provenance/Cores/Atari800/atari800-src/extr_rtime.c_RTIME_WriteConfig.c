
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int RTIME_enabled ;
 int fprintf (int *,char*,int) ;

void RTIME_WriteConfig(FILE *fp)
{
 fprintf(fp, "RTIME=%d\n", RTIME_enabled);
}
