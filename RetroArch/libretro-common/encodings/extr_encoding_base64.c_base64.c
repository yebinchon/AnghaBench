
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* b64 ;
 scalar_t__ malloc (int) ;

char* base64(const void* binaryData, int len, int *flen)
{
   const unsigned char* bin = (const unsigned char*) binaryData;
   char* res;

   int rc = 0;
   int byteNo;

   int modulusLen = len % 3 ;


   int pad = ((modulusLen&1)<<1) + ((modulusLen&2)>>1);

   *flen = 4*(len + pad)/3;
   res = (char*) malloc(*flen + 1);
   if (!res)
   {

      return 0;
   }

   for (byteNo=0; byteNo <= len-3; byteNo+=3)
   {
      unsigned char BYTE0 = bin[byteNo];
      unsigned char BYTE1 = bin[byteNo+1];
      unsigned char BYTE2 = bin[byteNo+2];

      res[rc++] = b64[BYTE0 >> 2];
      res[rc++] = b64[((0x3&BYTE0)<<4) + (BYTE1 >> 4)];
      res[rc++] = b64[((0x0f&BYTE1)<<2) + (BYTE2>>6)];
      res[rc++] = b64[0x3f&BYTE2];
   }

   if (pad==2)
   {
      res[rc++] = b64[bin[byteNo] >> 2];
      res[rc++] = b64[(0x3&bin[byteNo])<<4];
      res[rc++] = '=';
      res[rc++] = '=';
   }
   else if (pad==1)
   {
      res[rc++] = b64[bin[byteNo] >> 2];
      res[rc++] = b64[((0x3&bin[byteNo])<<4) + (bin[byteNo+1] >> 4)];
      res[rc++] = b64[(0x0f&bin[byteNo+1])<<2];
      res[rc++] = '=';
   }

   res[rc]=0;
   return res;
}
