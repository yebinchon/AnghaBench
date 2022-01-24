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
struct oggvorbis_private {int /*<<< orphan*/ * packet; int /*<<< orphan*/  vp; } ;
struct ogg_stream {struct oggvorbis_private* private; } ;
struct ogg {struct ogg_stream* streams; } ;
struct TYPE_3__ {struct ogg* priv_data; } ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(AVFormatContext *s, int idx)
{
    struct ogg *ogg = s->priv_data;
    struct ogg_stream *os = ogg->streams + idx;
    struct oggvorbis_private *priv = os->private;
    int i;
    if (os->private) {
        FUNC1(&priv->vp);
        for (i = 0; i < 3; i++)
            FUNC0(&priv->packet[i]);
    }
}