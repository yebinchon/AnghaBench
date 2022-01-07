
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uLong ;
typedef int FILE ;
typedef int Byte ;


 int EOF ;
 int adler32 (int,int*,int) ;
 int crc32 (int,int*,int) ;
 scalar_t__ ferror (int *) ;
 int getc (int *) ;
 int printf (char*,unsigned long,unsigned long,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int,int ,int ,int ,int ,int ,int ,int ,unsigned long,char const*) ;
 int u16 (int) ;
 int u32 (int) ;

__attribute__((used)) static int
read_one_file(FILE *ip, const char *name)
{
   uLong length = 0;
   uLong a32 = adler32(0, ((void*)0), 0);
   uLong c32 = crc32(0, ((void*)0), 0);
   Byte header[132];

   for (;;)
   {
      int ch = getc(ip);
      Byte b;

      if (ch == EOF) break;

      b = (Byte)ch;

      if (length < sizeof header)
         header[length] = b;

      ++length;
      a32 = adler32(a32, &b, 1);
      c32 = crc32(c32, &b, 1);
   }

   if (ferror(ip))
      return 0;


   printf("PNG_ICC_CHECKSUM(0x%8.8lx, 0x%8.8lx,\n   PNG_MD5("
      "0x%2.2x%2.2x%2.2x%2.2x, 0x%2.2x%2.2x%2.2x%2.2x, 0x%2.2x%2.2x%2.2x%2.2x,"
      " 0x%2.2x%2.2x%2.2x%2.2x), %d,\n"
      "   \"%4.4d/%2.2d/%2.2d %2.2d:%2.2d:%2.2d\", %lu, \"%s\")\n",
      (unsigned long)a32, (unsigned long)c32,
      header[84], header[85], header[86], header[87],
      header[88], header[89], header[90], header[91],
      header[92], header[93], header[94], header[95],
      header[96], header[97], header[98], header[99],


      ((header[64] * 256 + header[64 +1]) * 65536 + (header[64 +2] * 256 + header[64 +2 +1])), (header[24] * 256 + header[24 +1]), (header[26] * 256 + header[26 +1]), (header[28] * 256 + header[28 +1]), (header[30] * 256 + header[30 +1]), (header[32] * 256 + header[32 +1]), (header[34] * 256 + header[34 +1]),
      (unsigned long)length, name);

   return 1;
}
