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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  color_name ;
struct TYPE_3__ {int rgb_color; } ;
typedef  TYPE_1__ ColorEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  color_table ; 
 int /*<<< orphan*/  color_table_compare ; 
 int FUNC4 (char const) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

__attribute__((used)) static uint32_t FUNC6(const char *p, int len)
{
    uint32_t ret = 0xFF000000;
    const ColorEntry *entry;
    char color_name[100];

    len = FUNC1(FUNC0(len, 0), sizeof(color_name) - 1);

    if (*p == '#') {
        p++;
        len--;
        if (len == 3) {
            ret |= (FUNC4(p[2]) <<  4) |
                   (FUNC4(p[1]) << 12) |
                   (FUNC4(p[0]) << 20);
        } else if (len == 4) {
            ret  = (FUNC4(p[3]) <<  4) |
                   (FUNC4(p[2]) << 12) |
                   (FUNC4(p[1]) << 20) |
                   (FUNC4(p[0]) << 28);
        } else if (len == 6) {
            ret |=  FUNC4(p[5])        |
                   (FUNC4(p[4]) <<  4) |
                   (FUNC4(p[3]) <<  8) |
                   (FUNC4(p[2]) << 12) |
                   (FUNC4(p[1]) << 16) |
                   (FUNC4(p[0]) << 20);
        } else if (len == 8) {
            ret  =  FUNC4(p[7])        |
                   (FUNC4(p[6]) <<  4) |
                   (FUNC4(p[5]) <<  8) |
                   (FUNC4(p[4]) << 12) |
                   (FUNC4(p[3]) << 16) |
                   (FUNC4(p[2]) << 20) |
                   (FUNC4(p[1]) << 24) |
                   (FUNC4(p[0]) << 28);
        }
    } else {
        FUNC5(color_name, p, len);
        color_name[len] = '\0';

        entry = FUNC3(color_name,
                        color_table,
                        FUNC2(color_table),
                        sizeof(ColorEntry),
                        color_table_compare);

        if (!entry)
            return ret;

        ret = entry->rgb_color;
    }
    return ret;
}