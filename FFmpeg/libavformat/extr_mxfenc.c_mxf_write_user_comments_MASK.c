#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  value; scalar_t__ key; } ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {scalar_t__ tagged_value_count; } ;
typedef  TYPE_1__ MXFContext ;
typedef  TYPE_2__ AVFormatContext ;
typedef  TYPE_3__ AVDictionaryEntry ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_IGNORE_SUFFIX ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 scalar_t__ UINT16_MAX ; 
 TYPE_3__* FUNC0 (int /*<<< orphan*/  const*,char*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (TYPE_2__*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s, const AVDictionary *m)
{
    MXFContext *mxf = s->priv_data;
    AVDictionaryEntry *t = NULL;
    int count = 0;

    while ((t = FUNC0(m, "comment_", t, AV_DICT_IGNORE_SUFFIX))) {
        if (mxf->tagged_value_count >= UINT16_MAX) {
            FUNC1(s, AV_LOG_ERROR, "too many tagged values, ignoring remaining\n");
            return count;
        }

        if (FUNC2(s, t->key + 8, t->value) == 0)
            count++;
    }
    return count;
}