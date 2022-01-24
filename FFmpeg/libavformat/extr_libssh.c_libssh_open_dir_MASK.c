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
typedef  int /*<<< orphan*/  path ;
struct TYPE_7__ {int /*<<< orphan*/  filename; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_8__ {int /*<<< orphan*/  session; int /*<<< orphan*/  sftp; int /*<<< orphan*/  dir; } ;
typedef  TYPE_2__ LIBSSHContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int MAX_URL_SIZE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(URLContext *h)
{
    LIBSSHContext *libssh = h->priv_data;
    int ret;
    char path[MAX_URL_SIZE];

    if ((ret = FUNC3(h, h->filename, path, sizeof(path))) < 0)
        goto fail;

    if (!(libssh->dir = FUNC4(libssh->sftp, path))) {
        FUNC1(libssh, AV_LOG_ERROR, "Error opening sftp dir: %s\n", FUNC5(libssh->session));
        ret = FUNC0(EIO);
        goto fail;
    }

    return 0;

  fail:
    FUNC2(h);
    return ret;
}