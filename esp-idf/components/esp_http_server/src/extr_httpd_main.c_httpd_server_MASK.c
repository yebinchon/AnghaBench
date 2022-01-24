#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ status; } ;
struct TYPE_3__ {scalar_t__ lru_purge_enable; } ;
struct httpd_data {int listen_fd; int ctrl_fd; TYPE_2__ hd_td; TYPE_1__ config; } ;
typedef  int /*<<< orphan*/  fd_set ;
typedef  scalar_t__ esp_err_t ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ESP_OK ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int,int) ; 
 int /*<<< orphan*/  TAG ; 
 scalar_t__ THREAD_STOPPING ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC9 (struct httpd_data*,int) ; 
 scalar_t__ FUNC10 (struct httpd_data*) ; 
 int /*<<< orphan*/  FUNC11 (struct httpd_data*) ; 
 int FUNC12 (struct httpd_data*,int) ; 
 int /*<<< orphan*/  FUNC13 (struct httpd_data*) ; 
 int FUNC14 (struct httpd_data*,int) ; 
 scalar_t__ FUNC15 (struct httpd_data*,int) ; 
 scalar_t__ FUNC16 (struct httpd_data*,int) ; 
 int /*<<< orphan*/  FUNC17 (struct httpd_data*,int /*<<< orphan*/ *,int*) ; 
 int FUNC18 (int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static esp_err_t FUNC19(struct httpd_data *hd)
{
    fd_set read_set;
    FUNC5(&read_set);
    if (hd->config.lru_purge_enable || FUNC10(hd)) {
        /* Only listen for new connections if server has capacity to
         * handle more (or when LRU purge is enabled, in which case
         * older connections will be closed) */
        FUNC4(hd->listen_fd, &read_set);
    }
    FUNC4(hd->ctrl_fd, &read_set);

    int tmp_max_fd;
    FUNC17(hd, &read_set, &tmp_max_fd);
    int maxfd = FUNC7(hd->listen_fd, tmp_max_fd);
    tmp_max_fd = maxfd;
    maxfd = FUNC7(hd->ctrl_fd, tmp_max_fd);

    FUNC0(TAG, FUNC6("doing select maxfd+1 = %d"), maxfd + 1);
    int active_cnt = FUNC18(maxfd + 1, &read_set, NULL, NULL, NULL);
    if (active_cnt < 0) {
        FUNC1(TAG, FUNC6("error in select (%d)"), errno);
        FUNC13(hd);
        return ESP_OK;
    }

    /* Case0: Do we have a control message? */
    if (FUNC3(hd->ctrl_fd, &read_set)) {
        FUNC0(TAG, FUNC6("processing ctrl message"));
        FUNC11(hd);
        if (hd->hd_td.status == THREAD_STOPPING) {
            FUNC0(TAG, FUNC6("stopping thread"));
            return ESP_FAIL;
        }
    }

    /* Case1: Do we have any activity on the current data
     * sessions? */
    int fd = -1;
    while ((fd = FUNC14(hd, fd)) != -1) {
        if (FUNC3(fd, &read_set) || (FUNC15(hd, fd))) {
            FUNC0(TAG, FUNC6("processing socket %d"), fd);
            if (FUNC16(hd, fd) != ESP_OK) {
                FUNC0(TAG, FUNC6("closing socket %d"), fd);
                FUNC8(fd);
                /* Delete session and update fd to that
                 * preceding the one being deleted */
                fd = FUNC12(hd, fd);
            }
        }
    }

    /* Case2: Do we have any incoming connection requests to
     * process? */
    if (FUNC3(hd->listen_fd, &read_set)) {
        FUNC0(TAG, FUNC6("processing listen socket %d"), hd->listen_fd);
        if (FUNC9(hd, hd->listen_fd) != ESP_OK) {
            FUNC2(TAG, FUNC6("error accepting new connection"));
        }
    }
    return ESP_OK;
}