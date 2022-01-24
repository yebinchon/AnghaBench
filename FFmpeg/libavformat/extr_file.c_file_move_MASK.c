#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* filename; } ;
typedef  TYPE_1__ URLContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 

__attribute__((used)) static int FUNC3(URLContext *h_src, URLContext *h_dst)
{
    const char *filename_src = h_src->filename;
    const char *filename_dst = h_dst->filename;
    FUNC1(filename_src, "file:", &filename_src);
    FUNC1(filename_dst, "file:", &filename_dst);

    if (FUNC2(filename_src, filename_dst) < 0)
        return FUNC0(errno);

    return 0;
}