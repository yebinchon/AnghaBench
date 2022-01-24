#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int int64_t ;
struct TYPE_16__ {scalar_t__ expected_readorder; int /*<<< orphan*/  ignore_readorder; scalar_t__ ssa_mode; } ;
struct TYPE_15__ {TYPE_4__* priv_data; } ;
struct TYPE_14__ {char* data; int pts; int duration; } ;
struct TYPE_13__ {scalar_t__ readorder; int /*<<< orphan*/  line; } ;
typedef  TYPE_1__ DialogueLine ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ ASSContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,long,int,int,int,int,int,int,int,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,char*,scalar_t__) ; 
 TYPE_1__* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*,int) ; 
 void* FUNC8 (char*,char**,int) ; 

__attribute__((used)) static int FUNC9(AVFormatContext *s, AVPacket *pkt)
{
    ASSContext *ass = s->priv_data;

    long int layer;
    char *p = pkt->data;
    int64_t start = pkt->pts;
    int64_t end   = start + pkt->duration;
    int hh1, mm1, ss1, ms1;
    int hh2, mm2, ss2, ms2;
    DialogueLine *dialogue = FUNC4(sizeof(*dialogue));

    if (!dialogue)
        return FUNC0(ENOMEM);

    dialogue->readorder = FUNC8(p, &p, 10);
    if (dialogue->readorder < ass->expected_readorder)
        FUNC3(s, AV_LOG_WARNING, "Unexpected ReadOrder %d\n",
               dialogue->readorder);
    if (*p == ',')
        p++;

    if (ass->ssa_mode && !FUNC7(p, "Marked=", 7))
        p += 7;

    layer = FUNC8(p, &p, 10);
    if (*p == ',')
        p++;
    hh1 = (int)(start / 360000);    mm1 = (int)(start / 6000) % 60;
    hh2 = (int)(end   / 360000);    mm2 = (int)(end   / 6000) % 60;
    ss1 = (int)(start / 100) % 60;  ms1 = (int)(start % 100);
    ss2 = (int)(end   / 100) % 60;  ms2 = (int)(end   % 100);
    if (hh1 > 9) hh1 = 9, mm1 = 59, ss1 = 59, ms1 = 99;
    if (hh2 > 9) hh2 = 9, mm2 = 59, ss2 = 59, ms2 = 99;

    dialogue->line = FUNC1("%s%ld,%d:%02d:%02d.%02d,%d:%02d:%02d.%02d,%s",
                                 ass->ssa_mode ? "Marked=" : "",
                                 layer, hh1, mm1, ss1, ms1, hh2, mm2, ss2, ms2, p);
    if (!dialogue->line) {
        FUNC2(dialogue);
        return FUNC0(ENOMEM);
    }
    FUNC5(ass, dialogue);
    FUNC6(s, ass->ignore_readorder);

    return 0;
}