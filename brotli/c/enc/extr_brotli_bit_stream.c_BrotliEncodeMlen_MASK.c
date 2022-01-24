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
typedef  size_t uint64_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(size_t length, uint64_t* bits,
                             size_t* numbits, uint64_t* nibblesbits) {
  size_t lg = (length == 1) ? 1 : FUNC1((uint32_t)(length - 1)) + 1;
  size_t mnibbles = (lg < 16 ? 16 : (lg + 3)) / 4;
  FUNC0(length > 0);
  FUNC0(length <= (1 << 24));
  FUNC0(lg <= 24);
  *nibblesbits = mnibbles - 4;
  *numbits = mnibbles * 4;
  *bits = length - 1;
}