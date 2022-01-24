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
typedef  int /*<<< orphan*/  uivector ;

/* Variables and functions */
 scalar_t__* DISTANCEBASE ; 
 unsigned int FIRST_LENGTH_CODE_INDEX ; 
 scalar_t__* LENGTHBASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__*,int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned int) ; 

__attribute__((used)) static void FUNC2(uivector* values, size_t length, size_t distance)
{
  /*values in encoded vector are those used by deflate:
  0-255: literal bytes
  256: end
  257-285: length/distance pair (length code, followed by extra length bits, distance code, extra distance bits)
  286-287: invalid*/

  unsigned length_code = (unsigned)FUNC0(LENGTHBASE, 29, length);
  unsigned extra_length = (unsigned)(length - LENGTHBASE[length_code]);
  unsigned dist_code = (unsigned)FUNC0(DISTANCEBASE, 30, distance);
  unsigned extra_distance = (unsigned)(distance - DISTANCEBASE[dist_code]);

  FUNC1(values, length_code + FIRST_LENGTH_CODE_INDEX);
  FUNC1(values, extra_length);
  FUNC1(values, dist_code);
  FUNC1(values, extra_distance);
}