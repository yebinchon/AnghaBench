
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_1__ ;


typedef int uint8_t ;
struct FFJniField {int mandatory; int type; int offset; int signature; int method; scalar_t__ name; } ;
typedef int jmethodID ;
typedef int jfieldID ;
typedef int * jclass ;
typedef enum FFJniFieldType { ____Placeholder_FFJniFieldType } FFJniFieldType ;
struct TYPE_12__ {int (* GetStaticMethodID ) (TYPE_1__**,int *,int ,int ) ;int (* GetMethodID ) (TYPE_1__**,int *,int ,int ) ;int (* GetStaticFieldID ) (TYPE_1__**,int *,int ,int ) ;int (* GetFieldID ) (TYPE_1__**,int *,int ,int ) ;int (* DeleteLocalRef ) (TYPE_1__**,int *) ;int * (* NewGlobalRef ) (TYPE_1__**,int *) ;int * (* FindClass ) (TYPE_1__**,scalar_t__) ;} ;
typedef TYPE_1__* JNIEnv ;


 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int EINVAL ;
 int FF_JNI_CLASS ;




 int av_log (void*,int ,char*) ;
 int ff_jni_exception_check (TYPE_1__**,int,void*) ;
 int ff_jni_reset_jfields (TYPE_1__**,void*,struct FFJniField const*,int,void*) ;
 int * stub1 (TYPE_1__**,scalar_t__) ;
 int * stub2 (TYPE_1__**,int *) ;
 int stub3 (TYPE_1__**,int *) ;
 int stub4 (TYPE_1__**,int *,int ,int ) ;
 int stub5 (TYPE_1__**,int *,int ,int ) ;
 int stub6 (TYPE_1__**,int *,int ,int ) ;
 int stub7 (TYPE_1__**,int *,int ,int ) ;

int ff_jni_init_jfields(JNIEnv *env, void *jfields, const struct FFJniField *jfields_mapping, int global, void *log_ctx)
{
    int i, ret = 0;
    jclass last_clazz = ((void*)0);

    for (i = 0; jfields_mapping[i].name; i++) {
        int mandatory = jfields_mapping[i].mandatory;
        enum FFJniFieldType type = jfields_mapping[i].type;

        if (type == FF_JNI_CLASS) {
            jclass clazz;

            last_clazz = ((void*)0);

            clazz = (*env)->FindClass(env, jfields_mapping[i].name);
            if ((ret = ff_jni_exception_check(env, mandatory, log_ctx)) < 0 && mandatory) {
                goto done;
            }

            last_clazz = *(jclass*)((uint8_t*)jfields + jfields_mapping[i].offset) =
                    global ? (*env)->NewGlobalRef(env, clazz) : clazz;

            if (global) {
                (*env)->DeleteLocalRef(env, clazz);
            }

        } else {

            if (!last_clazz) {
                ret = AVERROR_EXTERNAL;
                break;
            }

            switch(type) {
            case 131: {
                jfieldID field_id = (*env)->GetFieldID(env, last_clazz, jfields_mapping[i].method, jfields_mapping[i].signature);
                if ((ret = ff_jni_exception_check(env, mandatory, log_ctx)) < 0 && mandatory) {
                    goto done;
                }

                *(jfieldID*)((uint8_t*)jfields + jfields_mapping[i].offset) = field_id;
                break;
            }
            case 129: {
                jfieldID field_id = (*env)->GetStaticFieldID(env, last_clazz, jfields_mapping[i].method, jfields_mapping[i].signature);
                if ((ret = ff_jni_exception_check(env, mandatory, log_ctx)) < 0 && mandatory) {
                    goto done;
                }

                *(jfieldID*)((uint8_t*)jfields + jfields_mapping[i].offset) = field_id;
                break;
            }
            case 130: {
                jmethodID method_id = (*env)->GetMethodID(env, last_clazz, jfields_mapping[i].method, jfields_mapping[i].signature);
                if ((ret = ff_jni_exception_check(env, mandatory, log_ctx)) < 0 && mandatory) {
                    goto done;
                }

                *(jmethodID*)((uint8_t*)jfields + jfields_mapping[i].offset) = method_id;
                break;
            }
            case 128: {
                jmethodID method_id = (*env)->GetStaticMethodID(env, last_clazz, jfields_mapping[i].method, jfields_mapping[i].signature);
                if ((ret = ff_jni_exception_check(env, mandatory, log_ctx)) < 0 && mandatory) {
                    goto done;
                }

                *(jmethodID*)((uint8_t*)jfields + jfields_mapping[i].offset) = method_id;
                break;
            }
            default:
                av_log(log_ctx, AV_LOG_ERROR, "Unknown JNI field type\n");
                ret = AVERROR(EINVAL);
                goto done;
            }

            ret = 0;
        }
    }

done:
    if (ret < 0) {

        ff_jni_reset_jfields(env, jfields, jfields_mapping, global, log_ctx);
    }

    return ret;
}
