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
typedef  int int64_t ;
struct TYPE_7__ {int /*<<< orphan*/ * metadata; } ;
struct TYPE_6__ {char const* key; char const* value; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_2__ AVChapter ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char*) ; 
 int FUNC2 (char const*) ; 

int64_t FUNC3(AVDictionary *m, const char *vendor_string,
                                AVChapter **chapters, unsigned int nb_chapters)
{
    int64_t len = 8;
    len += FUNC2(vendor_string);
    if (chapters && nb_chapters) {
        for (int i = 0; i < nb_chapters; i++) {
            AVDictionaryEntry *tag = NULL;
            len += 4 + 12 + 1 + 10;
            while ((tag = FUNC0(chapters[i]->metadata, "", tag, AV_DICT_IGNORE_SUFFIX))) {
                int64_t len1 = !FUNC1(tag->key, "title") ? 4 : FUNC2(tag->key);
                len += 4 + 10 + len1 + 1 + FUNC2(tag->value);
            }
        }
    }
    if (m) {
        AVDictionaryEntry *tag = NULL;
        while ((tag = FUNC0(m, "", tag, AV_DICT_IGNORE_SUFFIX))) {
            len += 4 +FUNC2(tag->key) + 1 + FUNC2(tag->value);
        }
    }
    return len;
}