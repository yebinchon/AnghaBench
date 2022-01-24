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
typedef  int int32_t ;

/* Variables and functions */
 int INT32_MAX ; 
 int FUNC0 (int) ; 
 scalar_t__ FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int FUNC3 (char const*,char**,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int32_t FUNC4(const char *value, int32_t min)
{
    char *fraction;
    int  scale = 10000;
    int32_t mb = 0;
    int sign   = 1;
    int db;

    if (!value)
        return min;

    value += FUNC2(value, " \t");

    if (*value == '-')
        sign = -1;

    db = FUNC3(value, &fraction, 0);
    if (*fraction++ == '.') {
        while (FUNC1(*fraction) && scale) {
            mb += scale * (*fraction - '0');
            scale /= 10;
            fraction++;
        }
    }

    if (FUNC0(db) > (INT32_MAX - mb) / 100000)
        return min;

    return db * 100000 + sign * mb;
}