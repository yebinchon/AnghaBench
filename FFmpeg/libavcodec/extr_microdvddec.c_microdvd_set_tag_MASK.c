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
typedef  int /*<<< orphan*/  tag ;
struct microdvd_tag {int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  MICRODVD_TAGS ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct microdvd_tag*,struct microdvd_tag*,int) ; 

__attribute__((used)) static void FUNC2(struct microdvd_tag *tags, struct microdvd_tag tag)
{
    int tag_index = FUNC0(MICRODVD_TAGS, tag.key);

    if (tag_index < 0)
        return;
    FUNC1(&tags[tag_index], &tag, sizeof(tag));
}