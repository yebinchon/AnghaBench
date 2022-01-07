
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int gfx_ctx_proc_t ;
typedef int CFURLRef ;
typedef int CFStringRef ;
typedef int CFBundleRef ;


 int CFBundleCreate (int ,int ) ;
 int CFBundleGetFunctionPointerForName (int ,int ) ;
 int CFRelease (int ) ;
 int CFSTR (char*) ;
 int CFStringCreateWithCString (int ,char const*,int ) ;
 int CFURLCreateWithFileSystemPath (int ,int ,int ,int) ;
 int kCFAllocatorDefault ;
 int kCFStringEncodingASCII ;
 int kCFURLPOSIXPathStyle ;

__attribute__((used)) static gfx_ctx_proc_t gfx_ctx_cgl_get_proc_address(const char *symbol_name)
{
   CFURLRef bundle_url = CFURLCreateWithFileSystemPath(kCFAllocatorDefault,
         CFSTR
         ("/System/Library/Frameworks/OpenGL.framework"),
         kCFURLPOSIXPathStyle, 1);
   CFBundleRef opengl_bundle_ref = CFBundleCreate(kCFAllocatorDefault, bundle_url);
   CFStringRef function = CFStringCreateWithCString(kCFAllocatorDefault, symbol_name,
         kCFStringEncodingASCII);
   gfx_ctx_proc_t ret = (gfx_ctx_proc_t)CFBundleGetFunctionPointerForName(
         opengl_bundle_ref, function);

   CFRelease(bundle_url);
   CFRelease(function);
   CFRelease(opengl_bundle_ref);

   return ret;
}
