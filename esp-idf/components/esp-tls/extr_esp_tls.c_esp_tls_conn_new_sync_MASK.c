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
typedef  int /*<<< orphan*/  esp_tls_t ;
typedef  int /*<<< orphan*/  esp_tls_cfg_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
 int FUNC1 (char const*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC2(const char *hostname, int hostlen, int port, const esp_tls_cfg_t *cfg, esp_tls_t *tls)
{
    /* esp_tls_conn_new_sync() is a sync alternative to esp_tls_conn_new_async() with symetric function prototype
    it is an alternative to esp_tls_conn_new() which is left for compatibility reasons */
    while (1) {
        int ret = FUNC1(hostname, hostlen, port, cfg, tls);
        if (ret == 1) {
            return ret;
        } else if (ret == -1) {
            FUNC0(TAG, "Failed to open new connection");
            return -1;
        }
    }
    return 0;
}