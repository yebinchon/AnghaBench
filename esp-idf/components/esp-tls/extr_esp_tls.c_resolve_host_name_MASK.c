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
struct addrinfo {int /*<<< orphan*/  ai_socktype; int /*<<< orphan*/  ai_family; } ;
typedef  int /*<<< orphan*/  hints ;
typedef  int /*<<< orphan*/  esp_err_t ;

/* Variables and functions */
 int /*<<< orphan*/  AF_UNSPEC ; 
 int /*<<< orphan*/  ESP_ERR_ESP_TLS_CANNOT_RESOLVE_HOSTNAME ; 
 int /*<<< orphan*/  ESP_ERR_NO_MEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  ESP_OK ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  TAG ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ *,struct addrinfo*,struct addrinfo**) ; 
 int /*<<< orphan*/  FUNC4 (struct addrinfo*,int /*<<< orphan*/ ,int) ; 
 char* FUNC5 (char const*,size_t) ; 

__attribute__((used)) static esp_err_t FUNC6(const char *host, size_t hostlen, struct addrinfo **address_info)
{
    struct addrinfo hints;
    FUNC4(&hints, 0, sizeof(hints));
    hints.ai_family = AF_UNSPEC;
    hints.ai_socktype = SOCK_STREAM;

    char *use_host = FUNC5(host, hostlen);
    if (!use_host) {
        return ESP_ERR_NO_MEM;
    }

    FUNC0(TAG, "host:%s: strlen %lu", use_host, (unsigned long)hostlen);
    if (FUNC3(use_host, NULL, &hints, address_info)) {
        FUNC1(TAG, "couldn't get hostname for :%s:", use_host);
        FUNC2(use_host);
        return ESP_ERR_ESP_TLS_CANNOT_RESOLVE_HOSTNAME;
    }
    FUNC2(use_host);
    return ESP_OK;
}