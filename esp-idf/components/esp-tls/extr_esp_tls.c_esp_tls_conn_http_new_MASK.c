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
struct http_parser_url {TYPE_1__* field_data; } ;
typedef  int /*<<< orphan*/  esp_tls_t ;
typedef  int /*<<< orphan*/  esp_tls_cfg_t ;
struct TYPE_2__ {size_t off; int /*<<< orphan*/  len; } ;

/* Variables and functions */
 size_t UF_HOST ; 
 int FUNC0 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char const*,struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC4 (struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

esp_tls_t *FUNC6(const char *url, const esp_tls_cfg_t *cfg)
{
    /* Parse URI */
    struct http_parser_url u;
    FUNC4(&u);
    FUNC3(url, FUNC5(url), 0, &u);
    esp_tls_t *tls = FUNC1();
    if (!tls) {
        return NULL;
    }
    /* Connect to host */
    if (FUNC0(&url[u.field_data[UF_HOST].off], u.field_data[UF_HOST].len,
                              FUNC2(url, &u), cfg, tls) == 1) {
        return tls;
    }
    return NULL;
}