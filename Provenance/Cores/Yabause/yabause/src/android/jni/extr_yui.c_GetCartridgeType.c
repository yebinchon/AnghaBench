
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int jmethodID ;
typedef int jclass ;
struct TYPE_8__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;} ;
struct TYPE_7__ {int (* CallIntMethod ) (TYPE_1__**,int ,int ) ;int (* GetMethodID ) (TYPE_1__**,int ,char*,char*) ;int (* GetObjectClass ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_6 ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 int stub2 (TYPE_1__**,int ) ;
 int stub3 (TYPE_1__**,int ,char*,char*) ;
 int stub4 (TYPE_1__**,int ,int ) ;
 int yabause ;
 TYPE_2__** yvm ;

int GetCartridgeType()
{
    jclass yclass;
    jmethodID getCartridgeType;
    JNIEnv * env;
    if ((*yvm)->GetEnv(yvm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
        return -1;

    yclass = (*env)->GetObjectClass(env, yabause);
    getCartridgeType = (*env)->GetMethodID(env, yclass, "getCartridgeType", "()I");
    return (*env)->CallIntMethod(env, yabause, getCartridgeType);
}
