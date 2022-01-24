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
typedef  char uint8_t ;
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ buf; } ;
typedef  TYPE_1__ AVProbeData ;

/* Variables and functions */
 int AVPROBE_SCORE_MAX ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int FUNC3 (int,int) ; 

__attribute__((used)) static int FUNC4(const AVProbeData *p)
{
    uint32_t key, data;
    uint8_t header[8];

    /* Decrypt first 8 bytes of the header */
    data = FUNC0(p->buf);
    key  = data ^ 0x52656453;
    data ^= key;
    FUNC2(header, data);
    key = FUNC3(key, 11);

    key += FUNC3(key, 3);
    data = FUNC0(p->buf + 4) ^ key;
    FUNC2(header + 4, data);

    if (FUNC1(header) == FUNC1("RedSpark"))
        return AVPROBE_SCORE_MAX;

    return 0;
}