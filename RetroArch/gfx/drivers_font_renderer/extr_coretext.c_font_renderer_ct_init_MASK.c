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
typedef  void ct_font_renderer_t ;
typedef  int /*<<< orphan*/ * CTFontRef ;
typedef  int /*<<< orphan*/ * CGFontRef ;
typedef  int /*<<< orphan*/ * CGDataProviderRef ;
typedef  int /*<<< orphan*/ * CFURLRef ;
typedef  int /*<<< orphan*/ * CFStringRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,float,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingASCII ; 
 int /*<<< orphan*/  kCFURLPOSIXPathStyle ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 

__attribute__((used)) static void *FUNC10(const char *font_path, float font_size)
{
   char err                       = 0;
   CFStringRef cf_font_path       = NULL;
   CTFontRef face                 = NULL;
   CFURLRef url                   = NULL;
   CGDataProviderRef dataProvider = NULL;
   CGFontRef theCGFont            = NULL;
   ct_font_renderer_t *handle = (ct_font_renderer_t*)
      FUNC6(1, sizeof(*handle));

   if (!handle || !FUNC9(font_path))
   {
      err = 1;
      goto error;
   }

   cf_font_path = FUNC1(
         NULL, font_path, kCFStringEncodingASCII);

   if (!cf_font_path)
   {
      err = 1;
      goto error;
   }

   url          = FUNC2(
         kCFAllocatorDefault, cf_font_path, kCFURLPOSIXPathStyle, false);
   dataProvider = FUNC3(url);
   theCGFont    = FUNC4(dataProvider);
   face         = FUNC5(theCGFont, font_size, NULL, NULL);

   if (!face)
   {
      err = 1;
      goto error;
   }

   if (!FUNC7(face, handle))
   {
      err = 1;
      goto error;
   }

error:
   if (err)
   {
      FUNC8(handle);
      handle = NULL;
   }

   if (cf_font_path)
   {
      FUNC0(cf_font_path);
      cf_font_path = NULL;
   }
   if (face)
   {
      FUNC0(face);
      face = NULL;
   }
   if (url)
   {
      FUNC0(url);
      url = NULL;
   }
   if (dataProvider)
   {
      FUNC0(dataProvider);
      dataProvider = NULL;
   }
   if (theCGFont)
   {
      FUNC0(theCGFont);
      theCGFont = NULL;
   }

   return handle;
}