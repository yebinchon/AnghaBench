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
struct TYPE_3__ {int /*<<< orphan*/  list_audio; } ;
typedef  TYPE_1__ hb_title_t ;
typedef  int /*<<< orphan*/  hb_audio_config_t ;
typedef  int /*<<< orphan*/  gint ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 

hb_audio_config_t*
FUNC2(const hb_title_t *title, gint track)
{
    if (title == NULL) return NULL;
    if (!FUNC1(title->list_audio))
    {
        return NULL;
    }
    return FUNC0(title->list_audio, track);
}