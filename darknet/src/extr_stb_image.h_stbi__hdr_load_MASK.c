#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  float stbi_uc ;
typedef  int /*<<< orphan*/  stbi__result_info ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int STBI__HDR_BUFLEN ; 
 float* FUNC2 (char*,char*) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,float*,int) ; 
 int /*<<< orphan*/  FUNC5 (float*,float*,int) ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int,int,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (char const*,char*) ; 
 scalar_t__ FUNC11 (char*,char*,int) ; 
 scalar_t__ FUNC12 (char*,char**,int) ; 

__attribute__((used)) static float *FUNC13(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri)
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
   FUNC1(ri);

   // Check identifier
   headerToken = FUNC6(s,buffer);
   if (FUNC10(headerToken, "#?RADIANCE") != 0 && FUNC10(headerToken, "#?RGBE") != 0)
      return FUNC2("not HDR", "Corrupt HDR image");

   // Parse header
   for(;;) {
      token = FUNC6(s,buffer);
      if (token[0] == 0) break;
      if (FUNC10(token, "FORMAT=32-bit_rle_rgbe") == 0) valid = 1;
   }

   if (!valid)    return FUNC2("unsupported format", "Unsupported HDR format");

   // Parse width and height
   // can't use sscanf() if we're not using stdio!
   token = FUNC6(s,buffer);
   if (FUNC11(token, "-Y ", 3))  return FUNC2("unsupported data layout", "Unsupported HDR format");
   token += 3;
   height = (int) FUNC12(token, &token, 10);
   while (*token == ' ') ++token;
   if (FUNC11(token, "+X ", 3))  return FUNC2("unsupported data layout", "Unsupported HDR format");
   token += 3;
   width = (int) FUNC12(token, NULL, 10);

   *x = width;
   *y = height;

   if (comp) *comp = 3;
   if (req_comp == 0) req_comp = 3;

   if (!FUNC7(width, height, req_comp, sizeof(float), 0))
      return FUNC2("too large", "HDR image is too large");

   // Read data
   hdr_data = (float *) FUNC9(width, height, req_comp, sizeof(float), 0);
   if (!hdr_data)
      return FUNC2("outofmem", "Out of memory");

   // Load image data
   // image data is stored as some number of sca
   if ( width < 8 || width >= 32768) {
      // Read flat data
      for (j=0; j < height; ++j) {
         for (i=0; i < width; ++i) {
            stbi_uc rgbe[4];
           main_decode_loop:
            FUNC4(s, rgbe, 4);
            FUNC5(hdr_data + j * width * req_comp + i * req_comp, rgbe, req_comp);
         }
      }
   } else {
      // Read RLE-encoded data
      scanline = NULL;

      for (j = 0; j < height; ++j) {
         c1 = FUNC3(s);
         c2 = FUNC3(s);
         len = FUNC3(s);
         if (c1 != 2 || c2 != 2 || (len & 0x80)) {
            // not run-length encoded, so we have to actually use THIS data as a decoded
            // pixel (note this can't be a valid pixel--one of RGB must be >= 128)
            stbi_uc rgbe[4];
            rgbe[0] = (stbi_uc) c1;
            rgbe[1] = (stbi_uc) c2;
            rgbe[2] = (stbi_uc) len;
            rgbe[3] = (stbi_uc) FUNC3(s);
            FUNC5(hdr_data, rgbe, req_comp);
            i = 1;
            j = 0;
            FUNC0(scanline);
            goto main_decode_loop; // yes, this makes no sense
         }
         len <<= 8;
         len |= FUNC3(s);
         if (len != width) { FUNC0(hdr_data); FUNC0(scanline); return FUNC2("invalid decoded scanline length", "corrupt HDR"); }
         if (scanline == NULL) {
            scanline = (stbi_uc *) FUNC8(width, 4, 0);
            if (!scanline) {
               FUNC0(hdr_data);
               return FUNC2("outofmem", "Out of memory");
            }
         }

         for (k = 0; k < 4; ++k) {
            int nleft;
            i = 0;
            while ((nleft = width - i) > 0) {
               count = FUNC3(s);
               if (count > 128) {
                  // Run
                  value = FUNC3(s);
                  count -= 128;
                  if (count > nleft) { FUNC0(hdr_data); FUNC0(scanline); return FUNC2("corrupt", "bad RLE data in HDR"); }
                  for (z = 0; z < count; ++z)
                     scanline[i++ * 4 + k] = value;
               } else {
                  // Dump
                  if (count > nleft) { FUNC0(hdr_data); FUNC0(scanline); return FUNC2("corrupt", "bad RLE data in HDR"); }
                  for (z = 0; z < count; ++z)
                     scanline[i++ * 4 + k] = FUNC3(s);
               }
            }
         }
         for (i=0; i < width; ++i)
            FUNC5(hdr_data+(j*width + i)*req_comp, scanline + i*4, req_comp);
      }
      if (scanline)
         FUNC0(scanline);
   }

   return hdr_data;
}