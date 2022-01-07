
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PU_STATIC ;
 int Z_Free (short*) ;
 scalar_t__ Z_Malloc (int,int ,int ) ;
 int memcpy (short*,short*,int) ;

void
wipe_shittyColMajorXform
( short* array,
  int width,
  int height )
{
    int x;
    int y;
    short* dest;

    dest = (short*) Z_Malloc(width*height*2, PU_STATIC, 0);

    for(y=0;y<height;y++)
 for(x=0;x<width;x++)
     dest[x*height+y] = array[y*width+x];

    memcpy(array, dest, width*height*2);

    Z_Free(dest);

}
