
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int text ;
typedef int qboolean ;
typedef int fileHandle_t ;
struct TYPE_4__ {int firstFrame; int frameLerp; int initialLerp; void* loopFrames; void* numFrames; } ;
typedef TYPE_1__ animation_t ;


 char* COM_Parse (char**) ;
 int Com_Printf (char*,char const*,...) ;
 int FS_READ ;
 int LEGS_WALKCR ;
 int MAX_ANIMATIONS ;
 int Q_stricmp (char*,char*) ;
 size_t TORSO_GESTURE ;
 float atof (char*) ;
 void* atoi (char*) ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int trap_FS_FCloseFile (int ) ;
 int trap_FS_FOpenFile (char const*,int *,int ) ;
 int trap_FS_Read (char*,int,int ) ;

__attribute__((used)) static qboolean UI_ParseAnimationFile( const char *filename, animation_t *animations ) {
 char *text_p, *prev;
 int len;
 int i;
 char *token;
 float fps;
 int skip;
 char text[20000];
 fileHandle_t f;

 memset( animations, 0, sizeof( animation_t ) * MAX_ANIMATIONS );


 len = trap_FS_FOpenFile( filename, &f, FS_READ );
 if ( len <= 0 ) {
  return qfalse;
 }
 if ( len >= ( sizeof( text ) - 1 ) ) {
  Com_Printf( "File %s too long\n", filename );
  return qfalse;
 }
 trap_FS_Read( text, len, f );
 text[len] = 0;
 trap_FS_FCloseFile( f );


 text_p = text;
 skip = 0;


 while ( 1 ) {
  prev = text_p;
  token = COM_Parse( &text_p );
  if ( !token ) {
   break;
  }
  if ( !Q_stricmp( token, "footsteps" ) ) {
   token = COM_Parse( &text_p );
   if ( !token ) {
    break;
   }
   continue;
  } else if ( !Q_stricmp( token, "headoffset" ) ) {
   for ( i = 0 ; i < 3 ; i++ ) {
    token = COM_Parse( &text_p );
    if ( !token ) {
     break;
    }
   }
   continue;
  } else if ( !Q_stricmp( token, "sex" ) ) {
   token = COM_Parse( &text_p );
   if ( !token ) {
    break;
   }
   continue;
  }


  if ( token[0] >= '0' && token[0] <= '9' ) {
   text_p = prev;
   break;
  }

  Com_Printf( "unknown token '%s' is %s\n", token, filename );
 }


 for ( i = 0 ; i < MAX_ANIMATIONS ; i++ ) {

  token = COM_Parse( &text_p );
  if ( !token ) {
   break;
  }
  animations[i].firstFrame = atoi( token );

  if ( i == LEGS_WALKCR ) {
   skip = animations[LEGS_WALKCR].firstFrame - animations[TORSO_GESTURE].firstFrame;
  }
  if ( i >= LEGS_WALKCR ) {
   animations[i].firstFrame -= skip;
  }

  token = COM_Parse( &text_p );
  if ( !token ) {
   break;
  }
  animations[i].numFrames = atoi( token );

  token = COM_Parse( &text_p );
  if ( !token ) {
   break;
  }
  animations[i].loopFrames = atoi( token );

  token = COM_Parse( &text_p );
  if ( !token ) {
   break;
  }
  fps = atof( token );
  if ( fps == 0 ) {
   fps = 1;
  }
  animations[i].frameLerp = 1000 / fps;
  animations[i].initialLerp = 1000 / fps;
 }

 if ( i != MAX_ANIMATIONS ) {
  Com_Printf( "Error parsing animation file: %s", filename );
  return qfalse;
 }

 return qtrue;
}
