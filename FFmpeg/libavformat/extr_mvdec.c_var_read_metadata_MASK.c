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
struct TYPE_3__ {int /*<<< orphan*/  metadata; int /*<<< orphan*/  pb; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_DICT_DONT_STRDUP_VAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *avctx, const char *tag, int size)
{
    char *value = FUNC1(avctx->pb, size);
    if (value)
        FUNC0(&avctx->metadata, tag, value, AV_DICT_DONT_STRDUP_VAL);
}