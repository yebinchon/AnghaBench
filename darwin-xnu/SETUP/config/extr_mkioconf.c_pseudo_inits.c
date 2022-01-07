
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct device {scalar_t__ d_type; scalar_t__ d_init; int d_slave; struct device* d_next; } ;
typedef int FILE ;


 scalar_t__ PSEUDO_DEVICE ;
 struct device* dtab ;
 int fprintf (int *,char*,...) ;

void
pseudo_inits(FILE *fp)
{
 struct device *dp;
 int count;

 fprintf(fp, "\n");
 for (dp = dtab; dp != 0; dp = dp->d_next) {
  if (dp->d_type != PSEUDO_DEVICE || dp->d_init == 0)
   continue;
  fprintf(fp, "extern int %s(int);\n", dp->d_init);
 }
 fprintf(fp, "\nstruct pseudo_init pseudo_inits[] = {\n");
 for (dp = dtab; dp != 0; dp = dp->d_next) {
  if (dp->d_type != PSEUDO_DEVICE || dp->d_init == 0)
   continue;
  count = dp->d_slave;
  if (count <= 0)
   count = 1;
  fprintf(fp, "\t{%d,\t%s},\n", count, dp->d_init);
 }
 fprintf(fp, "\t{0,\t0},\n};\n");
}
