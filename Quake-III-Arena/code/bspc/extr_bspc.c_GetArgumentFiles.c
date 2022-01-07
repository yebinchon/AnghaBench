
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; } ;
typedef TYPE_1__ quakefile_t ;


 TYPE_1__* FindQuakeFiles (char*) ;
 int strcpy (char*,char*) ;
 int strlen (char*) ;

quakefile_t *GetArgumentFiles(int argc, char *argv[], int *i, char *ext)
{
 quakefile_t *qfiles, *lastqf, *qf;
 int j;
 char buf[1024];

 qfiles = ((void*)0);
 lastqf = ((void*)0);
 for (; (*i)+1 < argc && argv[(*i)+1][0] != '-'; (*i)++)
 {
  strcpy(buf, argv[(*i)+1]);
  for (j = strlen(buf)-1; j >= strlen(buf)-4; j--)
   if (buf[j] == '.') break;
  if (j >= strlen(buf)-4)
   strcpy(&buf[j+1], ext);
  qf = FindQuakeFiles(buf);
  if (!qf) continue;
  if (lastqf) lastqf->next = qf;
  else qfiles = qf;
  lastqf = qf;
  while(lastqf->next) lastqf = lastqf->next;
 }
 return qfiles;
}
