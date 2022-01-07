
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* variables; int * string; } ;
typedef TYPE_2__ bot_match_t ;
struct TYPE_7__ {int (* Print ) (int ,char*) ;} ;
struct TYPE_5__ {scalar_t__ offset; int length; } ;


 int MAX_MATCHVARIABLES ;
 int PRT_FATAL ;
 int assert (int) ;
 TYPE_3__ botimport ;
 int strcpy (char*,char*) ;
 int strncpy (char*,int *,int) ;
 int stub1 (int ,char*) ;

void BotMatchVariable(bot_match_t *match, int variable, char *buf, int size)
{
 if (variable < 0 || variable >= MAX_MATCHVARIABLES)
 {
  botimport.Print(PRT_FATAL, "BotMatchVariable: variable out of range\n");
  strcpy(buf, "");
  return;
 }

 if (match->variables[variable].offset >= 0)
 {
  if (match->variables[variable].length < size)
   size = match->variables[variable].length+1;
  assert( match->variables[variable].offset >= 0 );
  strncpy(buf, &match->string[ (int) match->variables[variable].offset], size-1);
  buf[size-1] = '\0';
 }
 else
 {
  strcpy(buf, "");
 }
 return;
}
