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
struct TYPE_9__ {TYPE_1__* priv_data; } ;
struct TYPE_8__ {int mute; int /*<<< orphan*/  mainloop; int /*<<< orphan*/  last_volume; int /*<<< orphan*/  stream; } ;
typedef  TYPE_1__ PulseData ;
typedef  TYPE_2__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  AV_APP_TO_DEV_GET_MUTE 136 
#define  AV_APP_TO_DEV_GET_VOLUME 135 
#define  AV_APP_TO_DEV_MUTE 134 
#define  AV_APP_TO_DEV_PAUSE 133 
#define  AV_APP_TO_DEV_PLAY 132 
#define  AV_APP_TO_DEV_SET_VOLUME 131 
#define  AV_APP_TO_DEV_TOGGLE_MUTE 130 
#define  AV_APP_TO_DEV_TOGGLE_PAUSE 129 
#define  AV_APP_TO_DEV_UNMUTE 128 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  PA_VOLUME_INVALID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,int) ; 
 int FUNC6 (TYPE_1__*,double) ; 
 int FUNC7 (TYPE_2__*) ; 

__attribute__((used)) static int FUNC8(AVFormatContext *h, int type,
                                 void *data, size_t data_size)
{
    PulseData *s = h->priv_data;
    int ret;

    switch(type) {
    case AV_APP_TO_DEV_PAUSE:
        return FUNC5(s, 1);
    case AV_APP_TO_DEV_PLAY:
        return FUNC5(s, 0);
    case AV_APP_TO_DEV_TOGGLE_PAUSE:
        return FUNC5(s, !FUNC1(s->stream));
    case AV_APP_TO_DEV_MUTE:
        if (!s->mute) {
            s->mute = 1;
            return FUNC4(s);
        }
        return 0;
    case AV_APP_TO_DEV_UNMUTE:
        if (s->mute) {
            s->mute = 0;
            return FUNC4(s);
        }
        return 0;
    case AV_APP_TO_DEV_TOGGLE_MUTE:
        s->mute = !s->mute;
        return FUNC4(s);
    case AV_APP_TO_DEV_SET_VOLUME:
        return FUNC6(s, *(double *)data);
    case AV_APP_TO_DEV_GET_VOLUME:
        s->last_volume = PA_VOLUME_INVALID;
        FUNC2(s->mainloop);
        ret = FUNC7(h);
        FUNC3(s->mainloop);
        return ret;
    case AV_APP_TO_DEV_GET_MUTE:
        s->mute = -1;
        FUNC2(s->mainloop);
        ret = FUNC7(h);
        FUNC3(s->mainloop);
        return ret;
    default:
        break;
    }
    return FUNC0(ENOSYS);
}