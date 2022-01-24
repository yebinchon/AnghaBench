#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jobject ;
struct TYPE_11__ {int /*<<< orphan*/  get_output_format_id; } ;
struct TYPE_13__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_12__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_2__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* CallObjectMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  int /*<<< orphan*/  FFAMediaFormat ;
typedef  TYPE_3__ FFAMediaCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__**,int,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC3 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__**,int /*<<< orphan*/ *) ; 

FFAMediaFormat* FUNC5(FFAMediaCodec* codec)
{
    FFAMediaFormat *ret = NULL;
    JNIEnv *env = NULL;

    jobject mediaformat = NULL;

    FUNC0(env, codec, NULL);

    mediaformat = (*env)->CallObjectMethod(env, codec->object, codec->jfields.get_output_format_id);
    if (FUNC2(env, 1, codec) < 0) {
        goto fail;
    }

    ret = FUNC1(mediaformat);
fail:
    if (mediaformat) {
        (*env)->DeleteLocalRef(env, mediaformat);
    }

    return ret;
}