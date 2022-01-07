
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int byte ;
struct TYPE_2__ {int* (* Malloc ) (int) ;int (* Free ) (int*) ;} ;


 int LoadPCX (char const*,int**,int**,int*,int*) ;
 TYPE_1__ ri ;
 int* stub1 (int) ;
 int stub2 (int*) ;
 int stub3 (int*) ;

__attribute__((used)) static void LoadPCX32 ( const char *filename, byte **pic, int *width, int *height) {
 byte *palette;
 byte *pic8;
 int i, c, p;
 byte *pic32;

 LoadPCX (filename, &pic8, &palette, width, height);
 if (!pic8) {
  *pic = ((void*)0);
  return;
 }

 c = (*width) * (*height);
 pic32 = *pic = ri.Malloc(4 * c );
 for (i = 0 ; i < c ; i++) {
  p = pic8[i];
  pic32[0] = palette[p*3];
  pic32[1] = palette[p*3 + 1];
  pic32[2] = palette[p*3 + 2];
  pic32[3] = 255;
  pic32 += 4;
 }

 ri.Free (pic8);
 ri.Free (palette);
}
