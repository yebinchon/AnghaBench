
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void ct_font_renderer_t ;
typedef int * CTFontRef ;
typedef int * CGFontRef ;
typedef int * CGDataProviderRef ;
typedef int * CFURLRef ;
typedef int * CFStringRef ;


 int CFRelease (int *) ;
 int * CFStringCreateWithCString (int *,char const*,int ) ;
 int * CFURLCreateWithFileSystemPath (int ,int *,int ,int) ;
 int * CGDataProviderCreateWithURL (int *) ;
 int * CGFontCreateWithDataProvider (int *) ;
 int * CTFontCreateWithGraphicsFont (int *,float,int *,int *) ;
 scalar_t__ calloc (int,int) ;
 int coretext_font_renderer_create_atlas (int *,void*) ;
 int font_renderer_ct_free (void*) ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingASCII ;
 int kCFURLPOSIXPathStyle ;
 int path_is_valid (char const*) ;

__attribute__((used)) static void *font_renderer_ct_init(const char *font_path, float font_size)
{
   char err = 0;
   CFStringRef cf_font_path = ((void*)0);
   CTFontRef face = ((void*)0);
   CFURLRef url = ((void*)0);
   CGDataProviderRef dataProvider = ((void*)0);
   CGFontRef theCGFont = ((void*)0);
   ct_font_renderer_t *handle = (ct_font_renderer_t*)
      calloc(1, sizeof(*handle));

   if (!handle || !path_is_valid(font_path))
   {
      err = 1;
      goto error;
   }

   cf_font_path = CFStringCreateWithCString(
         ((void*)0), font_path, kCFStringEncodingASCII);

   if (!cf_font_path)
   {
      err = 1;
      goto error;
   }

   url = CFURLCreateWithFileSystemPath(
         kCFAllocatorDefault, cf_font_path, kCFURLPOSIXPathStyle, 0);
   dataProvider = CGDataProviderCreateWithURL(url);
   theCGFont = CGFontCreateWithDataProvider(dataProvider);
   face = CTFontCreateWithGraphicsFont(theCGFont, font_size, ((void*)0), ((void*)0));

   if (!face)
   {
      err = 1;
      goto error;
   }

   if (!coretext_font_renderer_create_atlas(face, handle))
   {
      err = 1;
      goto error;
   }

error:
   if (err)
   {
      font_renderer_ct_free(handle);
      handle = ((void*)0);
   }

   if (cf_font_path)
   {
      CFRelease(cf_font_path);
      cf_font_path = ((void*)0);
   }
   if (face)
   {
      CFRelease(face);
      face = ((void*)0);
   }
   if (url)
   {
      CFRelease(url);
      url = ((void*)0);
   }
   if (dataProvider)
   {
      CFRelease(dataProvider);
      dataProvider = ((void*)0);
   }
   if (theCGFont)
   {
      CFRelease(theCGFont);
      theCGFont = ((void*)0);
   }

   return handle;
}
