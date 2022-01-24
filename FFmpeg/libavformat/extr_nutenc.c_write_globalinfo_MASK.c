#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_10__ {int /*<<< orphan*/  value; int /*<<< orphan*/  key; } ;
struct TYPE_9__ {int /*<<< orphan*/  metadata; } ;
struct TYPE_8__ {TYPE_2__* avf; } ;
typedef  TYPE_1__ NUTContext ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC1 (int /*<<< orphan*/ ,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(NUTContext *nut, AVIOContext *bc)
{
    AVFormatContext *s   = nut->avf;
    AVDictionaryEntry *t = NULL;
    AVIOContext *dyn_bc;
    uint8_t *dyn_buf = NULL;
    int count        = 0, dyn_size;
    int ret          = FUNC4(&dyn_bc);
    if (ret < 0)
        return ret;

    FUNC7(s);
    while ((t = FUNC1(s->metadata, "", t, AV_DICT_IGNORE_SUFFIX)))
        count += FUNC0(dyn_bc, t->key, t->value);

    FUNC6(bc, 0); //stream_if_plus1
    FUNC6(bc, 0); //chapter_id
    FUNC6(bc, 0); //timestamp_start
    FUNC6(bc, 0); //length

    FUNC6(bc, count);

    dyn_size = FUNC3(dyn_bc, &dyn_buf);
    FUNC5(bc, dyn_buf, dyn_size);
    FUNC2(dyn_buf);
    return 0;
}