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
typedef  int /*<<< orphan*/  tmp_str ;
struct segment {int size; void* url_offset; int /*<<< orphan*/  url; } ;
struct playlist {int /*<<< orphan*/  n_init_sections; int /*<<< orphan*/  init_sections; } ;
struct init_section_info {char* byterange; int /*<<< orphan*/ * uri; } ;

/* Variables and functions */
 int MAX_URL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct segment*) ; 
 struct segment* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct segment*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC5 (char*,char) ; 
 void* FUNC6 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct segment *FUNC7(struct playlist *pls,
                                        struct init_section_info *info,
                                        const char *url_base)
{
    struct segment *sec;
    char *ptr;
    char tmp_str[MAX_URL_SIZE];

    if (!info->uri[0])
        return NULL;

    sec = FUNC1(sizeof(*sec));
    if (!sec)
        return NULL;

    FUNC4(tmp_str, sizeof(tmp_str), url_base, info->uri);
    sec->url = FUNC2(tmp_str);
    if (!sec->url) {
        FUNC0(sec);
        return NULL;
    }

    if (info->byterange[0]) {
        sec->size = FUNC6(info->byterange, NULL, 10);
        ptr = FUNC5(info->byterange, '@');
        if (ptr)
            sec->url_offset = FUNC6(ptr+1, NULL, 10);
    } else {
        /* the entire file is the init section */
        sec->size = -1;
    }

    FUNC3(&pls->init_sections, &pls->n_init_sections, sec);

    return sec;
}