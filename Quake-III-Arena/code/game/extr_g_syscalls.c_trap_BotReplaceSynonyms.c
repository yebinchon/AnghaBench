
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BOTLIB_AI_REPLACE_SYNONYMS ;
 int syscall (int ,char*,unsigned long) ;

void trap_BotReplaceSynonyms(char *string, unsigned long int context) {
 syscall( BOTLIB_AI_REPLACE_SYNONYMS, string, context );
}
