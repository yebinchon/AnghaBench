#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  ass_ctx; } ;
typedef  TYPE_1__ WebVTTContext ;
struct TYPE_8__ {scalar_t__ bold; scalar_t__ italic; scalar_t__ underline; } ;
typedef  TYPE_2__ ASSStyle ;

/* Variables and functions */
 scalar_t__ ASS_DEFAULT_BOLD ; 
 scalar_t__ ASS_DEFAULT_ITALIC ; 
 scalar_t__ ASS_DEFAULT_UNDERLINE ; 
 TYPE_2__* FUNC0 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned char) ; 

__attribute__((used)) static void FUNC3(WebVTTContext *s, const char *style)
{
    ASSStyle *st = FUNC0(s->ass_ctx, style);
    if (st) {
        if (st->bold != ASS_DEFAULT_BOLD) {
            FUNC1(s, "<b>");
            FUNC2(s, 'b');
        }
        if (st->italic != ASS_DEFAULT_ITALIC) {
            FUNC1(s, "<i>");
            FUNC2(s, 'i');
        }
        if (st->underline != ASS_DEFAULT_UNDERLINE) {
            FUNC1(s, "<u>");
            FUNC2(s, 'u');
        }
    }
}