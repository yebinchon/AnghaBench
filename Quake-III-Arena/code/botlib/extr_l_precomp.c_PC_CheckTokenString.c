
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 int PC_ReadToken (int *,TYPE_1__*) ;
 int PC_UnreadSourceToken (int *,TYPE_1__*) ;
 int qfalse ;
 int qtrue ;
 int strcmp (int ,char*) ;

int PC_CheckTokenString(source_t *source, char *string)
{
 token_t tok;

 if (!PC_ReadToken(source, &tok)) return qfalse;

 if (!strcmp(tok.string, string)) return qtrue;

 PC_UnreadSourceToken(source, &tok);
 return qfalse;
}
