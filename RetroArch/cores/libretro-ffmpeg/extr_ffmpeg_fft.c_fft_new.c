
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rglgen_proc_address_t ;
typedef int fft_t ;


 int GL_EXTENSIONS ;
 int GL_VERSION ;
 scalar_t__ calloc (int,int) ;
 int fft_context_reset (int *,unsigned int,int ,int) ;
 int free (int *) ;
 scalar_t__ glGetString (int ) ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*) ;
 int strstr (char const*,char*) ;

fft_t *fft_new(unsigned fft_steps, rglgen_proc_address_t proc)
{
   fft_t *fft = ((void*)0);
   const char *exts = (const char*)(glGetString(GL_EXTENSIONS));
   if (!exts || !strstr(exts, "ARB_ES3_compatibility"))
      return ((void*)0);

   fft = (fft_t*)calloc(1, sizeof(*fft));

   if (!fft)
      return ((void*)0);

   if (!fft_context_reset(fft, fft_steps, proc, 256))
      goto error;

   return fft;

error:
   if (fft)
      free(fft);
   return ((void*)0);
}
