#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_9__ {scalar_t__ state; int position; int /*<<< orphan*/  filesize; scalar_t__ conn_data; } ;
typedef  TYPE_2__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ DISCONNECTED ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ READY ; 
 scalar_t__ UPLOADING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*,int) ; 
 int FUNC4 (scalar_t__,unsigned char const*,int) ; 
 int FUNC5 (TYPE_1__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(URLContext *h, const unsigned char *buf, int size)
{
    int err;
    FTPContext *s = h->priv_data;
    int written;

    FUNC3(h, "ftp protocol write %d bytes\n", size);

    if (s->state == DISCONNECTED) {
        if ((err = FUNC5(h)) < 0)
            return err;
    }
    if (s->state == READY) {
        if ((err = FUNC6(s)) < 0)
            return err;
    }
    if (s->conn_data && s->state == UPLOADING) {
        written = FUNC4(s->conn_data, buf, size);
        if (written > 0) {
            s->position += written;
            s->filesize = FUNC1(s->filesize, s->position);
        }
        return written;
    }

    FUNC2(h, AV_LOG_ERROR, "FTP write failed\n");
    return FUNC0(EIO);
}