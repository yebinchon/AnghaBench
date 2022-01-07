
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* string; struct TYPE_4__* next; } ;
typedef TYPE_1__ bot_randomstring_t ;
struct TYPE_5__ {char* string; TYPE_1__* firstrandomstring; struct TYPE_5__* next; } ;
typedef TYPE_2__ bot_randomlist_t ;
typedef int FILE ;


 int * Log_FilePointer () ;
 int fprintf (int *,char*,...) ;

void BotDumpRandomStringList(bot_randomlist_t *randomlist)
{
 FILE *fp;
 bot_randomlist_t *random;
 bot_randomstring_t *rs;

 fp = Log_FilePointer();
 if (!fp) return;
 for (random = randomlist; random; random = random->next)
 {
  fprintf(fp, "%s = {", random->string);
  for (rs = random->firstrandomstring; rs; rs = rs->next)
  {
   fprintf(fp, "\"%s\"", rs->string);
   if (rs->next) fprintf(fp, ", ");
   else fprintf(fp, "}\n");
  }
 }
}
