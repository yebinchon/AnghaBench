
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct JNIAMediaCodecListFields {int codec_profile_level_class; scalar_t__ hevc_profile_main10_id; scalar_t__ hevc_profile_main_id; scalar_t__ avc_profile_high444_id; scalar_t__ avc_profile_high422_id; scalar_t__ avc_profile_high10_id; scalar_t__ avc_profile_high_id; scalar_t__ avc_profile_extended_id; scalar_t__ avc_profile_main_id; scalar_t__ avc_profile_baseline_id; int member_0; } ;
typedef scalar_t__ jfieldID ;
struct TYPE_14__ {scalar_t__ codec_id; int profile; } ;
struct TYPE_13__ {int (* GetStaticIntField ) (TYPE_1__**,int ,scalar_t__) ;} ;
typedef TYPE_1__* JNIEnv ;
typedef TYPE_2__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_H264 ;
 scalar_t__ AV_CODEC_ID_HEVC ;
 int JNI_GET_ENV_OR_RETURN (TYPE_1__**,TYPE_2__*,int) ;
 scalar_t__ ff_jni_exception_check (TYPE_1__**,int,TYPE_2__*) ;
 scalar_t__ ff_jni_init_jfields (TYPE_1__**,struct JNIAMediaCodecListFields*,int ,int ,TYPE_2__*) ;
 int ff_jni_reset_jfields (TYPE_1__**,struct JNIAMediaCodecListFields*,int ,int ,TYPE_2__*) ;
 int jni_amediacodeclist_mapping ;
 int stub1 (TYPE_1__**,int ,scalar_t__) ;

int ff_AMediaCodecProfile_getProfileFromAVCodecContext(AVCodecContext *avctx)
{
    int ret = -1;

    JNIEnv *env = ((void*)0);
    struct JNIAMediaCodecListFields jfields = { 0 };
    jfieldID field_id = 0;

    JNI_GET_ENV_OR_RETURN(env, avctx, -1);

    if (ff_jni_init_jfields(env, &jfields, jni_amediacodeclist_mapping, 0, avctx) < 0) {
        goto done;
    }

    if (avctx->codec_id == AV_CODEC_ID_H264) {
        switch(avctx->profile) {
        case 142:
        case 141:
            field_id = jfields.avc_profile_baseline_id;
            break;
        case 131:
            field_id = jfields.avc_profile_main_id;
            break;
        case 140:
            field_id = jfields.avc_profile_extended_id;
            break;
        case 139:
            field_id = jfields.avc_profile_high_id;
            break;
        case 138:
        case 137:
            field_id = jfields.avc_profile_high10_id;
            break;
        case 136:
        case 135:
            field_id = jfields.avc_profile_high422_id;
            break;
        case 134:
        case 133:
        case 132:
            field_id = jfields.avc_profile_high444_id;
            break;
        }
    } else if (avctx->codec_id == AV_CODEC_ID_HEVC) {
        switch (avctx->profile) {
        case 130:
        case 128:
            field_id = jfields.hevc_profile_main_id;
            break;
        case 129:
            field_id = jfields.hevc_profile_main10_id;
            break;
        }
    }

        if (field_id) {
            ret = (*env)->GetStaticIntField(env, jfields.codec_profile_level_class, field_id);
            if (ff_jni_exception_check(env, 1, avctx) < 0) {
                ret = -1;
                goto done;
            }
        }

done:
    ff_jni_reset_jfields(env, &jfields, jni_amediacodeclist_mapping, 0, avctx);

    return ret;
}
