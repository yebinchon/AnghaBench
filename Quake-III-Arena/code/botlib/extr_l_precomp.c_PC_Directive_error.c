
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;


 int PC_ReadSourceToken (int *,TYPE_1__*) ;
 int SourceError (int *,char*,int ) ;
 int qfalse ;
 int strcpy (int ,char*) ;

int PC_Directive_error(source_t *source)
{
 token_t token;

 strcpy(token.string, "");
 PC_ReadSourceToken(source, &token);
 SourceError(source, "#error directive: %s", token.string);
 return qfalse;
}
