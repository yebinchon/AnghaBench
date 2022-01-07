
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 scalar_t__ PC_ReadToken (int *,TYPE_1__*) ;
 int qfalse ;
 int qtrue ;
 int strcmp (int ,char*) ;

int PC_SkipUntilString(source_t *source, char *string)
{
 token_t token;

 while(PC_ReadToken(source, &token))
 {
  if (!strcmp(token.string, string)) return qtrue;
 }
 return qfalse;
}
