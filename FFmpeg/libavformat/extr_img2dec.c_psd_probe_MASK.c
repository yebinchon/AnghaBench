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
typedef  int uint8_t ;
typedef  int uint16_t ;
struct TYPE_3__ {int* buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_EXTENSION ; 
 int FUNC0 (int const*) ; 
 scalar_t__ FUNC1 (int const*) ; 
 scalar_t__ FUNC2 (int const*) ; 
 scalar_t__ FUNC3 (char,char,char,char) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    const uint8_t *b = p->buf;
    int ret = 0;
    uint16_t color_mode;

    if (FUNC2(b) == FUNC3('8','B','P','S')) {
        ret += 1;
    } else {
        return 0;
    }

    if ((b[4] == 0) && (b[5] == 1)) {/* version 1 is PSD, version 2 is PSB */
        ret += 1;
    } else {
        return 0;
    }

    if ((FUNC2(b+6) == 0) && (FUNC1(b+10) == 0))/* reserved must be 0 */
        ret += 1;

    color_mode = FUNC0(b+24);
    if ((color_mode <= 9) && (color_mode != 5) && (color_mode != 6))
        ret += 1;

    return AVPROBE_SCORE_EXTENSION + ret;
}