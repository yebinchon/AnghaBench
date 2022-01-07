
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ qboolean ;
typedef float byte ;
struct TYPE_12__ {int maxTextureSize; scalar_t__ textureCompression; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {int integer; } ;
struct TYPE_9__ {scalar_t__ integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {unsigned int* (* Hunk_AllocateTempMemory ) (int) ;int (* Hunk_FreeTempMemory ) (unsigned int*) ;} ;
typedef int GLenum ;


 int Com_Memcpy (unsigned int*,unsigned int*,int) ;
 int GL_CheckErrors () ;
 int GL_LINEAR ;
 int GL_RGB ;
 int GL_RGB4_S3TC ;
 int GL_RGB5 ;
 int GL_RGB8 ;
 int GL_RGBA ;
 int GL_RGBA4 ;
 int GL_RGBA8 ;
 int GL_TEXTURE_2D ;
 int GL_TEXTURE_MAG_FILTER ;
 int GL_TEXTURE_MIN_FILTER ;
 int GL_UNSIGNED_BYTE ;
 int R_BlendOverTexture (float*,int,int ) ;
 int R_LightScaleTexture (unsigned int*,int,int,int) ;
 int R_MipMap (float*,int,int) ;
 int ResampleTexture (unsigned int*,int,int,unsigned int*,int,int) ;
 scalar_t__ TC_S3TC ;
 TYPE_6__ glConfig ;
 int gl_filter_max ;
 int gl_filter_min ;
 int * mipBlendColors ;
 int qglTexImage2D (int ,int,int,int,int,int ,int ,int ,unsigned int*) ;
 int qglTexParameterf (int ,int ,int ) ;
 TYPE_5__* r_colorMipLevels ;
 TYPE_4__* r_picmip ;
 TYPE_3__* r_roundImagesDown ;
 TYPE_2__* r_texturebits ;
 TYPE_1__ ri ;
 unsigned int* stub1 (int) ;
 unsigned int* stub2 (int) ;
 int stub3 (unsigned int*) ;
 int stub4 (unsigned int*) ;

__attribute__((used)) static void Upload32( unsigned *data,
        int width, int height,
        qboolean mipmap,
        qboolean picmip,
       qboolean lightMap,
        int *format,
        int *pUploadWidth, int *pUploadHeight )
{
 int samples;
 unsigned *scaledBuffer = ((void*)0);
 unsigned *resampledBuffer = ((void*)0);
 int scaled_width, scaled_height;
 int i, c;
 byte *scan;
 GLenum internalFormat = GL_RGB;
 float rMax = 0, gMax = 0, bMax = 0;




 for (scaled_width = 1 ; scaled_width < width ; scaled_width<<=1)
  ;
 for (scaled_height = 1 ; scaled_height < height ; scaled_height<<=1)
  ;
 if ( r_roundImagesDown->integer && scaled_width > width )
  scaled_width >>= 1;
 if ( r_roundImagesDown->integer && scaled_height > height )
  scaled_height >>= 1;

 if ( scaled_width != width || scaled_height != height ) {
  resampledBuffer = ri.Hunk_AllocateTempMemory( scaled_width * scaled_height * 4 );
  ResampleTexture (data, width, height, resampledBuffer, scaled_width, scaled_height);
  data = resampledBuffer;
  width = scaled_width;
  height = scaled_height;
 }




 if ( picmip ) {
  scaled_width >>= r_picmip->integer;
  scaled_height >>= r_picmip->integer;
 }




 if (scaled_width < 1) {
  scaled_width = 1;
 }
 if (scaled_height < 1) {
  scaled_height = 1;
 }






 while ( scaled_width > glConfig.maxTextureSize
  || scaled_height > glConfig.maxTextureSize ) {
  scaled_width >>= 1;
  scaled_height >>= 1;
 }

 scaledBuffer = ri.Hunk_AllocateTempMemory( sizeof( unsigned ) * scaled_width * scaled_height );





 c = width*height;
 scan = ((byte *)data);
 samples = 3;
 if (!lightMap) {
  for ( i = 0; i < c; i++ )
  {
   if ( scan[i*4+0] > rMax )
   {
    rMax = scan[i*4+0];
   }
   if ( scan[i*4+1] > gMax )
   {
    gMax = scan[i*4+1];
   }
   if ( scan[i*4+2] > bMax )
   {
    bMax = scan[i*4+2];
   }
   if ( scan[i*4 + 3] != 255 )
   {
    samples = 4;
    break;
   }
  }

  if ( samples == 3 )
  {
   if ( glConfig.textureCompression == TC_S3TC )
   {
    internalFormat = GL_RGB4_S3TC;
   }
   else if ( r_texturebits->integer == 16 )
   {
    internalFormat = GL_RGB5;
   }
   else if ( r_texturebits->integer == 32 )
   {
    internalFormat = GL_RGB8;
   }
   else
   {
    internalFormat = 3;
   }
  }
  else if ( samples == 4 )
  {
   if ( r_texturebits->integer == 16 )
   {
    internalFormat = GL_RGBA4;
   }
   else if ( r_texturebits->integer == 32 )
   {
    internalFormat = GL_RGBA8;
   }
   else
   {
    internalFormat = 4;
   }
  }
 } else {
  internalFormat = 3;
 }

 if ( ( scaled_width == width ) &&
  ( scaled_height == height ) ) {
  if (!mipmap)
  {
   qglTexImage2D (GL_TEXTURE_2D, 0, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, data);
   *pUploadWidth = scaled_width;
   *pUploadHeight = scaled_height;
   *format = internalFormat;

   goto done;
  }
  Com_Memcpy (scaledBuffer, data, width*height*4);
 }
 else
 {

  while ( width > scaled_width || height > scaled_height ) {
   R_MipMap( (byte *)data, width, height );
   width >>= 1;
   height >>= 1;
   if ( width < 1 ) {
    width = 1;
   }
   if ( height < 1 ) {
    height = 1;
   }
  }
  Com_Memcpy( scaledBuffer, data, width * height * 4 );
 }

 R_LightScaleTexture (scaledBuffer, scaled_width, scaled_height, !mipmap );

 *pUploadWidth = scaled_width;
 *pUploadHeight = scaled_height;
 *format = internalFormat;

 qglTexImage2D (GL_TEXTURE_2D, 0, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, scaledBuffer );

 if (mipmap)
 {
  int miplevel;

  miplevel = 0;
  while (scaled_width > 1 || scaled_height > 1)
  {
   R_MipMap( (byte *)scaledBuffer, scaled_width, scaled_height );
   scaled_width >>= 1;
   scaled_height >>= 1;
   if (scaled_width < 1)
    scaled_width = 1;
   if (scaled_height < 1)
    scaled_height = 1;
   miplevel++;

   if ( r_colorMipLevels->integer ) {
    R_BlendOverTexture( (byte *)scaledBuffer, scaled_width * scaled_height, mipBlendColors[miplevel] );
   }

   qglTexImage2D (GL_TEXTURE_2D, miplevel, internalFormat, scaled_width, scaled_height, 0, GL_RGBA, GL_UNSIGNED_BYTE, scaledBuffer );
  }
 }
done:

 if (mipmap)
 {
  qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, gl_filter_min);
  qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, gl_filter_max);
 }
 else
 {
  qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_LINEAR );
  qglTexParameterf(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_LINEAR );
 }

 GL_CheckErrors();

 if ( scaledBuffer != 0 )
  ri.Hunk_FreeTempMemory( scaledBuffer );
 if ( resampledBuffer != 0 )
  ri.Hunk_FreeTempMemory( resampledBuffer );
}
