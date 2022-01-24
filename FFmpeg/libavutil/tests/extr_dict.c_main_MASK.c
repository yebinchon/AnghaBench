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
struct TYPE_4__ {char* key; char* value; } ;
typedef  TYPE_1__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int AV_DICT_APPEND ; 
 int AV_DICT_DONT_OVERWRITE ; 
 int AV_DICT_DONT_STRDUP_KEY ; 
 int AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,char*,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,char,char) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (char**) ; 
 char* FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char,char) ; 

int FUNC9(void)
{
    AVDictionary *dict = NULL;
    AVDictionaryEntry *e;
    char *buffer = NULL;

    FUNC7("Testing av_dict_get_string() and av_dict_parse_string()\n");
    FUNC2(dict, &buffer, '=', ',');
    FUNC7("%s\n", buffer);
    FUNC5(&buffer);
    FUNC3(&dict, "aaa", "aaa", 0);
    FUNC3(&dict, "b,b", "bbb", 0);
    FUNC3(&dict, "c=c", "ccc", 0);
    FUNC3(&dict, "ddd", "d,d", 0);
    FUNC3(&dict, "eee", "e=e", 0);
    FUNC3(&dict, "f,f", "f=f", 0);
    FUNC3(&dict, "g=g", "g,g", 0);
    FUNC8(dict, ',', '=');
    FUNC0(&dict);
    FUNC3(&dict, "aaa", "aaa", 0);
    FUNC3(&dict, "bbb", "bbb", 0);
    FUNC3(&dict, "ccc", "ccc", 0);
    FUNC3(&dict, "\\,=\'\"", "\\,=\'\"", 0);
    FUNC8(dict, '"',  '=');
    FUNC8(dict, '\'', '=');
    FUNC8(dict, ',', '"');
    FUNC8(dict, ',', '\'');
    FUNC8(dict, '\'', '"');
    FUNC8(dict, '"', '\'');
    FUNC0(&dict);

    FUNC7("\nTesting av_dict_set()\n");
    FUNC3(&dict, "a", "a", 0);
    FUNC3(&dict, "b", FUNC6("b"), AV_DICT_DONT_STRDUP_VAL);
    FUNC3(&dict, FUNC6("c"), "c", AV_DICT_DONT_STRDUP_KEY);
    FUNC3(&dict, FUNC6("d"), FUNC6("d"), AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    FUNC3(&dict, "e", "e", AV_DICT_DONT_OVERWRITE);
    FUNC3(&dict, "e", "f", AV_DICT_DONT_OVERWRITE);
    FUNC3(&dict, "f", "f", 0);
    FUNC3(&dict, "f", NULL, 0);
    FUNC3(&dict, "ff", "f", 0);
    FUNC3(&dict, "ff", "f", AV_DICT_APPEND);
    e = NULL;
    while ((e = FUNC1(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        FUNC7("%s %s\n", e->key, e->value);
    FUNC0(&dict);

    FUNC3(&dict, NULL, "a", 0);
    FUNC3(&dict, NULL, "b", 0);
    FUNC1(dict, NULL, NULL, 0);
    e = NULL;
    while ((e = FUNC1(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        FUNC7("'%s' '%s'\n", e->key, e->value);
    FUNC0(&dict);


    //valgrind sensible test
    FUNC7("\nTesting av_dict_set_int()\n");
    FUNC4(&dict, "1", 1, AV_DICT_DONT_STRDUP_VAL);
    FUNC4(&dict, FUNC6("2"), 2, AV_DICT_DONT_STRDUP_KEY);
    FUNC4(&dict, FUNC6("3"), 3, AV_DICT_DONT_STRDUP_KEY | AV_DICT_DONT_STRDUP_VAL);
    FUNC4(&dict, "4", 4, 0);
    FUNC4(&dict, "5", 5, AV_DICT_DONT_OVERWRITE);
    FUNC4(&dict, "5", 6, AV_DICT_DONT_OVERWRITE);
    FUNC4(&dict, "12", 1, 0);
    FUNC4(&dict, "12", 2, AV_DICT_APPEND);
    e = NULL;
    while ((e = FUNC1(dict, "", e, AV_DICT_IGNORE_SUFFIX)))
        FUNC7("%s %s\n", e->key, e->value);
    FUNC0(&dict);

    //valgrind sensible test
    FUNC7("\nTesting av_dict_set() with existing AVDictionaryEntry.key as key\n");
    FUNC3(&dict, "key", "old", 0);
    e = FUNC1(dict, "key", NULL, 0);
    FUNC3(&dict, e->key, "new val OK", 0);
    e = FUNC1(dict, "key", NULL, 0);
    FUNC7("%s\n", e->value);
    FUNC3(&dict, e->key, e->value, 0);
    e = FUNC1(dict, "key", NULL, 0);
    FUNC7("%s\n", e->value);
    FUNC0(&dict);

    return 0;
}