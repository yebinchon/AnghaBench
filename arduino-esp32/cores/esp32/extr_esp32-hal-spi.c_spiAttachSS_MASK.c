#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_4__ {scalar_t__ num; } ;
typedef  TYPE_1__ spi_t ;
typedef  int int8_t ;

/* Variables and functions */
 scalar_t__ HSPI ; 
 int /*<<< orphan*/  OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 scalar_t__ VSPI ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int) ; 

void FUNC4(spi_t * spi, uint8_t cs_num, int8_t ss)
{
    if(!spi) {
        return;
    }
    if(cs_num > 2) {
        return;
    }
    if(ss < 0) {
        cs_num = 0;
        if(spi->num == HSPI) {
            ss = 15;
        } else if(spi->num == VSPI) {
            ss = 5;
        } else {
            ss = 11;
        }
    }
    FUNC2(ss, OUTPUT);
    FUNC1(ss, FUNC0(spi->num, cs_num), false, false);
    FUNC3(spi, (1 << cs_num));
}