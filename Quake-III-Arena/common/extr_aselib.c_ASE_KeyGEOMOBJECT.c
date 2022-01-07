
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {size_t currentObject; TYPE_2__* objects; scalar_t__ grabAnims; } ;
struct TYPE_4__ {scalar_t__ currentFrame; scalar_t__ numFrames; } ;
struct TYPE_5__ {char* name; scalar_t__ numAnimations; TYPE_1__ anim; int materialRef; } ;


 int ASE_GetToken (int ) ;
 int ASE_KeyMESH ;
 int ASE_KeyMESH_ANIMATION ;
 int ASE_ParseBracedBlock (int ) ;
 int ASE_SkipEnclosingBraces () ;
 int ASE_SkipRestOfLine () ;
 int Error (char*) ;
 scalar_t__ MAX_ASE_ANIMATION_FRAMES ;
 int VERBOSE (char*) ;
 TYPE_3__ ase ;
 int atoi (scalar_t__) ;
 int qfalse ;
 int qtrue ;
 scalar_t__ s_token ;
 scalar_t__* strchr (char*,char) ;
 int strcmp (char const*,char*) ;
 int strcpy (char*,scalar_t__) ;
 scalar_t__* strrchr (char*,char) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void ASE_KeyGEOMOBJECT( const char *token )
{
 if ( !strcmp( token, "*NODE_NAME" ) )
 {
  char *name = ase.objects[ase.currentObject].name;

  ASE_GetToken( qtrue );
  VERBOSE( ( " %s\n", s_token ) );
  strcpy( ase.objects[ase.currentObject].name, s_token + 1 );
  if ( strchr( ase.objects[ase.currentObject].name, '"' ) )
   *strchr( ase.objects[ase.currentObject].name, '"' ) = 0;

  if ( strstr( name, "tag" ) == name )
  {
   while ( strchr( name, '_' ) != strrchr( name, '_' ) )
   {
    *strrchr( name, '_' ) = 0;
   }
   while ( strrchr( name, ' ' ) )
   {
    *strrchr( name, ' ' ) = 0;
   }
  }
 }
 else if ( !strcmp( token, "*NODE_PARENT" ) )
 {
  ASE_SkipRestOfLine();
 }

 else if ( !strcmp( token, "*NODE_TM" ) ||
        !strcmp( token, "*TM_ANIMATION" ) )
 {
  ASE_ParseBracedBlock( 0 );
 }

 else if ( !strcmp( token, "*MESH" ) && !ase.grabAnims )
 {
  ASE_ParseBracedBlock( ASE_KeyMESH );
  if ( ++ase.objects[ase.currentObject].anim.currentFrame == MAX_ASE_ANIMATION_FRAMES )
  {
   Error( "Too many animation frames" );
  }
  ase.objects[ase.currentObject].anim.numFrames = ase.objects[ase.currentObject].anim.currentFrame;
  ase.objects[ase.currentObject].numAnimations++;
 }

 else if ( !strcmp( token, "*MATERIAL_REF" ) )
 {
  ASE_GetToken( qfalse );

  ase.objects[ase.currentObject].materialRef = atoi( s_token );
 }

 else if ( !strcmp( token, "*MESH_ANIMATION" ) )
 {
  if ( ase.grabAnims )
  {
   VERBOSE( ( "..found MESH_ANIMATION\n" ) );

   if ( ase.objects[ase.currentObject].numAnimations )
   {
    Error( "Multiple MESH_ANIMATIONS within a single GEOM_OBJECT" );
   }
   ASE_ParseBracedBlock( ASE_KeyMESH_ANIMATION );
   ase.objects[ase.currentObject].anim.numFrames = ase.objects[ase.currentObject].anim.currentFrame;
   ase.objects[ase.currentObject].numAnimations++;
  }
  else
  {
   ASE_SkipEnclosingBraces();
  }
 }

 else if ( !strcmp( token, "*PROP_MOTIONBLUR" ) ||
        !strcmp( token, "*PROP_CASTSHADOW" ) ||
     !strcmp( token, "*PROP_RECVSHADOW" ) )
 {
  ASE_SkipRestOfLine();
 }
}
