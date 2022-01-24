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
struct tm {int dummy; } ;
typedef  int int64_t ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,struct tm*) ; 
 int FUNC2 (struct tm*) ; 
 int /*<<< orphan*/  FUNC3 (struct tm*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int64_t FUNC4(const char *date)
{
    struct tm tv;
    FUNC3(&tv, 0, sizeof(struct tm));
    FUNC1(date, "%Y%m%d%H%M%S", &tv);
    return FUNC0(1000000) * FUNC2(&tv);
}