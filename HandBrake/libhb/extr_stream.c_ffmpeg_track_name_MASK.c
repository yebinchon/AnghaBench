#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__* value; } ;
struct TYPE_6__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVStream ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (char*,char const*) ; 

__attribute__((used)) static const char * FUNC3(AVStream * st, const char * lang)
{
    AVDictionaryEntry * t;
    char              * key;

    // Use key with no language extension
    // ffmpeg sets this for "und" entries or when source format
    // doesn't have a language field
    t = FUNC0(st->metadata, "title", NULL, 0);
    if (t != NULL && t->value[0] != 0)
    {
        return t->value;
    }
    // Try explicit "und" extension
    t = FUNC0(st->metadata, "title-und", NULL, 0);
    if (t != NULL && t->value[0] != 0)
    {
        return t->value;
    }
    // Try source track language
    key = FUNC2("title-%s", lang);
    t = FUNC0(st->metadata, key, NULL, 0);
    FUNC1(key);
    if (t != NULL && t->value[0] != 0)
    {
        return t->value;
    }
    while ((t = FUNC0(st->metadata, "title-", t, AV_DICT_IGNORE_SUFFIX)))
    {
        // Use first available
        if (t != NULL && t->value[0] != 0)
        {
            return t->value;
        }
    }
    return NULL;
}