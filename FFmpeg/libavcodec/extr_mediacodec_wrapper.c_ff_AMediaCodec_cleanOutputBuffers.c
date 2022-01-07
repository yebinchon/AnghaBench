
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int * output_buffers; int has_get_i_o_buffer; } ;
struct TYPE_7__ {int (* DeleteGlobalRef ) (TYPE_1__**,int *) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ FFAMediaCodec ;


 int AVERROR_EXTERNAL ;
 TYPE_1__** ff_jni_get_env (TYPE_2__*) ;
 int stub1 (TYPE_1__**,int *) ;

int ff_AMediaCodec_cleanOutputBuffers(FFAMediaCodec *codec)
{
    int ret = 0;

    if (!codec->has_get_i_o_buffer) {
        if (codec->output_buffers) {
            JNIEnv *env = ((void*)0);

            env = ff_jni_get_env(codec);
            if (!env) {
                ret = AVERROR_EXTERNAL;
                goto fail;
            }

            (*env)->DeleteGlobalRef(env, codec->output_buffers);
            codec->output_buffers = ((void*)0);
        }
    }

fail:
    return ret;
}
