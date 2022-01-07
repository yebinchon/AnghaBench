
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int source_t ;


 int SourceError (int *,char*) ;
 int qfalse ;

int PC_Directive_line(source_t *source)
{
 SourceError(source, "#line directive not supported");
 return qfalse;
}
