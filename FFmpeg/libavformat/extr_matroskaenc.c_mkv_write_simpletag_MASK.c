#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  char uint8_t ;
typedef  int /*<<< orphan*/  ebml_master ;
struct TYPE_3__ {char const* value; int /*<<< orphan*/  key; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVDictionaryEntry ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LANG_ISO639_2_BIBL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  MATROSKA_ID_SIMPLETAG ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGLANG ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGNAME ; 
 int /*<<< orphan*/  MATROSKA_ID_TAGSTRING ; 
 int /*<<< orphan*/  FUNC1 (char**) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*,char) ; 

__attribute__((used)) static int FUNC8(AVIOContext *pb, AVDictionaryEntry *t)
{
    uint8_t *key = FUNC2(t->key);
    uint8_t *p   = key;
    const uint8_t *lang = NULL;
    ebml_master tag;

    if (!key)
        return FUNC0(ENOMEM);

    if ((p = FUNC7(p, '-')) &&
        (lang = FUNC4(p + 1, AV_LANG_ISO639_2_BIBL)))
        *p = 0;

    p = key;
    while (*p) {
        if (*p == ' ')
            *p = '_';
        else if (*p >= 'a' && *p <= 'z')
            *p -= 'a' - 'A';
        p++;
    }

    tag = FUNC6(pb, MATROSKA_ID_SIMPLETAG, 0);
    FUNC5(pb, MATROSKA_ID_TAGNAME, key);
    if (lang)
        FUNC5(pb, MATROSKA_ID_TAGLANG, lang);
    FUNC5(pb, MATROSKA_ID_TAGSTRING, t->value);
    FUNC3(pb, tag);

    FUNC1(&key);
    return 0;
}