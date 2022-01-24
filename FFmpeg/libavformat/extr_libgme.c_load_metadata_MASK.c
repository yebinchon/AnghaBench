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
struct TYPE_6__ {char* system; char* game; char* song; char* author; char* copyright; char* comment; char* dumper; } ;
typedef  TYPE_1__ gme_info_t ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {TYPE_2__* priv_data; } ;
struct TYPE_7__ {int /*<<< orphan*/  music_emu; TYPE_1__* info; } ;
typedef  TYPE_2__ GMEContext ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char*,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 

__attribute__((used)) static int FUNC3(AVFormatContext *s)
{
    GMEContext *gme = s->priv_data;
    gme_info_t *info = gme->info;
    char buf[30];

    FUNC0(s, "system",       info->system);
    FUNC0(s, "game",         info->game);
    FUNC0(s, "song",         info->song);
    FUNC0(s, "author",       info->author);
    FUNC0(s, "copyright",    info->copyright);
    FUNC0(s, "comment",      info->comment);
    FUNC0(s, "dumper",       info->dumper);

    FUNC2(buf, sizeof(buf), "%d", (int)FUNC1(gme->music_emu));
    FUNC0(s, "tracks", buf);

    return 0;
}