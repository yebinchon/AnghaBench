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
typedef  scalar_t__ uint32_t ;
typedef  enum ID3v2Encoding { ____Placeholder_ID3v2Encoding } ID3v2Encoding ;
struct TYPE_3__ {char* key; int /*<<< orphan*/  value; } ;
typedef  int /*<<< orphan*/  ID3v2EncContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_1__ AVDictionaryEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static int FUNC3(ID3v2EncContext *id3, AVIOContext *pb, AVDictionaryEntry *t,
                                 const char table[][4], enum ID3v2Encoding enc)
{
    uint32_t tag;
    int i;

    if (t->key[0] != 'T' || FUNC2(t->key) != 4)
        return -1;
    tag = FUNC0(t->key);
    for (i = 0; *table[i]; i++)
        if (tag == FUNC0(table[i]))
            return FUNC1(id3, pb, t->value, NULL, tag, enc);
    return -1;
}