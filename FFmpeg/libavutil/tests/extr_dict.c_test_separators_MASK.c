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
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,char const,char const) ; 
 int FUNC3 (int /*<<< orphan*/ **,char*,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char**) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void FUNC7(const AVDictionary *m, const char pair, const char val)
{
    AVDictionary *dict = NULL;
    char pairs[] = {pair , '\0'};
    char vals[]  = {val, '\0'};

    char *buffer = NULL;
    int ret;

    FUNC0(&dict, m, 0);
    FUNC5(dict);
    FUNC2(dict, &buffer, val, pair);
    FUNC6("%s\n", buffer);
    FUNC1(&dict);
    ret = FUNC3(&dict, buffer, vals, pairs, 0);
    FUNC6("ret %d\n", ret);
    FUNC4(&buffer);
    FUNC5(dict);
    FUNC1(&dict);
}