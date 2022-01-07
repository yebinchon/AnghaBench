
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ const uint32_t ;
typedef int FILE ;


 int RARCH_WARN (char*) ;
 int SEEK_END ;
 int SEEK_SET ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (scalar_t__ const*,int,size_t,int *) ;
 int free (scalar_t__ const*) ;
 int fseek (int *,int ,int ) ;
 size_t ftell (int *) ;
 int fwrite (scalar_t__ const*,int,size_t,int *) ;
 scalar_t__ malloc (size_t) ;

__attribute__((used)) static void ctr_check_dspfirm(void)
{
   FILE* dsp_fp = fopen("sdmc:/3ds/dspfirm.cdc", "rb");

   if (dsp_fp)
      fclose(dsp_fp);
   else
   {
      FILE *code_fp = fopen("sdmc:/3ds/code.bin", "rb");

      if (code_fp)
      {
         size_t code_size;
         uint32_t* code_buffer = ((void*)0);

         fseek(code_fp, 0, SEEK_END);
         code_size = ftell(code_fp);
         fseek(code_fp, 0, SEEK_SET);

         code_buffer = (uint32_t*) malloc(code_size);

         if (code_buffer)
         {
            uint32_t *ptr = ((void*)0);

            fread(code_buffer, 1, code_size, code_fp);

            for (ptr = code_buffer + 0x40;
                 ptr < (code_buffer + (code_size >> 2)); ptr++)
            {
               const uint32_t dsp1_magic = 0x31505344;
               if (*ptr == dsp1_magic)
               {
                  size_t dspfirm_size = ptr[1];
                  ptr -= 0x40;
                  if ((ptr + (dspfirm_size >> 2)) >
                        (code_buffer + (code_size >> 2)))
                     break;

                  dsp_fp = fopen("sdmc:/3ds/dspfirm.cdc", "wb");
                  if (!dsp_fp)
                     break;
                  fwrite(ptr, 1, dspfirm_size, dsp_fp);
                  fclose(dsp_fp);
                  break;
               }
            }
            free(code_buffer);
         }
         fclose(code_fp);
      }
      else
      {
         RARCH_WARN("\n");
         RARCH_WARN("\n");
         RARCH_WARN("Warning:\n");
         RARCH_WARN("3DS DSP dump is missing.\n");
         RARCH_WARN("A working DSP dump is required\n");
         RARCH_WARN("for correct operation.\n");
         RARCH_WARN("\n");
         RARCH_WARN("\n");
      }
   }
}
