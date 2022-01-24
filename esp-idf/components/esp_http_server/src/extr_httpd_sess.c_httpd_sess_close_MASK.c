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
struct sock_db {scalar_t__ lru_counter; int fd; scalar_t__ handle; } ;
struct httpd_data {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct httpd_data*,int) ; 

__attribute__((used)) static void FUNC3(void *arg)
{
    struct sock_db *sock_db = (struct sock_db *)arg;
    if (sock_db) {
        if (sock_db->lru_counter == 0) {
            FUNC0(TAG, "Skipping session close for %d as it seems to be a race condition", sock_db->fd);
            return;
        }
        int fd = sock_db->fd;
        struct httpd_data *hd = (struct httpd_data *) sock_db->handle;
        FUNC2(hd, fd);
        FUNC1(fd);
    }
}