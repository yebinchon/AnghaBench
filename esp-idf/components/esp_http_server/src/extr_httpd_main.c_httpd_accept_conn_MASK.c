#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tv ;
struct timeval {scalar_t__ tv_usec; int /*<<< orphan*/  tv_sec; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
struct TYPE_2__ {int lru_purge_enable; int /*<<< orphan*/  send_wait_timeout; int /*<<< orphan*/  recv_wait_timeout; } ;
struct httpd_data {TYPE_1__ config; } ;
typedef  int socklen_t ;
typedef  scalar_t__ esp_err_t ;
typedef  int /*<<< orphan*/  addr_from ;

/* Variables and functions */
 scalar_t__ ESP_FAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 scalar_t__ ESP_OK ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_RCVTIMEO ; 
 int /*<<< orphan*/  SO_SNDTIMEO ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC3 (int,struct sockaddr*,int*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (struct httpd_data*) ; 
 scalar_t__ FUNC6 (struct httpd_data*) ; 
 scalar_t__ FUNC7 (struct httpd_data*,int) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int) ; 

__attribute__((used)) static esp_err_t FUNC9(struct httpd_data *hd, int listen_fd)
{
    /* If no space is available for new session, close the least recently used one */
    if (hd->config.lru_purge_enable == true) {
        if (!FUNC5(hd)) {
            /* Queue asynchronous closure of the least recently used session */
            return FUNC6(hd);
            /* Returning from this allowes the main server thread to process
             * the queued asynchronous control message for closing LRU session.
             * Since connection request hasn't been addressed yet using accept()
             * therefore httpd_accept_conn() will be called again, but this time
             * with space available for one session
             */
       }
    }

    struct sockaddr_in addr_from;
    socklen_t addr_from_len = sizeof(addr_from);
    int new_fd = FUNC3(listen_fd, (struct sockaddr *)&addr_from, &addr_from_len);
    if (new_fd < 0) {
        FUNC1(TAG, FUNC2("error in accept (%d)"), errno);
        return ESP_FAIL;
    }
    FUNC0(TAG, FUNC2("newfd = %d"), new_fd);

    struct timeval tv;
    /* Set recv timeout of this fd as per config */
    tv.tv_sec = hd->config.recv_wait_timeout;
    tv.tv_usec = 0;
    FUNC8(new_fd, SOL_SOCKET, SO_RCVTIMEO, (const char*)&tv, sizeof(tv));

    /* Set send timeout of this fd as per config */
    tv.tv_sec = hd->config.send_wait_timeout;
    tv.tv_usec = 0;
    FUNC8(new_fd, SOL_SOCKET, SO_SNDTIMEO, (const char*)&tv, sizeof(tv));

    if (ESP_OK != FUNC7(hd, new_fd)) {
        FUNC1(TAG, FUNC2("session creation failed"));
        FUNC4(new_fd);
        return ESP_FAIL;
    }
    FUNC0(TAG, FUNC2("complete"));
    return ESP_OK;
}