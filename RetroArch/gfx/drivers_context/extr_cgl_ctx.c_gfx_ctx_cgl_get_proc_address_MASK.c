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
typedef  int /*<<< orphan*/  gfx_ctx_proc_t ;
typedef  int /*<<< orphan*/  CFURLRef ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/  CFBundleRef ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFStringEncodingASCII ; 
 int /*<<< orphan*/  kCFURLPOSIXPathStyle ; 

__attribute__((used)) static gfx_ctx_proc_t FUNC6(const char *symbol_name)
{
   CFURLRef bundle_url = FUNC5(kCFAllocatorDefault,
         FUNC3
         ("/System/Library/Frameworks/OpenGL.framework"),
         kCFURLPOSIXPathStyle, true);
   CFBundleRef opengl_bundle_ref  = FUNC0(kCFAllocatorDefault, bundle_url);
   CFStringRef function =  FUNC4(kCFAllocatorDefault, symbol_name,
         kCFStringEncodingASCII);
   gfx_ctx_proc_t ret = (gfx_ctx_proc_t)FUNC1(
         opengl_bundle_ref, function);

   FUNC2(bundle_url);
   FUNC2(function);
   FUNC2(opengl_bundle_ref);

   return ret;
}