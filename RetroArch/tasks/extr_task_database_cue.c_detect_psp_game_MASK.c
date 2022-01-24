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
typedef  int /*<<< orphan*/  intfstream_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char*) ; 

int FUNC3(intfstream_t *fd, char *game_id)
{
   unsigned pos;
   bool rv   = false;

   for (pos = 0; pos < 100000; pos++)
   {
      FUNC1(fd, pos, SEEK_SET);

      if (FUNC0(fd, game_id, 5) > 0)
      {
         game_id[5] = '\0';

         if (
               (FUNC2(game_id, "ULES-"))
               || (FUNC2(game_id, "ULUS-"))
               || (FUNC2(game_id, "ULJS-"))

               || (FUNC2(game_id, "ULEM-"))
               || (FUNC2(game_id, "ULUM-"))
               || (FUNC2(game_id, "ULJM-"))

               || (FUNC2(game_id, "UCES-"))
               || (FUNC2(game_id, "UCUS-"))
               || (FUNC2(game_id, "UCJS-"))
               || (FUNC2(game_id, "UCAS-"))

               || (FUNC2(game_id, "NPEH-"))
               || (FUNC2(game_id, "NPUH-"))
               || (FUNC2(game_id, "NPJH-"))

               || (FUNC2(game_id, "NPEG-"))
               || (FUNC2(game_id, "NPUG-"))
               || (FUNC2(game_id, "NPJG-"))
               || (FUNC2(game_id, "NPHG-"))

               || (FUNC2(game_id, "NPEZ-"))
               || (FUNC2(game_id, "NPUZ-"))
               || (FUNC2(game_id, "NPJZ-"))
               )
               {
                  FUNC1(fd, pos, SEEK_SET);
                  if (FUNC0(fd, game_id, 10) > 0)
                  {
#if 0
                     game_id[4] = '-';
                     game_id[8] = game_id[9];
                     game_id[9] = game_id[10];
#endif
                     game_id[10] = '\0';
                     rv = true;
                  }
                  break;
               }
      }
      else
         break;
   }

   return rv;
}