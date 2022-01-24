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
typedef  scalar_t__ uLong ;
typedef  scalar_t__ uInt ;

/* Variables and functions */
 unsigned char const* Z_NULL ; 
 scalar_t__ FUNC0 (scalar_t__,unsigned char const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char const*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  stdout ; 

void
FUNC3(const unsigned char *chunk, uInt length)
{
   uLong crc;

   FUNC2(length-4); /* Exclude the tag */

   FUNC1(chunk, length, 1, stdout);

   crc = FUNC0(0, Z_NULL, 0);
   FUNC2(FUNC0(crc, chunk, length));
}