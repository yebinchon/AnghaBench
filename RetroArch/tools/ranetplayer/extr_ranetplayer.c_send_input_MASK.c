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
typedef  scalar_t__ uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int NETPLAY_CMD_INFO ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int cmd ; 
 int cmd_size ; 
 scalar_t__ frame_offset ; 
 scalar_t__ FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int* payload ; 
 int /*<<< orphan*/  ranp_in ; 
 int FUNC4 (int /*<<< orphan*/ ,int*,int) ; 

bool FUNC5(uint32_t cur_frame)
{
   while (1)
   {
      uint32_t rd_frame = 0;

      if (FUNC4(ranp_in, &cmd, sizeof(uint32_t)) != sizeof(uint32_t) ||
          FUNC4(ranp_in, &cmd_size, sizeof(uint32_t)) != sizeof(uint32_t))
         return false;

      cmd = FUNC3(cmd);
      cmd_size = FUNC3(cmd_size);
      FUNC0();

      if (FUNC4(ranp_in, payload, cmd_size) != cmd_size)
         return false;

      /* INFO is just saved for verification */
      if (cmd == NETPLAY_CMD_INFO)
         continue;

      /* Adjust the frame for commands we know */
      rd_frame = FUNC2(false);
      if (rd_frame)
         rd_frame -= frame_offset;

      /* And send it */
      FUNC1();

      if (rd_frame > cur_frame)
         break;
   }

   return true;
}