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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_11__ {TYPE_3__** streams; int /*<<< orphan*/ * pb; TYPE_2__* priv_data; } ;
struct TYPE_10__ {TYPE_1__* priv_data; } ;
struct TYPE_9__ {int /*<<< orphan*/  body_offset; int /*<<< orphan*/  header_written; } ;
struct TYPE_8__ {int /*<<< orphan*/  track_essence_element_key; } ;
typedef  TYPE_1__ MXFStreamContext ;
typedef  TYPE_2__ MXFContext ;
typedef  TYPE_3__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  TYPE_4__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * body_partition_key ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 int FUNC3 (TYPE_4__*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(AVFormatContext *s)
{
    MXFContext *mxf = s->priv_data;
    AVIOContext *pb = s->pb;
    AVStream *st = s->streams[0];
    MXFStreamContext *sc = st->priv_data;
    const uint8_t *key = NULL;

    int err;

    if (!mxf->header_written)
        key = body_partition_key;

    if ((err = FUNC3(s, 1, 0, key, 0)) < 0)
        return err;
    FUNC2(s);
    FUNC0(pb, sc->track_essence_element_key, 16);
    FUNC1(pb, mxf->body_offset);
    return 0;
}