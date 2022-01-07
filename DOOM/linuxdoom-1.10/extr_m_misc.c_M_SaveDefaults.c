
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int defaultvalue; int* location; char* name; } ;
typedef int FILE ;


 int defaultfile ;
 TYPE_1__* defaults ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,char*,...) ;
 int numdefaults ;

void M_SaveDefaults (void)
{
    int i;
    int v;
    FILE* f;

    f = fopen (defaultfile, "w");
    if (!f)
 return;

    for (i=0 ; i<numdefaults ; i++)
    {
 if (defaults[i].defaultvalue > -0xfff
     && defaults[i].defaultvalue < 0xfff)
 {
     v = *defaults[i].location;
     fprintf (f,"%s\t\t%i\n",defaults[i].name,v);
 } else {
     fprintf (f,"%s\t\t\"%s\"\n",defaults[i].name,
       * (char **) (defaults[i].location));
 }
    }

    fclose (f);
}
