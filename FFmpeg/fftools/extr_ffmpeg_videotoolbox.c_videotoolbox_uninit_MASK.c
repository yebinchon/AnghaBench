#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  tmp_frame; } ;
typedef  TYPE_1__ VTContext ;
struct TYPE_9__ {TYPE_2__* opaque; } ;
struct TYPE_8__ {TYPE_1__* hwaccel_ctx; int /*<<< orphan*/ * hwaccel_retrieve_data; int /*<<< orphan*/ * hwaccel_uninit; } ;
typedef  TYPE_2__ InputStream ;
typedef  TYPE_3__ AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 

__attribute__((used)) static void FUNC3(AVCodecContext *s)
{
    InputStream *ist = s->opaque;
    VTContext  *vt = ist->hwaccel_ctx;

    ist->hwaccel_uninit        = NULL;
    ist->hwaccel_retrieve_data = NULL;

    FUNC0(&vt->tmp_frame);

    FUNC2(s);
    FUNC1(&ist->hwaccel_ctx);
}