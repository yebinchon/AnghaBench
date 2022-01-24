#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int /*<<< orphan*/  value; } ;
struct TYPE_10__ {int nb_streams; int /*<<< orphan*/  metadata; TYPE_2__** streams; } ;
struct TYPE_9__ {int /*<<< orphan*/  metadata; TYPE_1__* codecpar; } ;
struct TYPE_8__ {scalar_t__ codec_tag; } ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;
typedef  TYPE_4__ AVDictionaryEntry ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,char,char,char) ; 
 TYPE_4__* FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s)
{
    int i;

    for (i = 0; i < s->nb_streams; i++) {
        AVStream *st = s->streams[i];

        if (st->codecpar->codec_tag  == FUNC0('t','m','c','d') &&
            !FUNC3(s, i + 1)) {
            AVDictionaryEntry *tcr = FUNC1(st->metadata, "timecode", NULL, 0);
            if (tcr) {
                FUNC2(&s->metadata, "timecode", tcr->value, 0);
                break;
            }
        }
    }
}