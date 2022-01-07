
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int LoadBMP (char const*,int **,int*,int*) ;
 int LoadJPG (char const*,int **,int*,int*) ;
 int LoadPCX32 (char const*,int **,int*,int*) ;
 int LoadTGA (char const*,int **,int*,int*) ;
 int MAX_QPATH ;
 int Q_stricmp (char const*,char*) ;
 int strcpy (char*,char const*) ;
 int strlen (char const*) ;

void R_LoadImage( const char *name, byte **pic, int *width, int *height ) {
 int len;

 *pic = ((void*)0);
 *width = 0;
 *height = 0;

 len = strlen(name);
 if (len<5) {
  return;
 }

 if ( !Q_stricmp( name+len-4, ".tga" ) ) {
   LoadTGA( name, pic, width, height );
    if (!*pic) {
    char altname[MAX_QPATH];
      strcpy( altname, name );
      len = strlen( altname );
      altname[len-3] = 'j';
      altname[len-2] = 'p';
      altname[len-1] = 'g';
   LoadJPG( altname, pic, width, height );
  }
  } else if ( !Q_stricmp(name+len-4, ".pcx") ) {
    LoadPCX32( name, pic, width, height );
 } else if ( !Q_stricmp( name+len-4, ".bmp" ) ) {
  LoadBMP( name, pic, width, height );
 } else if ( !Q_stricmp( name+len-4, ".jpg" ) ) {
  LoadJPG( name, pic, width, height );
 }
}
