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
struct TYPE_3__ {char* filename; } ;
typedef  TYPE_1__ URLContext ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 scalar_t__ EINVAL ; 
 scalar_t__ ENOSYS ; 
 scalar_t__ ENOTDIR ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*,char const**) ; 
 scalar_t__ errno ; 
 int FUNC2 (char const*) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static int FUNC4(URLContext *h)
{
#if HAVE_UNISTD_H
    int ret;
    const char *filename = h->filename;
    av_strstart(filename, "file:", &filename);

    ret = rmdir(filename);
    if (ret < 0 && (errno == ENOTDIR
#   ifdef _WIN32
        || errno == EINVAL
#   endif
        ))
        ret = unlink(filename);
    if (ret < 0)
        return AVERROR(errno);

    return ret;
#else
    return FUNC0(ENOSYS);
#endif /* HAVE_UNISTD_H */
}