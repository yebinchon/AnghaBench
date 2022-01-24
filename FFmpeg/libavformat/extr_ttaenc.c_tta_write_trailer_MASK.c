#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_7__ {int /*<<< orphan*/ * pb; TYPE_1__* priv_data; } ;
struct TYPE_6__ {unsigned int nb_samples; int /*<<< orphan*/ * seek_table; } ;
typedef  TYPE_1__ TTAMuxContext ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 unsigned int UINT32_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 unsigned int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *s)
{
    TTAMuxContext *tta = s->priv_data;
    uint8_t *ptr;
    unsigned int crc;
    int size;

    FUNC3(s->pb, tta->nb_samples);
    crc = FUNC6(s->pb) ^ UINT32_MAX;
    FUNC3(s->pb, crc);

    /* Write Seek table */
    crc = FUNC6(tta->seek_table) ^ UINT32_MAX;
    FUNC3(tta->seek_table, crc);
    size = FUNC1(tta->seek_table, &ptr);
    FUNC4(s->pb, ptr, size);
    tta->seek_table = NULL;
    FUNC0(ptr);

    /* Write audio data */
    FUNC7(s);

    FUNC5(s);
    FUNC2(s->pb);

    return 0;
}