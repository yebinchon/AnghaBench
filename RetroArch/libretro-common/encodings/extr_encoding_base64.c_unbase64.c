
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ malloc (int) ;
 int* unb64 ;

unsigned char* unbase64(const char* ascii, int len, int *flen)
{
   const unsigned char *safeAsciiPtr = (const unsigned char*) ascii;
   unsigned char *bin;
   int cb = 0;
   int charNo;
   int pad = 0;

   if (len < 2) {




      *flen = 0;
      return 0;
   }

   if(safeAsciiPtr[len-1]=='=')
      ++pad;
   if(safeAsciiPtr[len-2]=='=')
      ++pad;

   *flen = 3*len/4 - pad;
   bin = (unsigned char*)malloc(*flen);

   if (!bin)
   {

      return 0;
   }

   for (charNo=0; charNo <= len-4-pad; charNo+=4)
   {
      int A = unb64[safeAsciiPtr[charNo]];
      int B = unb64[safeAsciiPtr[charNo+1]];
      int C = unb64[safeAsciiPtr[charNo+2]];
      int D = unb64[safeAsciiPtr[charNo+3]];

      bin[cb++] = (A<<2) | (B>>4);
      bin[cb++] = (B<<4) | (C>>2);
      bin[cb++] = (C<<6) | (D);
   }

   if (pad==1)
   {
      int A = unb64[safeAsciiPtr[charNo]];
      int B = unb64[safeAsciiPtr[charNo+1]];
      int C = unb64[safeAsciiPtr[charNo+2]];

      bin[cb++] = (A<<2) | (B>>4);
      bin[cb++] = (B<<4) | (C>>2);
   }
   else if (pad==2)
   {
      int A = unb64[safeAsciiPtr[charNo]];
      int B = unb64[safeAsciiPtr[charNo+1]];

      bin[cb++] = (A<<2) | (B>>4);
   }

   return bin;
}
