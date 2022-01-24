#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int int64_t ;
typedef  int /*<<< orphan*/  chapter_time ;
typedef  int /*<<< orphan*/  chapter_number ;
struct TYPE_9__ {int /*<<< orphan*/  den; int /*<<< orphan*/  num; } ;
struct TYPE_8__ {int /*<<< orphan*/ * metadata; TYPE_4__ time_base; int /*<<< orphan*/  start; } ;
struct TYPE_7__ {char const* key; char const* value; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  TYPE_2__ AVChapter ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  EINVAL ; 
 int UINT32_MAX ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,char) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,int,...) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int FUNC11 (char const*) ; 

int FUNC12(uint8_t **p, AVDictionary **m,
                           const char *vendor_string,
                           AVChapter **chapters, unsigned int nb_chapters)
{
    int cm_count = 0;
    FUNC8(p, FUNC11(vendor_string));
    FUNC6(p, vendor_string, FUNC11(vendor_string));
    if (chapters && nb_chapters) {
        for (int i = 0; i < nb_chapters; i++) {
            cm_count += FUNC1(chapters[i]->metadata) + 1;
        }
    }
    if (*m) {
        int count = FUNC1(*m) + cm_count;
        AVDictionaryEntry *tag = NULL;
        FUNC8(p, count);
        while ((tag = FUNC2(*m, "", tag, AV_DICT_IGNORE_SUFFIX))) {
            int64_t len1 = FUNC11(tag->key);
            int64_t len2 = FUNC11(tag->value);
            if (len1+1+len2 > UINT32_MAX)
                return FUNC0(EINVAL);
            FUNC8(p, len1+1+len2);
            FUNC6(p, tag->key, len1);
            FUNC7(p, '=');
            FUNC6(p, tag->value, len2);
        }
        for (int i = 0; i < nb_chapters; i++) {
            AVChapter *chp = chapters[i];
            char chapter_time[13];
            char chapter_number[4];
            int h, m, s, ms;

            s  = FUNC4(chp->start, chp->time_base.num, chp->time_base.den);
            h  = s / 3600;
            m  = (s / 60) % 60;
            ms = FUNC5(chp->start, chp->time_base, FUNC3(   1, 1000)) % 1000;
            s  = s % 60;
            FUNC9(chapter_number, sizeof(chapter_number), "%03d", i);
            FUNC9(chapter_time, sizeof(chapter_time), "%02d:%02d:%02d.%03d", h, m, s, ms);
            FUNC8(p, 10+1+12);
            FUNC6(p, "CHAPTER", 7);
            FUNC6(p, chapter_number, 3);
            FUNC7(p, '=');
            FUNC6(p, chapter_time, 12);

            tag = NULL;
            while ((tag = FUNC2(chapters[i]->metadata, "", tag, AV_DICT_IGNORE_SUFFIX))) {
                int64_t len1 = !FUNC10(tag->key, "title") ? 4 : FUNC11(tag->key);
                int64_t len2 = FUNC11(tag->value);
                if (len1+1+len2+10 > UINT32_MAX)
                    return FUNC0(EINVAL);
                FUNC8(p, 10+len1+1+len2);
                FUNC6(p, "CHAPTER", 7);
                FUNC6(p, chapter_number, 3);
                if (!FUNC10(tag->key, "title"))
                    FUNC6(p, "NAME", 4);
                else
                    FUNC6(p, tag->key, len1);
                FUNC7(p, '=');
                FUNC6(p, tag->value, len2);
            }
        }
    } else
        FUNC8(p, 0);
    return 0;
}