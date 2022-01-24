#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_1__* xmlNodePtr ;
struct TYPE_5__ {scalar_t__ type; } ;
struct TYPE_4__ {TYPE_2__* children; } ;

/* Variables and functions */
 scalar_t__ XML_TEXT_NODE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 char* FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static char *FUNC8(xmlNodePtr *baseurl_nodes,
                             int n_baseurl_nodes,
                             int max_url_size,
                             char *rep_id_val,
                             char *rep_bandwidth_val,
                             char *val)
{
    int i;
    char *text;
    char *url = NULL;
    char *tmp_str = FUNC1(max_url_size);
    char *tmp_str_2 = FUNC1(max_url_size);

    if (!tmp_str || !tmp_str_2) {
        return NULL;
    }

    for (i = 0; i < n_baseurl_nodes; ++i) {
        if (baseurl_nodes[i] &&
            baseurl_nodes[i]->children &&
            baseurl_nodes[i]->children->type == XML_TEXT_NODE) {
            text = FUNC7(baseurl_nodes[i]->children);
            if (text) {
                FUNC5(tmp_str, 0, max_url_size);
                FUNC5(tmp_str_2, 0, max_url_size);
                FUNC4(tmp_str_2, max_url_size, tmp_str, text);
                FUNC3(tmp_str, tmp_str_2, max_url_size);
                FUNC6(text);
            }
        }
    }

    if (val)
        FUNC4(tmp_str, max_url_size, tmp_str, val);

    if (rep_id_val) {
        url = FUNC2(tmp_str, "$RepresentationID$", (const char*)rep_id_val);
        if (!url) {
            goto end;
        }
        FUNC3(tmp_str, url, max_url_size);
    }
    if (rep_bandwidth_val && tmp_str[0] != '\0') {
        // free any previously assigned url before reassigning
        FUNC0(url);
        url = FUNC2(tmp_str, "$Bandwidth$", (const char*)rep_bandwidth_val);
        if (!url) {
            goto end;
        }
    }
end:
    FUNC0(tmp_str);
    FUNC0(tmp_str_2);
    return url;
}