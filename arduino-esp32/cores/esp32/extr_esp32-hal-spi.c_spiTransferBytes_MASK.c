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
typedef  int /*<<< orphan*/  spi_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *,int) ; 

void FUNC3(spi_t * spi, const uint8_t * data, uint8_t * out, uint32_t size)
{
    if(!spi) {
        return;
    }
    FUNC0();
    while(size) {
        if(size > 64) {
            FUNC2(spi, data, out, 64);
            size -= 64;
            if(data) {
                data += 64;
            }
            if(out) {
                out += 64;
            }
        } else {
            FUNC2(spi, data, out, size);
            size = 0;
        }
    }
    FUNC1();
}