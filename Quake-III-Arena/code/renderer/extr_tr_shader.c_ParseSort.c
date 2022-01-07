
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int (* Printf ) (int ,char*,int ) ;} ;
struct TYPE_3__ {int sort; int name; } ;


 char* COM_ParseExt (char**,int ) ;
 int PRINT_WARNING ;
 int Q_stricmp (char*,char*) ;
 int SS_BANNER ;
 int SS_BLEND1 ;
 int SS_DECAL ;
 int SS_ENVIRONMENT ;
 int SS_NEAREST ;
 int SS_OPAQUE ;
 int SS_PORTAL ;
 int SS_SEE_THROUGH ;
 int SS_UNDERWATER ;
 int atof (char*) ;
 int qfalse ;
 TYPE_2__ ri ;
 TYPE_1__ shader ;
 int stub1 (int ,char*,int ) ;

void ParseSort( char **text ) {
 char *token;

 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 ) {
  ri.Printf( PRINT_WARNING, "WARNING: missing sort parameter in shader '%s'\n", shader.name );
  return;
 }

 if ( !Q_stricmp( token, "portal" ) ) {
  shader.sort = SS_PORTAL;
 } else if ( !Q_stricmp( token, "sky" ) ) {
  shader.sort = SS_ENVIRONMENT;
 } else if ( !Q_stricmp( token, "opaque" ) ) {
  shader.sort = SS_OPAQUE;
 }else if ( !Q_stricmp( token, "decal" ) ) {
  shader.sort = SS_DECAL;
 } else if ( !Q_stricmp( token, "seeThrough" ) ) {
  shader.sort = SS_SEE_THROUGH;
 } else if ( !Q_stricmp( token, "banner" ) ) {
  shader.sort = SS_BANNER;
 } else if ( !Q_stricmp( token, "additive" ) ) {
  shader.sort = SS_BLEND1;
 } else if ( !Q_stricmp( token, "nearest" ) ) {
  shader.sort = SS_NEAREST;
 } else if ( !Q_stricmp( token, "underwater" ) ) {
  shader.sort = SS_UNDERWATER;
 } else {
  shader.sort = atof( token );
 }
}
