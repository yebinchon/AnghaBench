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
typedef  int /*<<< orphan*/  rglgen_proc_address_t ;
typedef  int /*<<< orphan*/  fft_t ;

/* Variables and functions */
 int /*<<< orphan*/  GL_EXTENSIONS ; 
 int /*<<< orphan*/  GL_VERSION ; 
 scalar_t__ FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,char*,unsigned int*,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,char*) ; 

fft_t *FUNC6(unsigned fft_steps, rglgen_proc_address_t proc)
{
   fft_t *fft    = NULL;
#ifdef HAVE_OPENGLES3
   const char *ver = (const char*)(glGetString(GL_VERSION));
   if (ver)
   {
      unsigned major, minor;
      if (sscanf(ver, "OpenGL ES %u.%u", &major, &minor) != 2 || major < 3)
         return NULL;
   }
   else
      return NULL;
#else
   const char *exts = (const char*)(FUNC3(GL_EXTENSIONS));
   if (!exts || !FUNC5(exts, "ARB_ES3_compatibility"))
      return NULL;
#endif
   fft = (fft_t*)FUNC0(1, sizeof(*fft));

   if (!fft)
      return NULL;

   if (!FUNC1(fft, fft_steps, proc, 256))
      goto error;

   return fft;

error:
   if (fft)
      FUNC2(fft);
   return NULL;
}