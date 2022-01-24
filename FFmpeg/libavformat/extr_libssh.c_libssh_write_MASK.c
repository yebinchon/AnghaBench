#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_6__ {int /*<<< orphan*/  file; } ;
typedef  TYPE_2__ LIBSSHContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ,unsigned char const*,int) ; 

__attribute__((used)) static int FUNC3(URLContext *h, const unsigned char *buf, int size)
{
    LIBSSHContext *libssh = h->priv_data;
    int bytes_written;

    if ((bytes_written = FUNC2(libssh->file, buf, size)) < 0) {
        FUNC1(libssh, AV_LOG_ERROR, "Write error.\n");
        return FUNC0(EIO);
    }
    return bytes_written;
}