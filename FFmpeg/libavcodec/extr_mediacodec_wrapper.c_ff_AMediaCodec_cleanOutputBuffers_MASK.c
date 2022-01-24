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
struct TYPE_8__ {int /*<<< orphan*/ * output_buffers; int /*<<< orphan*/  has_get_i_o_buffer; } ;
struct TYPE_7__ {int /*<<< orphan*/  (* DeleteGlobalRef ) (TYPE_1__**,int /*<<< orphan*/ *) ;} ;
typedef  TYPE_1__* JNIEnv ;
typedef  TYPE_2__ FFAMediaCodec ;

/* Variables and functions */
 int AVERROR_EXTERNAL ; 
 TYPE_1__** FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__**,int /*<<< orphan*/ *) ; 

int FUNC2(FFAMediaCodec *codec)
{
    int ret = 0;

    if (!codec->has_get_i_o_buffer) {
        if (codec->output_buffers) {
            JNIEnv *env = NULL;

            env = FUNC0(codec);
            if (!env) {
                ret = AVERROR_EXTERNAL;
                goto fail;
            }

            (*env)->DeleteGlobalRef(env, codec->output_buffers);
            codec->output_buffers = NULL;
        }
    }

fail:
    return ret;
}