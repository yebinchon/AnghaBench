#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* value; } ;
struct TYPE_7__ {TYPE_1__* codecpar; int /*<<< orphan*/  index; int /*<<< orphan*/  metadata; } ;
struct TYPE_6__ {int /*<<< orphan*/  extradata_size; int /*<<< orphan*/  extradata; } ;
typedef  TYPE_2__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_3__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AVIO_FLAG_WRITE ; 
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  int_cb ; 
 scalar_t__ nb_input_files ; 

__attribute__((used)) static void FUNC8(AVStream *st, const char *filename)
{
    int ret;
    AVIOContext *out = NULL;
    AVDictionaryEntry *e;

    if (!st->codecpar->extradata_size) {
        FUNC2(NULL, AV_LOG_WARNING, "No extradata to dump in stream #%d:%d.\n",
               nb_input_files - 1, st->index);
        return;
    }
    if (!*filename && (e = FUNC1(st->metadata, "filename", NULL, 0)))
        filename = e->value;
    if (!*filename) {
        FUNC2(NULL, AV_LOG_FATAL, "No filename specified and no 'filename' tag"
               "in stream #%d:%d.\n", nb_input_files - 1, st->index);
        FUNC7(1);
    }

    FUNC0(filename);

    if ((ret = FUNC5(&out, filename, AVIO_FLAG_WRITE, &int_cb, NULL)) < 0) {
        FUNC2(NULL, AV_LOG_FATAL, "Could not open file %s for writing.\n",
               filename);
        FUNC7(1);
    }

    FUNC6(out, st->codecpar->extradata, st->codecpar->extradata_size);
    FUNC4(out);
    FUNC3(out);
}