#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  enum AVStereo3DType { ____Placeholder_AVStereo3DType } AVStereo3DType ;
struct TYPE_14__ {int nb_streams; TYPE_4__** streams; } ;
struct TYPE_13__ {int type; } ;
struct TYPE_12__ {TYPE_1__* priv_data; } ;
struct TYPE_11__ {int size; } ;
struct TYPE_10__ {TYPE_8__* fc; } ;
struct TYPE_9__ {TYPE_7__* stereo3d; } ;
typedef  TYPE_1__ MOVStreamContext ;
typedef  TYPE_2__ MOVContext ;
typedef  TYPE_3__ MOVAtom ;
typedef  TYPE_4__ AVStream ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int AV_STEREO3D_2D ; 
 int AV_STEREO3D_SIDEBYSIDE ; 
 int AV_STEREO3D_TOPBOTTOM ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_7__* FUNC2 () ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    AVStream *st;
    MOVStreamContext *sc;
    enum AVStereo3DType type;
    int mode;

    if (c->fc->nb_streams < 1)
        return 0;

    st = c->fc->streams[c->fc->nb_streams - 1];
    sc = st->priv_data;

    if (atom.size < 5) {
        FUNC1(c->fc, AV_LOG_ERROR, "Empty stereoscopic video box\n");
        return AVERROR_INVALIDDATA;
    }
    FUNC4(pb, 4); /* version + flags */

    mode = FUNC3(pb);
    switch (mode) {
    case 0:
        type = AV_STEREO3D_2D;
        break;
    case 1:
        type = AV_STEREO3D_TOPBOTTOM;
        break;
    case 2:
        type = AV_STEREO3D_SIDEBYSIDE;
        break;
    default:
        FUNC1(c->fc, AV_LOG_WARNING, "Unknown st3d mode value %d\n", mode);
        return 0;
    }

    sc->stereo3d = FUNC2();
    if (!sc->stereo3d)
        return FUNC0(ENOMEM);

    sc->stereo3d->type = type;
    return 0;
}