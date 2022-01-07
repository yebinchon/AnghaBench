
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int surfName ;
struct TYPE_8__ {char* name; int numSurfaces; void* shader; struct TYPE_8__** surfaces; } ;
typedef TYPE_1__ skin_t ;
typedef TYPE_1__ skinSurface_t ;
typedef size_t qhandle_t ;
struct TYPE_10__ {int (* FS_FreeFile ) (char*) ;TYPE_1__* (* Hunk_Alloc ) (int,int ) ;int (* FS_ReadFile ) (char const*,void**) ;int (* Printf ) (int ,char*,char const*) ;} ;
struct TYPE_9__ {size_t numSkins; TYPE_1__** skins; } ;


 int Com_Printf (char*) ;
 char* CommaParse (char**) ;
 int LIGHTMAP_NONE ;
 int MAX_QPATH ;
 size_t MAX_SKINS ;
 int PRINT_WARNING ;
 int Q_stricmp (char*,char const*) ;
 int Q_strlwr (char*) ;
 int Q_strncpyz (char*,char const*,int) ;
 void* R_FindShader (char const*,int ,int ) ;
 int R_SyncRenderThread () ;
 int h_low ;
 int qtrue ;
 TYPE_7__ ri ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strstr (char*,char*) ;
 int stub1 (int ,char*,char const*) ;
 TYPE_1__* stub2 (int,int ) ;
 TYPE_1__* stub3 (int,int ) ;
 int stub4 (char const*,void**) ;
 TYPE_1__* stub5 (int,int ) ;
 int stub6 (char*) ;
 TYPE_3__ tr ;

qhandle_t RE_RegisterSkin( const char *name ) {
 qhandle_t hSkin;
 skin_t *skin;
 skinSurface_t *surf;
 char *text, *text_p;
 char *token;
 char surfName[MAX_QPATH];

 if ( !name || !name[0] ) {
  Com_Printf( "Empty name passed to RE_RegisterSkin\n" );
  return 0;
 }

 if ( strlen( name ) >= MAX_QPATH ) {
  Com_Printf( "Skin name exceeds MAX_QPATH\n" );
  return 0;
 }



 for ( hSkin = 1; hSkin < tr.numSkins ; hSkin++ ) {
  skin = tr.skins[hSkin];
  if ( !Q_stricmp( skin->name, name ) ) {
   if( skin->numSurfaces == 0 ) {
    return 0;
   }
   return hSkin;
  }
 }


 if ( tr.numSkins == MAX_SKINS ) {
  ri.Printf( PRINT_WARNING, "WARNING: RE_RegisterSkin( '%s' ) MAX_SKINS hit\n", name );
  return 0;
 }
 tr.numSkins++;
 skin = ri.Hunk_Alloc( sizeof( skin_t ), h_low );
 tr.skins[hSkin] = skin;
 Q_strncpyz( skin->name, name, sizeof( skin->name ) );
 skin->numSurfaces = 0;


 R_SyncRenderThread();


 if ( strcmp( name + strlen( name ) - 5, ".skin" ) ) {
  skin->numSurfaces = 1;
  skin->surfaces[0] = ri.Hunk_Alloc( sizeof(skin->surfaces[0]), h_low );
  skin->surfaces[0]->shader = R_FindShader( name, LIGHTMAP_NONE, qtrue );
  return hSkin;
 }


    ri.FS_ReadFile( name, (void **)&text );
 if ( !text ) {
  return 0;
 }

 text_p = text;
 while ( text_p && *text_p ) {

  token = CommaParse( &text_p );
  Q_strncpyz( surfName, token, sizeof( surfName ) );

  if ( !token[0] ) {
   break;
  }

  Q_strlwr( surfName );

  if ( *text_p == ',' ) {
   text_p++;
  }

  if ( strstr( token, "tag_" ) ) {
   continue;
  }


  token = CommaParse( &text_p );

  surf = skin->surfaces[ skin->numSurfaces ] = ri.Hunk_Alloc( sizeof( *skin->surfaces[0] ), h_low );
  Q_strncpyz( surf->name, surfName, sizeof( surf->name ) );
  surf->shader = R_FindShader( token, LIGHTMAP_NONE, qtrue );
  skin->numSurfaces++;
 }

 ri.FS_FreeFile( text );



 if ( skin->numSurfaces == 0 ) {
  return 0;
 }

 return hSkin;
}
