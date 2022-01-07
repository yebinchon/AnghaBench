
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int byte ;
typedef int FILE ;


 int Error (char*,char const*) ;
 int SEEK_CUR ;
 int SEEK_SET ;
 int fclose (int *) ;
 int fgetLittleLong (int *) ;
 int fgetLittleShort (int *) ;
 int * fopen (char const*,char*) ;
 int fread (int *,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int * malloc (int) ;
 scalar_t__ qfalse ;
 scalar_t__ qtrue ;

void LoadBMP (const char *filename, byte **pic, byte **palette, int *width, int *height)
{
 byte *out;
 FILE *fin;
 int i;
    int bfSize;
    int bfOffBits;
 int structSize;
    int bcWidth;
    int bcHeight;
    int bcPlanes;
    int bcBitCount;
 byte bcPalette[1024];
 qboolean flipped;

 fin = fopen (filename, "rb");
 if (!fin) {
  Error ("Couldn't read %s", filename);
 }

 i = fgetLittleShort (fin);
 if (i != 'B' + ('M'<<8) ) {
  Error ("%s is not a bmp file", filename);
 }

 bfSize = fgetLittleLong (fin);
 fgetLittleShort(fin);
 fgetLittleShort(fin);
 bfOffBits = fgetLittleLong (fin);



 structSize = fgetLittleLong (fin);
 if (structSize == 40) {

        bcWidth = fgetLittleLong(fin);
        bcHeight= fgetLittleLong(fin);
        bcPlanes = fgetLittleShort(fin);
        bcBitCount = fgetLittleShort(fin);

  fseek (fin, 24, SEEK_CUR);

  if (palette) {
   fread (bcPalette, 1, 1024, fin);
   *palette = malloc(768);

   for (i = 0 ; i < 256 ; i++) {
    (*palette)[i * 3 + 0] = bcPalette[i * 4 + 2];
    (*palette)[i * 3 + 1] = bcPalette[i * 4 + 1];
    (*palette)[i * 3 + 2] = bcPalette[i * 4 + 0];
   }
  }
 } else if (structSize == 12) {

        bcWidth = fgetLittleShort(fin);
        bcHeight= fgetLittleShort(fin);
        bcPlanes = fgetLittleShort(fin);
        bcBitCount = fgetLittleShort(fin);

  if (palette) {
   fread (bcPalette, 1, 768, fin);
   *palette = malloc(768);

   for (i = 0 ; i < 256 ; i++) {
    (*palette)[i * 3 + 0] = bcPalette[i * 3 + 2];
    (*palette)[i * 3 + 1] = bcPalette[i * 3 + 1];
    (*palette)[i * 3 + 2] = bcPalette[i * 3 + 0];
   }
  }
 } else {
  Error ("%s had strange struct size", filename);
 }

 if (bcPlanes != 1) {
  Error ("%s was not a single plane image", filename);
 }

 if (bcBitCount != 8) {
  Error ("%s was not an 8 bit image", filename);
 }

 if (bcHeight < 0) {
  bcHeight = -bcHeight;
  flipped = qtrue;
 } else {
  flipped = qfalse;
 }

 if (width)
  *width = bcWidth;
 if (height)
  *height = bcHeight;

 if (!pic) {
  fclose (fin);
  return;
 }

 out = malloc ( bcWidth * bcHeight );
 *pic = out;
 fseek (fin, bfOffBits, SEEK_SET);

 if (flipped) {
  for (i = 0 ; i < bcHeight ; i++) {
   fread (out + bcWidth * (bcHeight - 1 - i), 1, bcWidth, fin);
  }
 } else {
  fread (out, 1, bcWidth*bcHeight, fin);
 }

 fclose (fin);
}
