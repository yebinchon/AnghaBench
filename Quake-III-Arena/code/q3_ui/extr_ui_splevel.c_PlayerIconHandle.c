
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qhandle_t ;
typedef int iconName ;


 int MAX_QPATH ;
 int PlayerIcon (char const*,char*,int) ;
 int trap_R_RegisterShaderNoMip (char*) ;

__attribute__((used)) static qhandle_t PlayerIconHandle( const char *modelAndSkin ) {
 char iconName[MAX_QPATH];

 PlayerIcon( modelAndSkin, iconName, sizeof(iconName) );
 return trap_R_RegisterShaderNoMip( iconName );
}
