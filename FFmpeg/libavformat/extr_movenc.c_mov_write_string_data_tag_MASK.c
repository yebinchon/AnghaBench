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
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int) ; 
 int FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static int FUNC6(AVIOContext *pb, const char *data, int lang, int long_style)
{
    if (long_style) {
        int size = 16 + FUNC5(data);
        FUNC1(pb, size); /* size */
        FUNC4(pb, "data");
        FUNC1(pb, 1);
        FUNC1(pb, 0);
        FUNC2(pb, data, FUNC5(data));
        return size;
    } else {
        if (!lang)
            lang = FUNC3("und", 1);
        FUNC0(pb, FUNC5(data)); /* string length */
        FUNC0(pb, lang);
        FUNC2(pb, data, FUNC5(data));
        return FUNC5(data) + 4;
    }
}