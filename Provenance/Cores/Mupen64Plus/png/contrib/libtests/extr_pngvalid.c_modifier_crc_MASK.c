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
typedef  int /*<<< orphan*/  png_uint_32 ;
typedef  scalar_t__ png_bytep ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(png_bytep buffer)
{
   /* Recalculate the chunk CRC - a complete chunk must be in
    * the buffer, at the start.
    */
   uInt datalen = FUNC1(buffer);
   uLong crc = FUNC0(0, buffer+4, datalen+4);
   /* The cast to png_uint_32 is safe because a crc32 is always a 32 bit value.
    */
   FUNC2(buffer+datalen+8, (png_uint_32)crc);
}