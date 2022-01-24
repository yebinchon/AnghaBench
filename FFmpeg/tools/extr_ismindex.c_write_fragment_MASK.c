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
typedef  int /*<<< orphan*/  errbuf ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,char const*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC7(const char *filename, AVIOContext *in)
{
    AVIOContext *out = NULL;
    int ret;

    if ((ret = FUNC4(&out, filename, AVIO_FLAG_WRITE, NULL, NULL)) < 0) {
        char errbuf[100];
        FUNC1(ret, errbuf, sizeof(errbuf));
        FUNC6(stderr, "Unable to open %s: %s\n", filename, errbuf);
        return ret;
    }
    ret = FUNC5(in, out, FUNC0('m', 'o', 'o', 'f'));
    if (!ret)
        ret = FUNC5(in, out, FUNC0('m', 'd', 'a', 't'));

    FUNC3(out);
    FUNC2(out);

    return ret;
}