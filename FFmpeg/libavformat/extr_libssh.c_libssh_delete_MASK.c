#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* sftp_attributes ;
typedef  int /*<<< orphan*/  path ;
struct TYPE_10__ {int /*<<< orphan*/  filename; TYPE_3__* priv_data; } ;
typedef  TYPE_2__ URLContext ;
struct TYPE_11__ {int /*<<< orphan*/  sftp; } ;
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_3__ LIBSSHContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int MAX_URL_SIZE ; 
 scalar_t__ SSH_FILEXFER_TYPE_DIRECTORY ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC8(URLContext *h)
{
    int ret;
    LIBSSHContext *libssh = h->priv_data;
    sftp_attributes attr = NULL;
    char path[MAX_URL_SIZE];

    if ((ret = FUNC2(h, h->filename, path, sizeof(path))) < 0)
        goto cleanup;

    if (!(attr = FUNC6(libssh->sftp, path))) {
        ret = FUNC0(FUNC4(libssh->sftp));
        goto cleanup;
    }

    if (attr->type == SSH_FILEXFER_TYPE_DIRECTORY) {
        if (FUNC5(libssh->sftp, path) < 0) {
            ret = FUNC0(FUNC4(libssh->sftp));
            goto cleanup;
        }
    } else {
        if (FUNC7(libssh->sftp, path) < 0) {
            ret = FUNC0(FUNC4(libssh->sftp));
            goto cleanup;
        }
    }

    ret = 0;

cleanup:
    if (attr)
        FUNC3(attr);
    FUNC1(h);
    return ret;
}