
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*) ;
 int LoadBSPFile (char*) ;
 int LoadMapFile (int ) ;
 int WriteBSPFile (char*) ;
 int name ;
 int numDrawSurfaces ;
 char* source ;
 int sprintf (char*,char*,char*) ;

void OnlyTextures( void ) {
 char out[1024];
 int i;

 Error( "-onlytextures isn't working now..." );

 sprintf (out, "%s.bsp", source);

 LoadMapFile (name);

 LoadBSPFile (out);


 for ( i = 0 ; i < numDrawSurfaces ; i++ ) {
 }

 WriteBSPFile (out);
}
