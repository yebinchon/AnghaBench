
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float stbi_uc ;
typedef int stbi__result_info ;
typedef int stbi__context ;


 int STBI_FREE (float*) ;
 int STBI_NOTUSED (int *) ;
 int STBI__HDR_BUFLEN ;
 float* stbi__errpf (char*,char*) ;
 int stbi__get8 (int *) ;
 int stbi__getn (int *,float*,int) ;
 int stbi__hdr_convert (float*,float*,int) ;
 void* stbi__hdr_gettoken (int *,char*) ;
 int stbi__mad4sizes_valid (int,int,int,int,int ) ;
 scalar_t__ stbi__malloc_mad2 (int,int,int ) ;
 scalar_t__ stbi__malloc_mad4 (int,int,int,int,int ) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 scalar_t__ strtol (char*,char**,int) ;

__attribute__((used)) static float *stbi__hdr_load(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri)
{
   char buffer[STBI__HDR_BUFLEN];
   char *token;
   int valid = 0;
   int width, height;
   stbi_uc *scanline;
   float *hdr_data;
   int len;
   unsigned char count, value;
   int i, j, k, c1,c2, z;
   const char *headerToken;
   STBI_NOTUSED(ri);


   headerToken = stbi__hdr_gettoken(s,buffer);
   if (strcmp(headerToken, "#?RADIANCE") != 0 && strcmp(headerToken, "#?RGBE") != 0)
      return stbi__errpf("not HDR", "Corrupt HDR image");


   for(;;) {
      token = stbi__hdr_gettoken(s,buffer);
      if (token[0] == 0) break;
      if (strcmp(token, "FORMAT=32-bit_rle_rgbe") == 0) valid = 1;
   }

   if (!valid) return stbi__errpf("unsupported format", "Unsupported HDR format");



   token = stbi__hdr_gettoken(s,buffer);
   if (strncmp(token, "-Y ", 3)) return stbi__errpf("unsupported data layout", "Unsupported HDR format");
   token += 3;
   height = (int) strtol(token, &token, 10);
   while (*token == ' ') ++token;
   if (strncmp(token, "+X ", 3)) return stbi__errpf("unsupported data layout", "Unsupported HDR format");
   token += 3;
   width = (int) strtol(token, ((void*)0), 10);

   *x = width;
   *y = height;

   if (comp) *comp = 3;
   if (req_comp == 0) req_comp = 3;

   if (!stbi__mad4sizes_valid(width, height, req_comp, sizeof(float), 0))
      return stbi__errpf("too large", "HDR image is too large");


   hdr_data = (float *) stbi__malloc_mad4(width, height, req_comp, sizeof(float), 0);
   if (!hdr_data)
      return stbi__errpf("outofmem", "Out of memory");



   if ( width < 8 || width >= 32768) {

      for (j=0; j < height; ++j) {
         for (i=0; i < width; ++i) {
            stbi_uc rgbe[4];
           main_decode_loop:
            stbi__getn(s, rgbe, 4);
            stbi__hdr_convert(hdr_data + j * width * req_comp + i * req_comp, rgbe, req_comp);
         }
      }
   } else {

      scanline = ((void*)0);

      for (j = 0; j < height; ++j) {
         c1 = stbi__get8(s);
         c2 = stbi__get8(s);
         len = stbi__get8(s);
         if (c1 != 2 || c2 != 2 || (len & 0x80)) {


            stbi_uc rgbe[4];
            rgbe[0] = (stbi_uc) c1;
            rgbe[1] = (stbi_uc) c2;
            rgbe[2] = (stbi_uc) len;
            rgbe[3] = (stbi_uc) stbi__get8(s);
            stbi__hdr_convert(hdr_data, rgbe, req_comp);
            i = 1;
            j = 0;
            STBI_FREE(scanline);
            goto main_decode_loop;
         }
         len <<= 8;
         len |= stbi__get8(s);
         if (len != width) { STBI_FREE(hdr_data); STBI_FREE(scanline); return stbi__errpf("invalid decoded scanline length", "corrupt HDR"); }
         if (scanline == ((void*)0)) {
            scanline = (stbi_uc *) stbi__malloc_mad2(width, 4, 0);
            if (!scanline) {
               STBI_FREE(hdr_data);
               return stbi__errpf("outofmem", "Out of memory");
            }
         }

         for (k = 0; k < 4; ++k) {
            int nleft;
            i = 0;
            while ((nleft = width - i) > 0) {
               count = stbi__get8(s);
               if (count > 128) {

                  value = stbi__get8(s);
                  count -= 128;
                  if (count > nleft) { STBI_FREE(hdr_data); STBI_FREE(scanline); return stbi__errpf("corrupt", "bad RLE data in HDR"); }
                  for (z = 0; z < count; ++z)
                     scanline[i++ * 4 + k] = value;
               } else {

                  if (count > nleft) { STBI_FREE(hdr_data); STBI_FREE(scanline); return stbi__errpf("corrupt", "bad RLE data in HDR"); }
                  for (z = 0; z < count; ++z)
                     scanline[i++ * 4 + k] = stbi__get8(s);
               }
            }
         }
         for (i=0; i < width; ++i)
            stbi__hdr_convert(hdr_data+(j*width + i)*req_comp, scanline + i*4, req_comp);
      }
      if (scanline)
         STBI_FREE(scanline);
   }

   return hdr_data;
}
