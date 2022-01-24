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
typedef  int /*<<< orphan*/  ID3v2ExtraMeta ;
typedef  int /*<<< orphan*/  AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  ID3v2_DEFAULT_MAGIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **,int) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s, int len)
{
    ID3v2ExtraMeta *id3v2_extra_meta = NULL;

    FUNC3(s, ID3v2_DEFAULT_MAGIC, &id3v2_extra_meta, len);
    if (id3v2_extra_meta) {
        FUNC1(s, &id3v2_extra_meta);
        FUNC2(s, &id3v2_extra_meta);
    }
    FUNC0(&id3v2_extra_meta);
}