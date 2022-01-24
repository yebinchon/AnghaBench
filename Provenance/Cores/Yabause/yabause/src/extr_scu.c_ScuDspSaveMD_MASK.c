#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u8 ;
typedef  int u32 ;
struct TYPE_2__ {int** MD; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* ScuDsp ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int) ; 

int FUNC5(const char *filename, int num) {
   FILE *fp;
   u32 i;
   u8 *buffer;

   if (!filename)
      return -1;

   if ((fp = FUNC1(filename, "wb")) == NULL)
      return -1;

   if ((buffer = (u8 *)FUNC4(sizeof(ScuDsp->MD[num]))) == NULL)
   {
      FUNC0(fp);
      return -2;
   }

   for (i = 0; i < 64; i++)
   {
      buffer[i * 4] = (u8)(ScuDsp->MD[num][i] >> 24);
      buffer[(i * 4)+1] = (u8)(ScuDsp->MD[num][i] >> 16);
      buffer[(i * 4)+2] = (u8)(ScuDsp->MD[num][i] >> 8);
      buffer[(i * 4)+3] = (u8)ScuDsp->MD[num][i];
   }

   FUNC3((void *)buffer, 1, sizeof(ScuDsp->MD[num]), fp);
   FUNC0(fp);
   FUNC2(buffer);

   return 0;
}