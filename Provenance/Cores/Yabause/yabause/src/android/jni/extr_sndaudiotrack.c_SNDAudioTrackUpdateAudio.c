
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int s32 ;
typedef int s16 ;
typedef scalar_t__ jbyteArray ;
struct TYPE_8__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;} ;
struct TYPE_7__ {int (* CallNonvirtualIntMethod ) (TYPE_1__**,int ,int ,int ,scalar_t__,int ,int) ;int (* SetByteArrayRegion ) (TYPE_1__**,scalar_t__,int ,int,int *) ;scalar_t__ (* NewByteArray ) (TYPE_1__**,int) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_6 ;
 int cAudioTrack ;
 int gtrack ;
 int mWrite ;
 int mbufferSizeInBytes ;
 int muted ;
 int sdlConvert32uto16s (int *,int *,int *,int) ;
 int soundoffset ;
 scalar_t__ stereodata16 ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 scalar_t__ stub2 (TYPE_1__**,int) ;
 int stub3 (TYPE_1__**,scalar_t__,int ,int,int *) ;
 int stub4 (TYPE_1__**,int ,int ,int ,scalar_t__,int ,int) ;
 TYPE_2__** yvm ;

__attribute__((used)) static void SNDAudioTrackUpdateAudio(u32 *leftchanbuffer, u32 *rightchanbuffer, u32 num_samples)
{
   u32 copy1size=0;

   copy1size = (num_samples * sizeof(s16) * 2);

   sdlConvert32uto16s((s32 *)leftchanbuffer, (s32 *)rightchanbuffer, (s16 *)(((u8 *)stereodata16)+soundoffset), copy1size / sizeof(s16) / 2);

   soundoffset += copy1size;

   if (soundoffset > mbufferSizeInBytes) {
      if (! muted) {
         JNIEnv * env;
         jbyteArray array;

         if ((*yvm)->GetEnv(yvm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
             return;

         array = (*env)->NewByteArray(env, soundoffset);
         if(array) {
            (*env)->SetByteArrayRegion(env, array, 0, soundoffset, (u8 *) stereodata16);
         }

         (*env)->CallNonvirtualIntMethod(env, gtrack, cAudioTrack, mWrite, array, 0, soundoffset);
      }

      soundoffset = 0;
   }
}
