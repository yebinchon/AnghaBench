
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pidfile; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (int ,char*) ;
 int fprintf (int *,char*,int) ;
 scalar_t__ getpid () ;
 TYPE_1__ server ;

void createPidFile(void) {

    FILE *fp = fopen(server.pidfile,"w");
    if (fp) {
        fprintf(fp,"%d\n",(int)getpid());
        fclose(fp);
    }
}
