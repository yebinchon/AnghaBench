#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int64_t ;
struct TYPE_14__ {int /*<<< orphan*/  pb; } ;
struct TYPE_13__ {TYPE_1__* priv_data; } ;
struct TYPE_12__ {scalar_t__ avc_intra; } ;
typedef  TYPE_1__ MXFStreamContext ;
typedef  TYPE_2__ AVStream ;
typedef  TYPE_3__ AVFormatContext ;

/* Variables and functions */
 int /*<<< orphan*/  mxf_cdci_descriptor_key ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_2__*) ; 

__attribute__((used)) static void FUNC4(AVFormatContext *s, AVStream *st)
{
    MXFStreamContext *sc = st->priv_data;
    if (sc->avc_intra) {
        FUNC3(s, st);
    } else {
        int64_t pos = FUNC2(s, st, mxf_cdci_descriptor_key);
        FUNC0(s->pb, pos);
        FUNC1(s, st);
    }
}