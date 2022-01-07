
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int* lightGridSize; int entityString; int entityParsePoint; } ;
typedef TYPE_1__ world_t ;
typedef int value ;
struct TYPE_8__ {scalar_t__ filelen; scalar_t__ fileofs; } ;
typedef TYPE_2__ lump_t ;
typedef int keyname ;
struct TYPE_10__ {scalar_t__ integer; } ;
struct TYPE_9__ {int (* Printf ) (int ,char*,char*) ;int (* Hunk_Alloc ) (scalar_t__,int ) ;} ;


 char* COM_ParseExt (char**,int ) ;
 int MAX_TOKEN_CHARS ;
 int PRINT_WARNING ;
 int Q_stricmp (char*,char*) ;
 int Q_strncmp (char*,char*,int ) ;
 int Q_strncpyz (char*,char*,int) ;
 int R_RemapShader (char*,char*,char*) ;
 scalar_t__ fileBase ;
 int h_low ;
 int qtrue ;
 TYPE_5__* r_vertexLight ;
 TYPE_4__ ri ;
 TYPE_1__ s_worldData ;
 int sscanf (char*,char*,int*,int*,int*) ;
 char* strchr (char*,char) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;
 int stub1 (scalar_t__,int ) ;
 int stub2 (int ,char*,char*) ;
 int stub3 (int ,char*,char*) ;

void R_LoadEntities( lump_t *l ) {
 char *p, *token, *s;
 char keyname[MAX_TOKEN_CHARS];
 char value[MAX_TOKEN_CHARS];
 world_t *w;

 w = &s_worldData;
 w->lightGridSize[0] = 64;
 w->lightGridSize[1] = 64;
 w->lightGridSize[2] = 128;

 p = (char *)(fileBase + l->fileofs);


 w->entityString = ri.Hunk_Alloc( l->filelen + 1, h_low );
 strcpy( w->entityString, p );
 w->entityParsePoint = w->entityString;

 token = COM_ParseExt( &p, qtrue );
 if (!*token || *token != '{') {
  return;
 }


 while ( 1 ) {

  token = COM_ParseExt( &p, qtrue );

  if ( !*token || *token == '}' ) {
   break;
  }
  Q_strncpyz(keyname, token, sizeof(keyname));


  token = COM_ParseExt( &p, qtrue );

  if ( !*token || *token == '}' ) {
   break;
  }
  Q_strncpyz(value, token, sizeof(value));


  s = "vertexremapshader";
  if (!Q_strncmp(keyname, s, strlen(s)) ) {
   s = strchr(value, ';');
   if (!s) {
    ri.Printf( PRINT_WARNING, "WARNING: no semi colon in vertexshaderremap '%s'\n", value );
    break;
   }
   *s++ = 0;
   if (r_vertexLight->integer) {
    R_RemapShader(value, s, "0");
   }
   continue;
  }

  s = "remapshader";
  if (!Q_strncmp(keyname, s, strlen(s)) ) {
   s = strchr(value, ';');
   if (!s) {
    ri.Printf( PRINT_WARNING, "WARNING: no semi colon in shaderremap '%s'\n", value );
    break;
   }
   *s++ = 0;
   R_RemapShader(value, s, "0");
   continue;
  }

  if (!Q_stricmp(keyname, "gridsize")) {
   sscanf(value, "%f %f %f", &w->lightGridSize[0], &w->lightGridSize[1], &w->lightGridSize[2] );
   continue;
  }
 }
}
