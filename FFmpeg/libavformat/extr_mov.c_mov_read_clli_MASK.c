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
struct TYPE_14__ {void* MaxFALL; void* MaxCLL; } ;
struct TYPE_13__ {int nb_streams; TYPE_1__** streams; } ;
struct TYPE_12__ {int size; } ;
struct TYPE_11__ {TYPE_7__* fc; } ;
struct TYPE_10__ {TYPE_8__* coll; int /*<<< orphan*/  coll_size; } ;
struct TYPE_9__ {TYPE_2__* priv_data; } ;
typedef  TYPE_2__ MOVStreamContext ;
typedef  TYPE_3__ MOVContext ;
typedef  TYPE_4__ MOVAtom ;
typedef  int /*<<< orphan*/  AVIOContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  ENOMEM ; 
 TYPE_8__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,int /*<<< orphan*/ ,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(MOVContext *c, AVIOContext *pb, MOVAtom atom)
{
    MOVStreamContext *sc;

    if (c->fc->nb_streams < 1)
        return AVERROR_INVALIDDATA;

    sc = c->fc->streams[c->fc->nb_streams - 1]->priv_data;

    if (atom.size < 4) {
        FUNC2(c->fc, AV_LOG_ERROR, "Empty Content Light Level Info box\n");
        return AVERROR_INVALIDDATA;
    }

    sc->coll = FUNC1(&sc->coll_size);
    if (!sc->coll)
        return FUNC0(ENOMEM);

    sc->coll->MaxCLL  = FUNC3(pb);
    sc->coll->MaxFALL = FUNC3(pb);

    return 0;
}