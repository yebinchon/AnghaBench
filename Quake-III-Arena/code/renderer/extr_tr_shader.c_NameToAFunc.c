
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Printf ) (int ,char*,char const*,int ) ;} ;
struct TYPE_3__ {int name; } ;


 int GLS_ATEST_GE_80 ;
 int GLS_ATEST_GT_0 ;
 int GLS_ATEST_LT_80 ;
 int PRINT_WARNING ;
 int Q_stricmp (char const*,char*) ;
 TYPE_2__ ri ;
 TYPE_1__ shader ;
 int stub1 (int ,char*,char const*,int ) ;

__attribute__((used)) static unsigned NameToAFunc( const char *funcname )
{
 if ( !Q_stricmp( funcname, "GT0" ) )
 {
  return GLS_ATEST_GT_0;
 }
 else if ( !Q_stricmp( funcname, "LT128" ) )
 {
  return GLS_ATEST_LT_80;
 }
 else if ( !Q_stricmp( funcname, "GE128" ) )
 {
  return GLS_ATEST_GE_80;
 }

 ri.Printf( PRINT_WARNING, "WARNING: invalid alphaFunc name '%s' in shader '%s'\n", funcname, shader.name );
 return 0;
}
