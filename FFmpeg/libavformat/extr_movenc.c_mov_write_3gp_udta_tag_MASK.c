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
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char const*,char*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC13(AVIOContext *pb, AVFormatContext *s,
                                  const char *tag, const char *str)
{
    int64_t pos = FUNC2(pb);
    AVDictionaryEntry *t = FUNC1(s->metadata, str, NULL, 0);
    if (!t || !FUNC12(t->value))
        return 0;
    FUNC5(pb, 0);   /* size */
    FUNC7(pb, tag); /* type */
    FUNC5(pb, 0);   /* version + flags */
    if (!FUNC9(tag, "yrrc"))
        FUNC4(pb, FUNC0(t->value));
    else {
        FUNC4(pb, FUNC8("eng")); /* language */
        FUNC6(pb, t->value, FUNC10(t->value) + 1); /* UTF8 string value */
        if (!FUNC9(tag, "albm") &&
            (t = FUNC1(s->metadata, "track", NULL, 0)))
            FUNC3(pb, FUNC0(t->value));
    }
    return FUNC11(pb, pos);
}