
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int pathname ;
struct TYPE_8__ {int (* Printf ) (int ,char*,int ) ;} ;
struct TYPE_5__ {int cloudHeight; void** innerbox; void** outerbox; } ;
struct TYPE_7__ {int isSky; TYPE_1__ sky; int name; } ;
struct TYPE_6__ {void* defaultImage; } ;


 char* COM_ParseExt (char**,int ) ;
 int Com_sprintf (char*,int,char*,char*,char*) ;
 int GL_CLAMP ;
 int GL_REPEAT ;
 int MAX_QPATH ;
 int PRINT_WARNING ;
 void* R_FindImageFile (char*,int ,int ,int ) ;
 int R_InitSkyTexCoords (int) ;
 int atof (char*) ;
 int qfalse ;
 int qtrue ;
 TYPE_4__ ri ;
 TYPE_3__ shader ;
 scalar_t__ strcmp (char*,char*) ;
 int stub1 (int ,char*,int ) ;
 int stub2 (int ,char*,int ) ;
 int stub3 (int ,char*,int ) ;
 TYPE_2__ tr ;

__attribute__((used)) static void ParseSkyParms( char **text ) {
 char *token;
 static char *suf[6] = {"rt", "bk", "lf", "ft", "up", "dn"};
 char pathname[MAX_QPATH];
 int i;


 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 ) {
  ri.Printf( PRINT_WARNING, "WARNING: 'skyParms' missing parameter in shader '%s'\n", shader.name );
  return;
 }
 if ( strcmp( token, "-" ) ) {
  for (i=0 ; i<6 ; i++) {
   Com_sprintf( pathname, sizeof(pathname), "%s_%s.tga"
    , token, suf[i] );
   shader.sky.outerbox[i] = R_FindImageFile( ( char * ) pathname, qtrue, qtrue, GL_CLAMP );
   if ( !shader.sky.outerbox[i] ) {
    shader.sky.outerbox[i] = tr.defaultImage;
   }
  }
 }


 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 ) {
  ri.Printf( PRINT_WARNING, "WARNING: 'skyParms' missing parameter in shader '%s'\n", shader.name );
  return;
 }
 shader.sky.cloudHeight = atof( token );
 if ( !shader.sky.cloudHeight ) {
  shader.sky.cloudHeight = 512;
 }
 R_InitSkyTexCoords( shader.sky.cloudHeight );



 token = COM_ParseExt( text, qfalse );
 if ( token[0] == 0 ) {
  ri.Printf( PRINT_WARNING, "WARNING: 'skyParms' missing parameter in shader '%s'\n", shader.name );
  return;
 }
 if ( strcmp( token, "-" ) ) {
  for (i=0 ; i<6 ; i++) {
   Com_sprintf( pathname, sizeof(pathname), "%s_%s.tga"
    , token, suf[i] );
   shader.sky.innerbox[i] = R_FindImageFile( ( char * ) pathname, qtrue, qtrue, GL_REPEAT );
   if ( !shader.sky.innerbox[i] ) {
    shader.sky.innerbox[i] = tr.defaultImage;
   }
  }
 }

 shader.isSky = qtrue;
}
