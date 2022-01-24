#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ num; } ;
typedef  TYPE_1__ spi_t ;
typedef  int int8_t ;

/* Variables and functions */
 scalar_t__ HSPI ; 
 int /*<<< orphan*/  OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ VSPI ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 

void FUNC3(spi_t * spi, int8_t mosi)
{
    if(!spi) {
        return;
    }
    if(mosi < 0) {
        if(spi->num == HSPI) {
            mosi = 13;
        } else if(spi->num == VSPI) {
            mosi = 23;
        } else {
            mosi = 8;
        }
    }
    FUNC2(mosi, OUTPUT);
    FUNC1(mosi, FUNC0(spi->num), false, false);
}