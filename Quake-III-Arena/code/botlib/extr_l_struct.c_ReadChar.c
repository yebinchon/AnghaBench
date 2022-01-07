
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; char* string; } ;
typedef TYPE_1__ token_t ;
typedef int source_t ;
typedef int qboolean ;
typedef int fielddef_t ;


 int PC_ExpectAnyToken (int *,TYPE_1__*) ;
 int PC_UnreadLastToken (int *) ;
 int ReadNumber (int *,int *,void*) ;
 int StripSingleQuotes (char*) ;
 scalar_t__ TT_LITERAL ;

qboolean ReadChar(source_t *source, fielddef_t *fd, void *p)
{
 token_t token;

 if (!PC_ExpectAnyToken(source, &token)) return 0;


 if (token.type == TT_LITERAL)
 {
  StripSingleQuotes(token.string);
  *(char *) p = token.string[0];
 }
 else
 {
  PC_UnreadLastToken(source);
  if (!ReadNumber(source, fd, p)) return 0;
 }
 return 1;
}
