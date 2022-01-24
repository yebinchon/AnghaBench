#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {long trailer_len; int /*<<< orphan*/  trailer; int /*<<< orphan*/  fdt; } ;
typedef  int /*<<< orphan*/  FILE ;
typedef  TYPE_1__ DTBLOB_T ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 long FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (char const*,char*) ; 
 long FUNC5 (int /*<<< orphan*/ ,int,long,int /*<<< orphan*/ *) ; 

int FUNC6(const DTBLOB_T *dtb, const char *filename)
{
   FILE *fp = FUNC4(filename, "wb");
   int err = 0;

   if (fp)
   {
      long len = FUNC3(dtb->fdt);
      if (len != FUNC5(dtb->fdt, 1, len, fp))
      {
         FUNC1("fwrite failed");
         err = -2;
         goto error_exit;
      }
      if (dtb->trailer_len &&
          (FUNC5(dtb->trailer, 1, dtb->trailer_len, fp) != dtb->trailer_len))
      {
         FUNC1("fwrite failed");
         err = -2;
         goto error_exit;
      }

      FUNC0("Wrote %ld bytes to '%s'", len, filename);
      FUNC2(fp);
   }
   else
   {
      FUNC0("Failed to create '%s'", filename);
      err = -1;
   }

error_exit:
   return err;
}