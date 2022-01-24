#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  node ;
struct TYPE_7__ {TYPE_2__* context; } ;
typedef  TYPE_1__ V4L2m2mPriv ;
struct TYPE_8__ {int /*<<< orphan*/  devname; } ;
typedef  TYPE_2__ V4L2m2mContext ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_DEBUG ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int /*<<< orphan*/  EINVAL ; 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*,int,char*,char*) ; 
 scalar_t__ FUNC7 (char*) ; 
 scalar_t__ FUNC8 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 int FUNC10 (TYPE_2__*) ; 
 int FUNC11 (TYPE_2__*) ; 

int FUNC12(V4L2m2mPriv *priv)
{
    int ret = FUNC0(EINVAL);
    struct dirent *entry;
    char node[PATH_MAX];
    DIR *dirp;

    V4L2m2mContext *s = priv->context;

    dirp = FUNC4("/dev");
    if (!dirp)
        return FUNC0(errno);

    for (entry = FUNC5(dirp); entry; entry = FUNC5(dirp)) {

        if (FUNC8(entry->d_name, "video", 5))
            continue;

        FUNC6(node, sizeof(node), "/dev/%s", entry->d_name);
        FUNC1(priv, AV_LOG_DEBUG, "probing device %s\n", node);
        FUNC9(s->devname, node, FUNC7(node) + 1);
        ret = FUNC11(s);
        if (!ret)
            break;
    }

    FUNC2(dirp);

    if (ret) {
        FUNC1(priv, AV_LOG_ERROR, "Could not find a valid device\n");
        FUNC3(s->devname, 0, sizeof(s->devname));

        return ret;
    }

    FUNC1(priv, AV_LOG_INFO, "Using device %s\n", node);

    return FUNC10(s);
}