
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned long context; int subtype; int type; int first; struct TYPE_8__* next; } ;
typedef TYPE_2__ bot_matchtemplate_t ;
struct TYPE_9__ {char* string; int subtype; int type; TYPE_1__* variables; } ;
typedef TYPE_3__ bot_match_t ;
struct TYPE_7__ {int offset; } ;


 int MAX_MATCHVARIABLES ;
 int MAX_MESSAGE_SIZE ;
 scalar_t__ StringsMatch (int ,TYPE_3__*) ;
 TYPE_2__* matchtemplates ;
 int qfalse ;
 int qtrue ;
 int strlen (char*) ;
 int strncpy (char*,char*,int ) ;

int BotFindMatch(char *str, bot_match_t *match, unsigned long int context)
{
 int i;
 bot_matchtemplate_t *ms;

 strncpy(match->string, str, MAX_MESSAGE_SIZE);

 while(strlen(match->string) &&
   match->string[strlen(match->string)-1] == '\n')
 {
  match->string[strlen(match->string)-1] = '\0';
 }

 for (ms = matchtemplates; ms; ms = ms->next)
 {
  if (!(ms->context & context)) continue;

  for (i = 0; i < MAX_MATCHVARIABLES; i++) match->variables[i].offset = -1;

  if (StringsMatch(ms->first, match))
  {
   match->type = ms->type;
   match->subtype = ms->subtype;
   return qtrue;
  }
 }
 return qfalse;
}
