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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  RFILE ;

/* Variables and functions */
 int errno ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(RFILE *fd, uint64_t *out, size_t size)
{
   uint64_t tmp;

   if (FUNC0(fd, &tmp, size) == -1)
      goto error;

   switch (size)
   {
      case 1:
         *out = *(uint8_t *)(&tmp);
         break;
      case 2:
         *out = FUNC1((uint16_t)tmp);
         break;
      case 4:
         *out = FUNC2((uint32_t)tmp);
         break;
      case 8:
         *out = FUNC3(tmp);
         break;
   }
   return 0;

error:
   return -errno;
}