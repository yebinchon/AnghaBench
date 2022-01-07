
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int u16 ;
typedef int * jobject ;
typedef int * jmethodID ;
typedef int * jclass ;
struct TYPE_15__ {scalar_t__ (* GetEnv ) (TYPE_2__**,void**,int ) ;} ;
struct TYPE_14__ {int (* CallStaticIntMethod ) (TYPE_1__**,int *,int *,int,int,int) ;int (* CallNonvirtualVoidMethod ) (TYPE_1__**,scalar_t__,int *,int *) ;scalar_t__ (* NewGlobalRef ) (TYPE_1__**,int *) ;int * (* NewObject ) (TYPE_1__**,int *,int *,int,int,int,int,int,int) ;int * (* GetStaticMethodID ) (TYPE_1__**,int *,char*,char*) ;int * (* GetMethodID ) (TYPE_1__**,int *,char*,char*) ;int * (* FindClass ) (TYPE_1__**,char*) ;} ;
typedef TYPE_1__* JNIEnv ;


 scalar_t__ JNI_OK ;
 int JNI_VERSION_1_6 ;
 int * cAudioTrack ;
 scalar_t__ gtrack ;
 int * mWrite ;
 scalar_t__ malloc (int) ;
 int mbufferSizeInBytes ;
 int memset (int *,int ,int) ;
 scalar_t__ muted ;
 int soundbufsize ;
 int soundmaxvolume ;
 scalar_t__ soundoffset ;
 int soundvolume ;
 int * stereodata16 ;
 scalar_t__ stub1 (TYPE_2__**,void**,int ) ;
 scalar_t__ stub10 (TYPE_1__**,int *) ;
 int stub11 (TYPE_1__**,scalar_t__,int *,int *) ;
 int * stub2 (TYPE_1__**,char*) ;
 scalar_t__ stub3 (TYPE_1__**,int *) ;
 int * stub4 (TYPE_1__**,int *,char*,char*) ;
 int * stub5 (TYPE_1__**,int *,char*,char*) ;
 int * stub6 (TYPE_1__**,int *,char*,char*) ;
 int * stub7 (TYPE_1__**,int *,char*,char*) ;
 int stub8 (TYPE_1__**,int *,int *,int,int,int) ;
 int * stub9 (TYPE_1__**,int *,int *,int,int,int,int,int,int) ;
 TYPE_2__** yvm ;

__attribute__((used)) static int SNDAudioTrackInit(void)
{
   int sampleRateInHz = 44100;
   int channelConfig = 12;
   int audioFormat = 2;
   JNIEnv * env;
   jobject mtrack = ((void*)0);
   jmethodID mPlay = ((void*)0);
   jmethodID mGetMinBufferSize = ((void*)0);
   jmethodID mAudioTrack = ((void*)0);

   if ((*yvm)->GetEnv(yvm, (void**) &env, JNI_VERSION_1_6) != JNI_OK)
       return -1;

   cAudioTrack = (*env)->FindClass(env, "android/media/AudioTrack");
   cAudioTrack = (jclass) (*env)->NewGlobalRef(env, cAudioTrack);

   mAudioTrack = (*env)->GetMethodID(env, cAudioTrack, "<init>", "(IIIIII)V");

   mWrite = (*env)->GetMethodID(env, cAudioTrack, "write", "([BII)I");

   mPlay = (*env)->GetMethodID(env, cAudioTrack, "play", "()V");

   mGetMinBufferSize = (*env)->GetStaticMethodID(env, cAudioTrack, "getMinBufferSize", "(III)I");

   mbufferSizeInBytes = (*env)->CallStaticIntMethod(env, cAudioTrack, mGetMinBufferSize, sampleRateInHz, channelConfig, audioFormat);

   mtrack = (*env)->NewObject(env, cAudioTrack, mAudioTrack, 3 , sampleRateInHz, channelConfig, audioFormat, mbufferSizeInBytes, 1 );

   gtrack = (*env)->NewGlobalRef(env, mtrack);

   (*env)->CallNonvirtualVoidMethod(env, gtrack, cAudioTrack, mPlay);

   if ((stereodata16 = (u16 *)malloc(2 * mbufferSizeInBytes)) == ((void*)0))
      return -1;
   memset(stereodata16, 0, soundbufsize);

   soundvolume = 100;
   soundmaxvolume = 100;
   soundbufsize = 85;
   soundoffset = 0;
   muted = 0;

   return 0;
}
