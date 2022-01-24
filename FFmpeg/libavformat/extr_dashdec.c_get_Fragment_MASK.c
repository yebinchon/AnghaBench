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
struct fragment {int size; void* url_offset; } ;

/* Variables and functions */
 struct fragment* FUNC0 (int) ; 
 char* FUNC1 (char*,char*,char**) ; 
 void* FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static struct fragment * FUNC3(char *range)
{
    struct fragment * seg =  FUNC0(sizeof(struct fragment));

    if (!seg)
        return NULL;

    seg->size = -1;
    if (range) {
        char *str_end_offset;
        char *str_offset = FUNC1(range, "-", &str_end_offset);
        seg->url_offset = FUNC2(str_offset, NULL, 10);
        seg->size = FUNC2(str_end_offset, NULL, 10) - seg->url_offset;
    }

    return seg;
}