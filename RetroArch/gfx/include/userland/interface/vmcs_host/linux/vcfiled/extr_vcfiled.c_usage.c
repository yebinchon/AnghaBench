
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,...) ;
 int stderr ;

__attribute__((used)) static void usage(const char *progname)
{

   fprintf(stderr,"usage: %s [-debug] [-foreground] [-root dir] [-lock prefix]\n",
           progname);
   fprintf(stderr,"  --debug       - debug to stderr rather than syslog\n");
   fprintf(stderr,"  --foreground  - do not fork, stay in foreground\n");
   fprintf(stderr,"  --root dir    - chdir to this directory first\n");
   fprintf(stderr,"  --lock prefix - prefix to append to VCFILED_LOCKFILE\n");
}
