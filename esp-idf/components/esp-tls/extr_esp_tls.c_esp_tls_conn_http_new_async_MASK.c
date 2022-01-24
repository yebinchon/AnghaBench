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
 int /*<<< orphan*/  FUNC1 (char const*,struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC3 (struct http_parser_url*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 

int FUNC5(const char *url, const esp_tls_cfg_t *cfg, esp_tls_t *tls)
{
    /* Parse URI */
    struct http_parser_url u;
    FUNC3(&u);
    FUNC2(url, FUNC4(url), 0, &u);

    /* Connect to host */
    return FUNC0(&url[u.field_data[UF_HOST].off], u.field_data[UF_HOST].len,
                                  FUNC1(url, &u), cfg, tls);
}