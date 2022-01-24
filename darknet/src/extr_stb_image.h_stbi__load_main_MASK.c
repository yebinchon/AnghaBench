#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int bits_per_channel; scalar_t__ num_channels; int /*<<< orphan*/  channel_order; } ;
typedef  TYPE_1__ stbi__result_info ;
typedef  int /*<<< orphan*/  stbi__context ;

/* Variables and functions */
 int /*<<< orphan*/  STBI_ORDER_RGB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 void* FUNC1 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 void* FUNC3 (char*,char*) ; 
 void* FUNC4 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 float* FUNC6 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 void* FUNC8 (float*,int,int,int) ; 
 void* FUNC9 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 void* FUNC11 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 void* FUNC13 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *) ; 
 void* FUNC15 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *) ; 
 void* FUNC17 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 void* FUNC19 (int /*<<< orphan*/ *,int*,int*,int*,int,TYPE_1__*) ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void *FUNC21(stbi__context *s, int *x, int *y, int *comp, int req_comp, stbi__result_info *ri, int bpc)
{
   FUNC0(ri, 0, sizeof(*ri)); // make sure it's initialized if we add new fields
   ri->bits_per_channel = 8; // default is 8 so most paths don't have to be changed
   ri->channel_order = STBI_ORDER_RGB; // all current input & output are this, but this is here so we can add BGR order
   ri->num_channels = 0;

   #ifndef STBI_NO_JPEG
   if (FUNC10(s)) return FUNC9(s,x,y,comp,req_comp, ri);
   #endif
   #ifndef STBI_NO_PNG
   if (FUNC14(s))  return FUNC13(s,x,y,comp,req_comp, ri);
   #endif
   #ifndef STBI_NO_BMP
   if (FUNC2(s))  return FUNC1(s,x,y,comp,req_comp, ri);
   #endif
   #ifndef STBI_NO_GIF
   if (FUNC5(s))  return FUNC4(s,x,y,comp,req_comp, ri);
   #endif
   #ifndef STBI_NO_PSD
   if (FUNC18(s))  return FUNC17(s,x,y,comp,req_comp, ri, bpc);
   #endif
   #ifndef STBI_NO_PIC
   if (FUNC12(s))  return FUNC11(s,x,y,comp,req_comp, ri);
   #endif
   #ifndef STBI_NO_PNM
   if (FUNC16(s))  return FUNC15(s,x,y,comp,req_comp, ri);
   #endif

   #ifndef STBI_NO_HDR
   if (FUNC7(s)) {
      float *hdr = FUNC6(s, x,y,comp,req_comp, ri);
      return FUNC8(hdr, *x, *y, req_comp ? req_comp : *comp);
   }
   #endif

   #ifndef STBI_NO_TGA
   // test tga last because it's a crappy test!
   if (FUNC20(s))
      return FUNC19(s,x,y,comp,req_comp, ri);
   #endif

   return FUNC3("unknown image type", "Image not of any known type, or corrupt");
}