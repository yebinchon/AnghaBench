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
typedef  int /*<<< orphan*/  fpos_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(FILE *fp, char *name)
{
   FILE *ip = FUNC4(name, "rb");

   if (ip != NULL)
   {
      /* Read the file using libpng; this detects errors and also deals with
       * files which contain data beyond the end of the file.
       */
      int ok = 0;
      fpos_t pos;

      if (FUNC3(fp, &pos))
      {
         /* Fatal error reading the start: */
         FUNC7("temporary file");
         FUNC5(stderr, "temporary file fgetpos error\n");
         FUNC0(1);
      }

      if (FUNC8(ip, -1/*by row*/, fp/*output*/))
      {
         if (FUNC2(ip))
         {
            FUNC7(name);
            FUNC5(stderr, "%s: read error\n", name);
         }

         else
            ok = 1; /* read ok */
      }

      else
         FUNC5(stderr, "%s: file not added\n", name);

      (void)FUNC1(ip);

      /* An error in the output is fatal; exit immediately: */
      if (FUNC2(fp))
      {
         FUNC7("temporary file");
         FUNC5(stderr, "temporary file write error\n");
         FUNC0(1);
      }

      if (ok)
         return 1;

      /* Did not read the file successfully, simply rewind the temporary
       * file.  This must happen after the ferror check above to avoid clearing
       * the error.
       */
      if (FUNC6(fp, &pos))
      {
         FUNC7("temporary file");
         FUNC5(stderr, "temporary file fsetpos error\n");
         FUNC0(1);
      }
   }

   else
   {
      /* file open error: */
      FUNC7(name);
      FUNC5(stderr, "%s: open failed\n", name);
   }

   return 0; /* file not added */
}