
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct FFJniField {int type; int offset; scalar_t__ name; } ;
typedef int * jmethodID ;
typedef int * jfieldID ;
typedef int * jclass ;
typedef enum FFJniFieldType { ____Placeholder_FFJniFieldType } FFJniFieldType ;
struct TYPE_5__ {int (* DeleteLocalRef ) (TYPE_1__**,int *) ;int (* DeleteGlobalRef ) (TYPE_1__**,int *) ;} ;
typedef TYPE_1__* JNIEnv ;


 int AV_LOG_ERROR ;





 int av_log (void*,int ,char*) ;
 int stub1 (TYPE_1__**,int *) ;
 int stub2 (TYPE_1__**,int *) ;

int ff_jni_reset_jfields(JNIEnv *env, void *jfields, const struct FFJniField *jfields_mapping, int global, void *log_ctx)
{
    int i;

    for (i = 0; jfields_mapping[i].name; i++) {
        enum FFJniFieldType type = jfields_mapping[i].type;

        switch(type) {
        case 132: {
            jclass clazz = *(jclass*)((uint8_t*)jfields + jfields_mapping[i].offset);
            if (!clazz)
                continue;

            if (global) {
                (*env)->DeleteGlobalRef(env, clazz);
            } else {
                (*env)->DeleteLocalRef(env, clazz);
            }

            *(jclass*)((uint8_t*)jfields + jfields_mapping[i].offset) = ((void*)0);
            break;
        }
        case 131: {
            *(jfieldID*)((uint8_t*)jfields + jfields_mapping[i].offset) = ((void*)0);
            break;
        }
        case 129: {
            *(jfieldID*)((uint8_t*)jfields + jfields_mapping[i].offset) = ((void*)0);
            break;
        }
        case 130: {
            *(jmethodID*)((uint8_t*)jfields + jfields_mapping[i].offset) = ((void*)0);
            break;
        }
        case 128: {
            *(jmethodID*)((uint8_t*)jfields + jfields_mapping[i].offset) = ((void*)0);
            break;
        }
        default:
            av_log(log_ctx, AV_LOG_ERROR, "Unknown JNI field type\n");
        }
    }

    return 0;
}
