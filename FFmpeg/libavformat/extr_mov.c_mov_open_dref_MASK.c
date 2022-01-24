#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  filename ;
struct TYPE_10__ {int /*<<< orphan*/  (* io_open ) (TYPE_3__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;} ;
struct TYPE_9__ {TYPE_3__* fc; scalar_t__ use_absolute_path; } ;
struct TYPE_8__ {int nlvl_to; scalar_t__ nlvl_from; char* path; } ;
typedef  TYPE_1__ MOVDref ;
typedef  TYPE_2__ MOVContext ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AVIO_FLAG_READ ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*,int) ; 
 int FUNC4 (char*) ; 
 char* FUNC5 (char const*,char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,char*) ; 

__attribute__((used)) static int FUNC10(MOVContext *c, AVIOContext **pb, const char *src, MOVDref *ref)
{
    /* try relative path, we do not try the absolute because it can leak information about our
       system to an attacker */
    if (ref->nlvl_to > 0 && ref->nlvl_from > 0) {
        char filename[1025];
        const char *src_path;
        int i, l;

        /* find a source dir */
        src_path = FUNC5(src, '/');
        if (src_path)
            src_path++;
        else
            src_path = src;

        /* find a next level down to target */
        for (i = 0, l = FUNC4(ref->path) - 1; l >= 0; l--)
            if (ref->path[l] == '/') {
                if (i == ref->nlvl_to - 1)
                    break;
                else
                    i++;
            }

        /* compose filename if next level down to target was found */
        if (i == ref->nlvl_to - 1 && src_path - src  < sizeof(filename)) {
            FUNC3(filename, src, src_path - src);
            filename[src_path - src] = 0;

            for (i = 1; i < ref->nlvl_from; i++)
                FUNC2(filename, "../", sizeof(filename));

            FUNC2(filename, ref->path + l + 1, sizeof(filename));
            if (!c->use_absolute_path) {
                int same_origin = FUNC9(src, filename);

                if (!same_origin) {
                    FUNC1(c->fc, AV_LOG_ERROR,
                        "Reference with mismatching origin, %s not tried for security reasons, "
                        "set demuxer option use_absolute_path to allow it anyway\n",
                        ref->path);
                    return FUNC0(ENOENT);
                }

                if(FUNC6(ref->path + l + 1, "..") ||
                   FUNC6(ref->path + l + 1, ":") ||
                   (ref->nlvl_from > 1 && same_origin < 0) ||
                   (filename[0] == '/' && src_path == src))
                    return FUNC0(ENOENT);
            }

            if (FUNC4(filename) + 1 == sizeof(filename))
                return FUNC0(ENOENT);
            if (!c->fc->io_open(c->fc, pb, filename, AVIO_FLAG_READ, NULL))
                return 0;
        }
    } else if (c->use_absolute_path) {
        FUNC1(c->fc, AV_LOG_WARNING, "Using absolute path on user request, "
               "this is a possible security issue\n");
        if (!c->fc->io_open(c->fc, pb, ref->path, AVIO_FLAG_READ, NULL))
            return 0;
    } else {
        FUNC1(c->fc, AV_LOG_ERROR,
               "Absolute path %s not tried for security reasons, "
               "set demuxer option use_absolute_path to allow absolute paths\n",
               ref->path);
    }

    return FUNC0(ENOENT);
}