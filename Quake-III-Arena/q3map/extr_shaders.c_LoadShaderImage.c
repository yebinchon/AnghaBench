
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* color; int width; int height; float* pixels; int averageColor; scalar_t__* shader; scalar_t__* editorimage; scalar_t__* lightimage; } ;
typedef TYPE_1__ shaderInfo_t ;
typedef scalar_t__ qboolean ;
typedef int byte ;


 int ColorNormalize (float*,int*) ;
 int DefaultExtension (char*,char*) ;
 int * LoadImageFile (char*,scalar_t__*) ;
 int LoadJPGBuff (int *,float**,int*,int*) ;
 int LoadTGABuffer (int *,float**,int*,int*) ;
 int VectorClear (float*) ;
 int VectorScale (float*,double,int ) ;
 int _printf (char*,scalar_t__*) ;
 int free (int *) ;
 char* gamedir ;
 float* malloc (int) ;
 int memset (float*,int,int) ;
 scalar_t__ qtrue ;
 int sprintf (char*,char*,char*,scalar_t__*) ;

__attribute__((used)) static void LoadShaderImage( shaderInfo_t *si ) {
 char filename[1024];
 int i, count;
 float color[4];
  byte *buffer;
  qboolean bTGA = qtrue;


 if ( si->lightimage[0] ) {
  sprintf( filename, "%s%s", gamedir, si->lightimage );
  DefaultExtension( filename, ".tga" );
    buffer = LoadImageFile(filename, &bTGA);
    if ( buffer != ((void*)0)) {
      goto loadTga;
    }
  }


 if ( si->editorimage[0] ) {
  sprintf( filename, "%s%s", gamedir, si->editorimage );
  DefaultExtension( filename, ".tga" );
    buffer = LoadImageFile(filename, &bTGA);
    if ( buffer != ((void*)0)) {
      goto loadTga;
    }
  }



  sprintf( filename, "%s%s.tga", gamedir, si->shader );
  buffer = LoadImageFile(filename, &bTGA);
  if ( buffer != ((void*)0)) {
  goto loadTga;
 }

  sprintf( filename, "%s%s.TGA", gamedir, si->shader );
  buffer = LoadImageFile(filename, &bTGA);
  if ( buffer != ((void*)0)) {
  goto loadTga;
 }


 _printf("WARNING: Couldn't find image for shader %s\n", si->shader );

 si->color[0] = 1;
 si->color[1] = 1;
 si->color[2] = 1;
 si->width = 64;
 si->height = 64;
 si->pixels = malloc( si->width * si->height * 4 );
 memset ( si->pixels, 255, si->width * si->height * 4 );
 return;


loadTga:
  if ( bTGA) {
   LoadTGABuffer( buffer, &si->pixels, &si->width, &si->height );
  }
  else {



  }

  free(buffer);

 count = si->width * si->height;

 VectorClear( color );
 color[ 3 ] = 0;
 for ( i = 0 ; i < count ; i++ ) {
  color[0] += si->pixels[ i * 4 + 0 ];
  color[1] += si->pixels[ i * 4 + 1 ];
  color[2] += si->pixels[ i * 4 + 2 ];
  color[3] += si->pixels[ i * 4 + 3 ];
 }
 ColorNormalize( color, si->color );
 VectorScale( color, 1.0/count, si->averageColor );
}
