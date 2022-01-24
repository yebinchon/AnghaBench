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
struct TYPE_8__ {int /*<<< orphan*/  filename; TYPE_2__* priv_data; } ;
typedef  TYPE_1__ URLContext ;
struct TYPE_9__ {scalar_t__ state; scalar_t__ conn_data; scalar_t__ conn_control; scalar_t__* dir_buffer; } ;
typedef  TYPE_2__ FTPContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  DIR_BUFFER_SIZE ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ LISTING_DIR ; 
 scalar_t__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_2__*) ; 
 int FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC7(URLContext *h)
{
    FTPContext *s = h->priv_data;
    int ret;

    if ((ret = FUNC3(h, h->filename)) < 0)
        goto fail;
    if ((ret = FUNC6(s)) < 0)
        goto fail;
    if ((ret = FUNC4(h)) < 0)
        goto fail;
    if ((ret = FUNC5(s)) < 0)
        goto fail;
    s->dir_buffer = FUNC1(DIR_BUFFER_SIZE);
    if (!s->dir_buffer) {
        ret = FUNC0(ENOMEM);
        goto fail;
    }
    s->dir_buffer[0] = 0;
    if (s->conn_data && s->state == LISTING_DIR)
        return 0;
  fail:
    FUNC2(&s->conn_control);
    FUNC2(&s->conn_data);
    return ret;
}