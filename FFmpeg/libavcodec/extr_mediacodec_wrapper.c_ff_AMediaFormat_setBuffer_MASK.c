#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * jstring ;
typedef  int /*<<< orphan*/ * jobject ;
struct TYPE_15__ {int /*<<< orphan*/  set_bytebuffer_id; } ;
struct TYPE_17__ {TYPE_1__ jfields; int /*<<< orphan*/  object; } ;
struct TYPE_16__ {int /*<<< orphan*/  (* DeleteLocalRef ) (TYPE_2__**,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* CallVoidMethod ) (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ;int /*<<< orphan*/ * (* NewDirectByteBuffer ) (TYPE_2__**,void*,size_t) ;} ;
typedef  TYPE_2__* JNIEnv ;
typedef  TYPE_3__ FFAMediaFormat ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__**,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 void* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (TYPE_2__**,int,TYPE_3__*) ; 
 int /*<<< orphan*/ * FUNC4 (TYPE_2__**,char const*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,size_t) ; 
 int /*<<< orphan*/ * FUNC6 (TYPE_2__**,void*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__**,int /*<<< orphan*/ *) ; 

void FUNC10(FFAMediaFormat* format, const char* name, void* data, size_t size)
{
    JNIEnv *env = NULL;
    jstring key = NULL;
    jobject buffer = NULL;
    void *buffer_data = NULL;

    FUNC1(format != NULL);

    FUNC0(env, format);

    key = FUNC4(env, name, format);
    if (!key) {
        goto fail;
    }

    if (!data || !size) {
        goto fail;
    }

    buffer_data = FUNC2(size);
    if (!buffer_data) {
        goto fail;
    }

    FUNC5(buffer_data, data, size);

    buffer = (*env)->NewDirectByteBuffer(env, buffer_data, size);
    if (!buffer) {
        goto fail;
    }

    (*env)->CallVoidMethod(env, format->object, format->jfields.set_bytebuffer_id, key, buffer);
    if (FUNC3(env, 1, format) < 0) {
        goto fail;
    }

fail:
    if (key) {
        (*env)->DeleteLocalRef(env, key);
    }

    if (buffer) {
        (*env)->DeleteLocalRef(env, buffer);
    }
}