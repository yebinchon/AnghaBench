
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int model ;


 int Com_sprintf (char*,int,char*,char*,...) ;
 int MAX_QPATH ;
 scalar_t__ Q_stricmp (char*,char*) ;
 int Q_strncpyz (char*,char const*,int) ;
 char* Q_strrchr (char*,char) ;
 int trap_R_RegisterShaderNoMip (char*) ;

__attribute__((used)) static void ServerPlayerIcon( const char *modelAndSkin, char *iconName, int iconNameMaxSize ) {
 char *skin;
 char model[MAX_QPATH];

 Q_strncpyz( model, modelAndSkin, sizeof(model));
 skin = Q_strrchr( model, '/' );
 if ( skin ) {
  *skin++ = '\0';
 }
 else {
  skin = "default";
 }

 Com_sprintf(iconName, iconNameMaxSize, "models/players/%s/icon_%s.tga", model, skin );

 if( !trap_R_RegisterShaderNoMip( iconName ) && Q_stricmp( skin, "default" ) != 0 ) {
  Com_sprintf(iconName, iconNameMaxSize, "models/players/%s/icon_default.tga", model );
 }
}
