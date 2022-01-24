#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_4__ {int /*<<< orphan*/ * pb; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,int /*<<< orphan*/ ,int,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, int64_t size)
{
    AVIOContext *pb = s->pb;
    int len1, len2, len3, len4, len5;

    len1 = FUNC0(pb);
    len2 = FUNC0(pb);
    len3 = FUNC0(pb);
    len4 = FUNC0(pb);
    len5 = FUNC0(pb);
    FUNC2(s, "title", 0, len1, 32);
    FUNC2(s, "author", 0, len2, 32);
    FUNC2(s, "copyright", 0, len3, 32);
    FUNC2(s, "comment", 0, len4, 32);
    FUNC1(pb, len5);

    return 0;
}