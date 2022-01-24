#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int sh2coretype; scalar_t__ skip_load; scalar_t__ frameskip; int /*<<< orphan*/  videoformattype; int /*<<< orphan*/  cartpath; int /*<<< orphan*/  mpegpath; int /*<<< orphan*/  buppath; int /*<<< orphan*/  cdpath; int /*<<< orphan*/  biospath; scalar_t__ regionid; int /*<<< orphan*/  carttype; int /*<<< orphan*/  cdcoretype; int /*<<< orphan*/  sndcoretype; int /*<<< orphan*/  vidcoretype; int /*<<< orphan*/  percoretype; int /*<<< orphan*/  m68kcoretype; } ;
typedef  TYPE_1__ yabauseinit_struct ;
typedef  int /*<<< orphan*/  jobject ;
typedef  int jint ;
struct TYPE_8__ {int /*<<< orphan*/  (* NewGlobalRef ) (TYPE_2__**,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_2__* JNIEnv ;

/* Variables and functions */
 int /*<<< orphan*/  CDCORE_ISO ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  M68KCORE_C68K ; 
 int /*<<< orphan*/  OSDCORE_SOFT ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PERCORE_DUMMY ; 
 int /*<<< orphan*/  PERPAD_A ; 
 int /*<<< orphan*/  PERPAD_B ; 
 int /*<<< orphan*/  PERPAD_C ; 
 int /*<<< orphan*/  PERPAD_DOWN ; 
 int /*<<< orphan*/  PERPAD_LEFT ; 
 int /*<<< orphan*/  PERPAD_RIGHT ; 
 int /*<<< orphan*/  PERPAD_START ; 
 int /*<<< orphan*/  PERPAD_UP ; 
 int /*<<< orphan*/  PERPAD_X ; 
 int /*<<< orphan*/  PERPAD_Y ; 
 int /*<<< orphan*/  PERPAD_Z ; 
 int /*<<< orphan*/  PORTDATA1 ; 
 void* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 int SH2CORE_DEFAULT ; 
 int /*<<< orphan*/  SNDCORE_AUDIOTRACK ; 
 int /*<<< orphan*/  SNDCORE_OPENSL ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  VIDCORE_SOFT ; 
 int /*<<< orphan*/  VIDEOFORMATTYPE_NTSC ; 
 int FUNC10 (TYPE_1__*) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  mpegpath ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  yabause ; 

jint
FUNC14( JNIEnv* env, jobject obj, jobject yab )
{
    yabauseinit_struct yinit;
    int res;
    void * padbits;

    if( FUNC11() == -1 ) return -1;

    yabause = (*env)->NewGlobalRef(env, yab);

    FUNC12(&yinit, 0, sizeof(yabauseinit_struct));

    yinit.m68kcoretype = M68KCORE_C68K;
    yinit.percoretype = PERCORE_DUMMY;
#ifdef SH2_DYNAREC
    yinit.sh2coretype = 2;
#else
    yinit.sh2coretype = SH2CORE_DEFAULT;
#endif
    yinit.vidcoretype = VIDCORE_SOFT;
#ifdef HAVE_OPENSL
    yinit.sndcoretype = SNDCORE_OPENSL;
#else
    yinit.sndcoretype = SNDCORE_AUDIOTRACK;
#endif
    yinit.cdcoretype = CDCORE_ISO;
    yinit.carttype = FUNC2();
    yinit.regionid = 0;
    yinit.biospath = FUNC0();
    yinit.cdpath = FUNC3();
    yinit.buppath = FUNC4();
    yinit.mpegpath = mpegpath;
    yinit.cartpath = FUNC1();
    yinit.videoformattype = VIDEOFORMATTYPE_NTSC;
    yinit.frameskip = 0;
    yinit.skip_load = 0;

    res = FUNC10(&yinit);

    FUNC5(OSDCORE_SOFT);

    FUNC7();
    padbits = FUNC6(&PORTDATA1);
    FUNC8(PERPAD_UP, PERPAD_UP, padbits);
    FUNC8(PERPAD_RIGHT, PERPAD_RIGHT, padbits);
    FUNC8(PERPAD_DOWN, PERPAD_DOWN, padbits);
    FUNC8(PERPAD_LEFT, PERPAD_LEFT, padbits);
    FUNC8(PERPAD_START, PERPAD_START, padbits);
    FUNC8(PERPAD_A, PERPAD_A, padbits);
    FUNC8(PERPAD_B, PERPAD_B, padbits);
    FUNC8(PERPAD_C, PERPAD_C, padbits);
    FUNC8(PERPAD_X, PERPAD_X, padbits);
    FUNC8(PERPAD_Y, PERPAD_Y, padbits);
    FUNC8(PERPAD_Z, PERPAD_Z, padbits);

    FUNC9(1);

    return res;
}