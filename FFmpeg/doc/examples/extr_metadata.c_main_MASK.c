#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {char* key; char* value; } ;
struct TYPE_8__ {int /*<<< orphan*/  metadata; } ;
typedef  TYPE_1__ AVFormatContext ;
typedef  TYPE_2__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__**) ; 
 int FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC4 (TYPE_1__**,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,...) ; 

int FUNC6 (int argc, char **argv)
{
    AVFormatContext *fmt_ctx = NULL;
    AVDictionaryEntry *tag = NULL;
    int ret;

    if (argc != 2) {
        FUNC5("usage: %s <input_file>\n"
               "example program to demonstrate the use of the libavformat metadata API.\n"
               "\n", argv[0]);
        return 1;
    }

    if ((ret = FUNC4(&fmt_ctx, argv[1], NULL, NULL)))
        return ret;

    if ((ret = FUNC3(fmt_ctx, NULL)) < 0) {
        FUNC1(NULL, AV_LOG_ERROR, "Cannot find stream information\n");
        return ret;
    }

    while ((tag = FUNC0(fmt_ctx->metadata, "", tag, AV_DICT_IGNORE_SUFFIX)))
        FUNC5("%s=%s\n", tag->key, tag->value);

    FUNC2(&fmt_ctx);
    return 0;
}