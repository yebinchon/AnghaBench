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
struct TYPE_4__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_ESCAPE_MODE_BACKSLASH ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/  const*,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 char* FUNC7 (char*) ; 

int FUNC8(const AVDictionary *m, char **buffer,
                       const char key_val_sep, const char pairs_sep)
{
    AVDictionaryEntry *t = NULL;
    AVBPrint bprint;
    int cnt = 0;
    char special_chars[] = {pairs_sep, key_val_sep, '\0'};

    if (!buffer || pairs_sep == '\0' || key_val_sep == '\0' || pairs_sep == key_val_sep ||
        pairs_sep == '\\' || key_val_sep == '\\')
        return FUNC0(EINVAL);

    if (!FUNC5(m)) {
        *buffer = FUNC7("");
        return *buffer ? 0 : FUNC0(ENOMEM);
    }

    FUNC4(&bprint, 64, AV_BPRINT_SIZE_UNLIMITED);
    while ((t = FUNC6(m, "", t, AV_DICT_IGNORE_SUFFIX))) {
        if (cnt++)
            FUNC1(&bprint, &pairs_sep, 1);
        FUNC2(&bprint, t->key, special_chars, AV_ESCAPE_MODE_BACKSLASH, 0);
        FUNC1(&bprint, &key_val_sep, 1);
        FUNC2(&bprint, t->value, special_chars, AV_ESCAPE_MODE_BACKSLASH, 0);
    }
    return FUNC3(&bprint, buffer);
}