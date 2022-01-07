
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int sh2coretype; scalar_t__ skip_load; scalar_t__ frameskip; int videoformattype; int cartpath; int mpegpath; int buppath; int cdpath; int biospath; scalar_t__ regionid; int carttype; int cdcoretype; int sndcoretype; int vidcoretype; int percoretype; int m68kcoretype; } ;
typedef TYPE_1__ yabauseinit_struct ;
typedef int jobject ;
typedef int jint ;
struct TYPE_8__ {int (* NewGlobalRef ) (TYPE_2__**,int ) ;} ;
typedef TYPE_2__* JNIEnv ;


 int CDCORE_ISO ;
 int GetBiosPath () ;
 int GetCartridgePath () ;
 int GetCartridgeType () ;
 int GetGamePath () ;
 int GetMemoryPath () ;
 int M68KCORE_C68K ;
 int OSDCORE_SOFT ;
 int OSDChangeCore (int ) ;
 int PERCORE_DUMMY ;
 int PERPAD_A ;
 int PERPAD_B ;
 int PERPAD_C ;
 int PERPAD_DOWN ;
 int PERPAD_LEFT ;
 int PERPAD_RIGHT ;
 int PERPAD_START ;
 int PERPAD_UP ;
 int PERPAD_X ;
 int PERPAD_Y ;
 int PERPAD_Z ;
 int PORTDATA1 ;
 void* PerPadAdd (int *) ;
 int PerPortReset () ;
 int PerSetKey (int ,int ,void*) ;
 int SH2CORE_DEFAULT ;
 int SNDCORE_AUDIOTRACK ;
 int SNDCORE_OPENSL ;
 int ScspSetFrameAccurate (int) ;
 int VIDCORE_SOFT ;
 int VIDEOFORMATTYPE_NTSC ;
 int YabauseInit (TYPE_1__*) ;
 int initEGLFunc () ;
 int memset (TYPE_1__*,int ,int) ;
 int mpegpath ;
 int stub1 (TYPE_2__**,int ) ;
 int yabause ;

jint
Java_org_yabause_android_YabauseRunnable_init( JNIEnv* env, jobject obj, jobject yab )
{
    yabauseinit_struct yinit;
    int res;
    void * padbits;

    if( initEGLFunc() == -1 ) return -1;

    yabause = (*env)->NewGlobalRef(env, yab);

    memset(&yinit, 0, sizeof(yabauseinit_struct));

    yinit.m68kcoretype = M68KCORE_C68K;
    yinit.percoretype = PERCORE_DUMMY;



    yinit.sh2coretype = SH2CORE_DEFAULT;

    yinit.vidcoretype = VIDCORE_SOFT;



    yinit.sndcoretype = SNDCORE_AUDIOTRACK;

    yinit.cdcoretype = CDCORE_ISO;
    yinit.carttype = GetCartridgeType();
    yinit.regionid = 0;
    yinit.biospath = GetBiosPath();
    yinit.cdpath = GetGamePath();
    yinit.buppath = GetMemoryPath();
    yinit.mpegpath = mpegpath;
    yinit.cartpath = GetCartridgePath();
    yinit.videoformattype = VIDEOFORMATTYPE_NTSC;
    yinit.frameskip = 0;
    yinit.skip_load = 0;

    res = YabauseInit(&yinit);

    OSDChangeCore(OSDCORE_SOFT);

    PerPortReset();
    padbits = PerPadAdd(&PORTDATA1);
    PerSetKey(PERPAD_UP, PERPAD_UP, padbits);
    PerSetKey(PERPAD_RIGHT, PERPAD_RIGHT, padbits);
    PerSetKey(PERPAD_DOWN, PERPAD_DOWN, padbits);
    PerSetKey(PERPAD_LEFT, PERPAD_LEFT, padbits);
    PerSetKey(PERPAD_START, PERPAD_START, padbits);
    PerSetKey(PERPAD_A, PERPAD_A, padbits);
    PerSetKey(PERPAD_B, PERPAD_B, padbits);
    PerSetKey(PERPAD_C, PERPAD_C, padbits);
    PerSetKey(PERPAD_X, PERPAD_X, padbits);
    PerSetKey(PERPAD_Y, PERPAD_Y, padbits);
    PerSetKey(PERPAD_Z, PERPAD_Z, padbits);

    ScspSetFrameAccurate(1);

    return res;
}
