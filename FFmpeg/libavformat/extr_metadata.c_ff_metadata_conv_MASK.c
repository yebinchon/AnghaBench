#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* key; int /*<<< orphan*/  value; } ;
struct TYPE_7__ {char* native; char* generic; } ;
typedef  TYPE_1__ AVMetadataConv ;
typedef  TYPE_2__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ *,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 

void FUNC4(AVDictionary **pm, const AVMetadataConv *d_conv,
                                       const AVMetadataConv *s_conv)
{
    /* TODO: use binary search to look up the two conversion tables
       if the tables are getting big enough that it would matter speed wise */
    const AVMetadataConv *sc, *dc;
    AVDictionaryEntry *mtag = NULL;
    AVDictionary *dst = NULL;
    const char *key;

    if (d_conv == s_conv || !pm)
        return;

    while ((mtag = FUNC1(*pm, "", mtag, AV_DICT_IGNORE_SUFFIX))) {
        key = mtag->key;
        if (s_conv)
            for (sc=s_conv; sc->native; sc++)
                if (!FUNC3(key, sc->native)) {
                    key = sc->generic;
                    break;
                }
        if (d_conv)
            for (dc=d_conv; dc->native; dc++)
                if (!FUNC3(key, dc->generic)) {
                    key = dc->native;
                    break;
                }
        FUNC2(&dst, key, mtag->value, 0);
    }
    FUNC0(pm);
    *pm = dst;
}