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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct sha256_ctx {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct sha256_ctx*,scalar_t__ const*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (struct sha256_ctx*) ; 
 int /*<<< orphan*/  FUNC2 (struct sha256_ctx*) ; 
 int /*<<< orphan*/  FUNC3 (struct sha256_ctx*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,unsigned int) ; 

void FUNC5(char *s, const uint8_t *in, size_t size)
{
   unsigned i;
   struct sha256_ctx sha;

   union
   {
      uint32_t u32[8];
      uint8_t u8[32];
   } shahash;

   FUNC2(&sha);
   FUNC0(&sha, in, (unsigned)size);
   FUNC1(&sha);
   FUNC3(&sha, shahash.u32);

   for (i = 0; i < 32; i++)
      FUNC4(s + 2 * i, 3, "%02x", (unsigned)shahash.u8[i]);
}