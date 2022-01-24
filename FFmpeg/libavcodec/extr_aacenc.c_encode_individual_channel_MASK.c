#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_24__ {int /*<<< orphan*/  pb; TYPE_2__* coder; } ;
struct TYPE_21__ {int /*<<< orphan*/  present; } ;
struct TYPE_23__ {int* sf_idx; TYPE_1__ tns; int /*<<< orphan*/  pulse; int /*<<< orphan*/  ics; } ;
struct TYPE_22__ {int /*<<< orphan*/  (* encode_tns_info ) (TYPE_4__*,TYPE_3__*) ;int /*<<< orphan*/  (* encode_ltp_info ) (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* encode_main_pred ) (TYPE_4__*,TYPE_3__*) ;} ;
typedef  TYPE_3__ SingleChannelElement ;
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  TYPE_4__ AACEncContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,TYPE_3__*) ; 

__attribute__((used)) static int FUNC9(AVCodecContext *avctx, AACEncContext *s,
                                     SingleChannelElement *sce,
                                     int common_window)
{
    FUNC4(&s->pb, 8, sce->sf_idx[0]);
    if (!common_window) {
        FUNC5(s, &sce->ics);
        if (s->coder->encode_main_pred)
            s->coder->encode_main_pred(s, sce);
        if (s->coder->encode_ltp_info)
            s->coder->encode_ltp_info(s, sce, 0);
    }
    FUNC0(s, sce);
    FUNC2(avctx, s, sce);
    FUNC1(s, &sce->pulse);
    FUNC4(&s->pb, 1, !!sce->tns.present);
    if (s->coder->encode_tns_info)
        s->coder->encode_tns_info(s, sce);
    FUNC4(&s->pb, 1, 0); //ssr
    FUNC3(s, sce);
    return 0;
}