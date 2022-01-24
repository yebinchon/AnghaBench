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
struct rendition_info {char* type; char* uri; char* group_id; char* language; char* assoc_language; char* name; char* defaultr; char* forced; char* characteristics; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC1(struct rendition_info *info, const char *key,
                                  int key_len, char **dest, int *dest_len)
{
    if (!FUNC0(key, "TYPE=", key_len)) {
        *dest     =        info->type;
        *dest_len = sizeof(info->type);
    } else if (!FUNC0(key, "URI=", key_len)) {
        *dest     =        info->uri;
        *dest_len = sizeof(info->uri);
    } else if (!FUNC0(key, "GROUP-ID=", key_len)) {
        *dest     =        info->group_id;
        *dest_len = sizeof(info->group_id);
    } else if (!FUNC0(key, "LANGUAGE=", key_len)) {
        *dest     =        info->language;
        *dest_len = sizeof(info->language);
    } else if (!FUNC0(key, "ASSOC-LANGUAGE=", key_len)) {
        *dest     =        info->assoc_language;
        *dest_len = sizeof(info->assoc_language);
    } else if (!FUNC0(key, "NAME=", key_len)) {
        *dest     =        info->name;
        *dest_len = sizeof(info->name);
    } else if (!FUNC0(key, "DEFAULT=", key_len)) {
        *dest     =        info->defaultr;
        *dest_len = sizeof(info->defaultr);
    } else if (!FUNC0(key, "FORCED=", key_len)) {
        *dest     =        info->forced;
        *dest_len = sizeof(info->forced);
    } else if (!FUNC0(key, "CHARACTERISTICS=", key_len)) {
        *dest     =        info->characteristics;
        *dest_len = sizeof(info->characteristics);
    }
    /*
     * ignored:
     * - AUTOSELECT: client may autoselect based on e.g. system language
     * - INSTREAM-ID: EIA-608 closed caption number ("CC1".."CC4")
     */
}