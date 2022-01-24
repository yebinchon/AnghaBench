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
typedef  int /*<<< orphan*/  MetadataContext ;

/* Variables and functions */
 int FUNC0 (int const,int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*,int const) ; 

__attribute__((used)) static int FUNC3(MetadataContext *s, const char *value1, const char *value2)
{
    const int len1 = FUNC1(value1);
    const int len2 = FUNC1(value2);

    return !FUNC2(value1 + FUNC0(len1 - len2, 0), value2, len2);
}