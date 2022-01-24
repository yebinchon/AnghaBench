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
typedef  scalar_t__ const uint32_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__ const*,int,size_t,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__ const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__ const*,int,size_t,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (size_t) ; 

__attribute__((used)) static void FUNC9(void)
{
   FILE* dsp_fp = FUNC2("sdmc:/3ds/dspfirm.cdc", "rb");

   if (dsp_fp)
      FUNC1(dsp_fp);
   else
   {
      FILE *code_fp = FUNC2("sdmc:/3ds/code.bin", "rb");

      if (code_fp)
      {
         size_t code_size;
         uint32_t* code_buffer     = NULL;

         FUNC5(code_fp, 0, SEEK_END);
         code_size = FUNC6(code_fp);
         FUNC5(code_fp, 0, SEEK_SET);

         code_buffer = (uint32_t*) FUNC8(code_size);

         if (code_buffer)
         {
            uint32_t *ptr = NULL;

            FUNC3(code_buffer, 1, code_size, code_fp);

            for (ptr = code_buffer + 0x40;
                 ptr < (code_buffer + (code_size >> 2)); ptr++)
            {
               const uint32_t dsp1_magic = 0x31505344; /* "DSP1" */
               if (*ptr == dsp1_magic)
               {
                  size_t dspfirm_size = ptr[1];
                  ptr -= 0x40;
                  if ((ptr + (dspfirm_size >> 2)) > 
                        (code_buffer + (code_size >> 2)))
                     break;

                  dsp_fp = FUNC2("sdmc:/3ds/dspfirm.cdc", "wb");
                  if (!dsp_fp)
                     break;
                  FUNC7(ptr, 1, dspfirm_size, dsp_fp);
                  FUNC1(dsp_fp);
                  break;
               }
            }
            FUNC4(code_buffer);
         }
         FUNC1(code_fp);
      }
      else
      {
         FUNC0("\n");
         FUNC0("\n");
         FUNC0("Warning:\n");
         FUNC0("3DS DSP dump is missing.\n");
         FUNC0("A working DSP dump is required\n");
         FUNC0("for correct operation.\n");
         FUNC0("\n");
         FUNC0("\n");
      }
   }
}