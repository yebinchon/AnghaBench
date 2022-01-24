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
typedef  char* png_const_charp ;
typedef  scalar_t__** png_bytepp ;
typedef  scalar_t__* png_bytep ;
typedef  scalar_t__ png_byte ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EOF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__* FUNC7 (size_t) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC11 () ; 

__attribute__((used)) static size_t
FUNC12(png_const_charp name, png_bytepp result)
{
   FILE *fp = FUNC11();

   if (fp != NULL)
   {
      FILE *ip = FUNC3(name, "rb");

      if (ip != NULL)
      {
         size_t total = 0;
         int ch;

         for (;;)
         {
            ch = FUNC6(ip);
            if (ch == EOF) break;
            FUNC9(ch, fp);
            ++total;
         }

         if (FUNC2(ip))
         {
            FUNC8(name);
            FUNC4(stderr, "%s: read error\n", name);
            (void)FUNC1(ip);
         }

         else
         {
            (void)FUNC1(ip);

            if (FUNC2(fp))
            {
               FUNC8("temporary file");
               FUNC4(stderr, "temporary file write error\n");
            }

            else
            {
               FUNC10(fp);

               if (total > 0)
               {
                  /* Round up to a multiple of 4 here to allow an iCCP profile
                   * to be padded to a 4x boundary.
                   */
                  png_bytep data = FUNC7((total+3)&~3);

                  if (data != NULL)
                  {
                     size_t new_size = 0;

                     for (;;)
                     {
                        ch = FUNC6(fp);
                        if (ch == EOF) break;
                        data[new_size++] = (png_byte)ch;
                     }

                     if (FUNC2(fp) || new_size != total)
                     {
                        FUNC8("temporary file");
                        FUNC4(stderr, "temporary file read error\n");
                        FUNC5(data);
                     }

                     else
                     {
                        (void)FUNC1(fp);
                        *result = data;
                        return total;
                     }
                  }

                  else
                     FUNC4(stderr, "%s: out of memory loading file\n", name);
               }

               else
                  FUNC4(stderr, "%s: empty file\n", name);
            }
         }
      }

      else
      {
         FUNC8(name);
         FUNC4(stderr, "%s: open failed\n", name);
      }

      FUNC1(fp);
   }

   else
      FUNC4(stderr, "makepng: %s: could not open temporary file\n", name);

   FUNC0(1);
   return 0;
}