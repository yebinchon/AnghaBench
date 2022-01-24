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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * g_wpa_client_cert ; 
 scalar_t__ g_wpa_client_cert_len ; 
 int /*<<< orphan*/ * g_wpa_private_key ; 
 scalar_t__ g_wpa_private_key_len ; 
 int /*<<< orphan*/ * g_wpa_private_key_passwd ; 
 scalar_t__ g_wpa_private_key_passwd_len ; 

void FUNC1(void)
{
    FUNC0();

    g_wpa_client_cert = NULL;
    g_wpa_client_cert_len = 0;
    g_wpa_private_key = NULL;
    g_wpa_private_key_len = 0;
    g_wpa_private_key_passwd = NULL;
    g_wpa_private_key_passwd_len = 0;
}