
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int token_t ;
typedef int source_t ;


 int PC_ReadToken (int *,int *) ;
 int SourceError (int *,char*) ;
 int qfalse ;
 int qtrue ;

int PC_ExpectAnyToken(source_t *source, token_t *token)
{
 if (!PC_ReadToken(source, token))
 {
  SourceError(source, "couldn't read expected token");
  return qfalse;
 }
 else
 {
  return qtrue;
 }
}
