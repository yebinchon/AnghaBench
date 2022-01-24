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
struct TYPE_2__ {size_t off; scalar_t__ len; } ;

/* Variables and functions */
 size_t UF_PORT ; 
 size_t UF_SCHEMA ; 
 scalar_t__ FUNC0 (char const*,char*,scalar_t__) ; 
 int FUNC1 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC2(const char *url, struct http_parser_url *u)
{
    if (u->field_data[UF_PORT].len) {
        return FUNC1(&url[u->field_data[UF_PORT].off], NULL, 10);
    } else {
        if (FUNC0(&url[u->field_data[UF_SCHEMA].off], "http", u->field_data[UF_SCHEMA].len) == 0) {
            return 80;
        } else if (FUNC0(&url[u->field_data[UF_SCHEMA].off], "https", u->field_data[UF_SCHEMA].len) == 0) {
            return 443;
        }
    }
    return 0;
}