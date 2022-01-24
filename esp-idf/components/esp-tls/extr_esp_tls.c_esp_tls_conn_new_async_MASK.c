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
 int FUNC0 (char const*,int,int,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 

int FUNC1(const char *hostname, int hostlen, int port, const esp_tls_cfg_t *cfg, esp_tls_t *tls)
{
    return FUNC0(hostname, hostlen, port, cfg, tls);
}