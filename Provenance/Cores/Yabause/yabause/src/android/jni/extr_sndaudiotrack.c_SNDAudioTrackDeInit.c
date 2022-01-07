
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;} ;
struct TYPE_5__ {int (* DeleteGlobalRef ) (TYPE_1__**,int ) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_6 ;
 int free (int *) ;
 int gtrack ;
 int * stereodata16 ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 int stub2 (TYPE_1__**,int ) ;
 TYPE_2__** yvm ;

__attribute__((used)) static void SNDAudioTrackDeInit(void)
{
   JNIEnv * env;

   if ((*yvm)->GetEnv(yvm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
       return;

   free(stereodata16);
   stereodata16 = ((void*)0);

   (*env)->DeleteGlobalRef(env, gtrack);
}
