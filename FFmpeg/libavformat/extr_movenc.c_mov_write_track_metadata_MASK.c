#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_6__ {int /*<<< orphan*/  value; } ;
struct TYPE_5__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, AVStream *st,
                                    const char *tag, const char *str)
{
    int64_t pos = FUNC1(pb);
    AVDictionaryEntry *t = FUNC0(st->metadata, str, NULL, 0);
    if (!t || !FUNC7(t->value))
        return 0;

    FUNC2(pb, 0);   /* size */
    FUNC4(pb, tag); /* type */
    FUNC3(pb, t->value, FUNC5(t->value)); /* UTF8 string value */
    return FUNC6(pb, pos);
}