
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int manufacturer; int version; int encoding; int bits_per_pixel; int color_planes; int data; int filler; void* palette_type; void* bytes_per_line; int palette; void* vres; void* hres; void* ymax; void* xmax; scalar_t__ ymin; scalar_t__ xmin; } ;
typedef TYPE_1__ pcx_t ;
typedef int byte ;


 int M_WriteFile (char*,TYPE_1__*,int) ;
 int PU_STATIC ;
 void* SHORT (int) ;
 int Z_Free (TYPE_1__*) ;
 TYPE_1__* Z_Malloc (int,int ,int *) ;
 int memset (int ,int ,int) ;

void
WritePCXfile
( char* filename,
  byte* data,
  int width,
  int height,
  byte* palette )
{
    int i;
    int length;
    pcx_t* pcx;
    byte* pack;

    pcx = Z_Malloc (width*height*2+1000, PU_STATIC, ((void*)0));

    pcx->manufacturer = 0x0a;
    pcx->version = 5;
    pcx->encoding = 1;
    pcx->bits_per_pixel = 8;
    pcx->xmin = 0;
    pcx->ymin = 0;
    pcx->xmax = SHORT(width-1);
    pcx->ymax = SHORT(height-1);
    pcx->hres = SHORT(width);
    pcx->vres = SHORT(height);
    memset (pcx->palette,0,sizeof(pcx->palette));
    pcx->color_planes = 1;
    pcx->bytes_per_line = SHORT(width);
    pcx->palette_type = SHORT(2);
    memset (pcx->filler,0,sizeof(pcx->filler));



    pack = &pcx->data;

    for (i=0 ; i<width*height ; i++)
    {
 if ( (*data & 0xc0) != 0xc0)
     *pack++ = *data++;
 else
 {
     *pack++ = 0xc1;
     *pack++ = *data++;
 }
    }


    *pack++ = 0x0c;
    for (i=0 ; i<768 ; i++)
 *pack++ = *palette++;


    length = pack - (byte *)pcx;
    M_WriteFile (filename, pcx, length);

    Z_Free (pcx);
}
