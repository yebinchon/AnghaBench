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
typedef  int uint32_t ;
typedef  int uint16_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/  const**,int) ; 

__attribute__((used)) static uint16_t FUNC1(const uint8_t **ptr, uint32_t *lbuf,
                           int *n_datum, int is_big, int shift)
{
    if (*n_datum)
        (*n_datum)--;
    else {
        *lbuf = FUNC0(ptr, is_big);
        *n_datum = 2;
    }

    *lbuf = *lbuf << 10 | *lbuf >> shift & 0x3FFFFF;

    return *lbuf & 0x3FF;
}