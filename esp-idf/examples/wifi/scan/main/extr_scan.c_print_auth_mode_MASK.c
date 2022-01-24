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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  TAG ; 
#define  WIFI_AUTH_OPEN 133 
#define  WIFI_AUTH_WEP 132 
#define  WIFI_AUTH_WPA2_ENTERPRISE 131 
#define  WIFI_AUTH_WPA2_PSK 130 
#define  WIFI_AUTH_WPA_PSK 129 
#define  WIFI_AUTH_WPA_WPA2_PSK 128 

__attribute__((used)) static void FUNC1(int authmode)
{
    switch (authmode) {
    case WIFI_AUTH_OPEN:
        FUNC0(TAG, "Authmode \tWIFI_AUTH_OPEN");
        break;
    case WIFI_AUTH_WEP:
        FUNC0(TAG, "Authmode \tWIFI_AUTH_WEP");
        break;
    case WIFI_AUTH_WPA_PSK:
        FUNC0(TAG, "Authmode \tWIFI_AUTH_WPA_PSK");
        break;
    case WIFI_AUTH_WPA2_PSK:
        FUNC0(TAG, "Authmode \tWIFI_AUTH_WPA2_PSK");
        break;
    case WIFI_AUTH_WPA_WPA2_PSK:
        FUNC0(TAG, "Authmode \tWIFI_AUTH_WPA_WPA2_PSK");
        break;
    case WIFI_AUTH_WPA2_ENTERPRISE:
        FUNC0(TAG, "Authmode \tWIFI_AUTH_WPA2_ENTERPRISE");
        break;
    default:
        FUNC0(TAG, "Authmode \tWIFI_AUTH_UNKNOWN");
        break;
    }
}