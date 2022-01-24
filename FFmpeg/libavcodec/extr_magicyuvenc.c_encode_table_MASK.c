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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_9__ {int /*<<< orphan*/  len; } ;
struct TYPE_8__ {int value; int /*<<< orphan*/  prob; int /*<<< orphan*/  member_0; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ PTable ;
typedef  TYPE_2__ HuffEntry ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVCodecContext *avctx, uint8_t *dst,
                        int width, int height,
                        PutBitContext *pb, HuffEntry *he)
{
    PTable counts[256] = { {0} };
    int i;

    FUNC1(dst, width, height, counts);

    for (i = 0; i < 256; i++) {
        counts[i].prob++;
        counts[i].value = 255 - i;
    }

    FUNC2(counts, he, 256, 12);

    FUNC0(he);

    for (i = 0; i < 256; i++) {
        FUNC3(pb, 1, 0);
        FUNC3(pb, 7, he[i].len);
    }

    return 0;
}