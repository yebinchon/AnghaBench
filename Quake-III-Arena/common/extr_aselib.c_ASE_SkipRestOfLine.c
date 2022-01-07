
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASE_GetToken (int ) ;
 int qtrue ;

__attribute__((used)) static void ASE_SkipRestOfLine( void )
{
 ASE_GetToken( qtrue );
}
