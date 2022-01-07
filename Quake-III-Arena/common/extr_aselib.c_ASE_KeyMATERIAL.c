
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASE_KeyMAP_DIFFUSE ;
 int ASE_ParseBracedBlock (int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void ASE_KeyMATERIAL( const char *token )
{
 if ( !strcmp( token, "*MAP_DIFFUSE" ) )
 {
  ASE_ParseBracedBlock( ASE_KeyMAP_DIFFUSE );
 }
 else
 {
 }
}
