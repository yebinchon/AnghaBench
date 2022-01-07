
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_48__ TYPE_7__ ;
typedef struct TYPE_47__ TYPE_6__ ;
typedef struct TYPE_46__ TYPE_5__ ;
typedef struct TYPE_45__ TYPE_4__ ;
typedef struct TYPE_44__ TYPE_3__ ;
typedef struct TYPE_43__ TYPE_2__ ;
typedef struct TYPE_42__ TYPE_1__ ;
typedef struct TYPE_41__ TYPE_19__ ;
typedef struct TYPE_40__ TYPE_16__ ;
typedef struct TYPE_39__ TYPE_12__ ;


struct TYPE_48__ {scalar_t__ (* Realize ) (TYPE_7__**,int const) ;scalar_t__ (* GetInterface ) (TYPE_7__**,int const,TYPE_6__***) ;} ;
struct TYPE_47__ {scalar_t__ (* RegisterCallback ) (TYPE_6__**,int ,int *) ;scalar_t__ (* SetPlayState ) (TYPE_6__**,int ) ;} ;
struct TYPE_46__ {int member_1; int member_5; int member_6; int member_4; int member_3; int member_2; int member_0; } ;
struct TYPE_45__ {int member_1; int member_0; } ;
struct TYPE_44__ {TYPE_16__** member_1; int member_0; } ;
struct TYPE_43__ {int * member_1; TYPE_3__* member_0; } ;
struct TYPE_42__ {TYPE_5__* member_1; TYPE_4__* member_0; } ;
struct TYPE_41__ {scalar_t__ (* Realize ) (TYPE_19__**,int const) ;scalar_t__ (* GetInterface ) (TYPE_19__**,int ,TYPE_12__***) ;} ;
struct TYPE_40__ {scalar_t__ (* Realize ) (TYPE_16__**,int const) ;} ;
struct TYPE_39__ {scalar_t__ (* CreateOutputMix ) (TYPE_12__**,TYPE_16__***,int,int const*,int const*) ;scalar_t__ (* CreateAudioPlayer ) (TYPE_12__**,TYPE_7__***,TYPE_1__*,TYPE_2__*,int,int const*,int const*) ;} ;
typedef scalar_t__ SLresult ;
typedef int SLboolean ;
typedef int SLInterfaceID ;
typedef TYPE_1__ SLDataSource ;
typedef TYPE_2__ SLDataSink ;
typedef TYPE_3__ SLDataLocator_OutputMix ;
typedef TYPE_4__ SLDataLocator_AndroidSimpleBufferQueue ;
typedef TYPE_5__ SLDataFormat_PCM ;


 int InitSoundBuff () ;
 int const SL_BOOLEAN_FALSE ;
 int const SL_BOOLEAN_TRUE ;
 int SL_BYTEORDER_LITTLEENDIAN ;
 int SL_DATAFORMAT_PCM ;
 int SL_DATALOCATOR_ANDROIDSIMPLEBUFFERQUEUE ;
 int SL_DATALOCATOR_OUTPUTMIX ;
 int const SL_IID_BUFFERQUEUE ;
 int const SL_IID_EFFECTSEND ;
 int SL_IID_ENGINE ;
 int const SL_IID_ENVIRONMENTALREVERB ;
 int const SL_IID_MUTESOLO ;
 int const SL_IID_PLAY ;
 int const SL_IID_VOLUME ;
 int SL_PCMSAMPLEFORMAT_FIXED_16 ;
 int SL_PLAYSTATE_PLAYING ;
 scalar_t__ SL_RESULT_SUCCESS ;
 int SL_SAMPLINGRATE_44_1 ;
 int SL_SPEAKER_FRONT_LEFT ;
 int SL_SPEAKER_FRONT_RIGHT ;
 int assert (int) ;
 TYPE_6__** bqPlayerBufferQueue ;
 int bqPlayerCallback ;
 TYPE_6__** bqPlayerEffectSend ;
 TYPE_6__** bqPlayerMuteSolo ;
 TYPE_7__** bqPlayerObject ;
 TYPE_6__** bqPlayerPlay ;
 TYPE_6__** bqPlayerVolume ;
 TYPE_12__** engineEngine ;
 TYPE_19__** engineObject ;
 scalar_t__ muted ;
 TYPE_16__** outputMixObject ;
 scalar_t__ slCreateEngine (TYPE_19__***,int ,int *,int ,int *,int *) ;
 scalar_t__ stub1 (TYPE_19__**,int const) ;
 scalar_t__ stub10 (TYPE_7__**,int const,TYPE_6__***) ;
 scalar_t__ stub11 (TYPE_7__**,int const,TYPE_6__***) ;
 scalar_t__ stub12 (TYPE_7__**,int const,TYPE_6__***) ;
 scalar_t__ stub13 (TYPE_6__**,int ) ;
 scalar_t__ stub2 (TYPE_19__**,int ,TYPE_12__***) ;
 scalar_t__ stub3 (TYPE_12__**,TYPE_16__***,int,int const*,int const*) ;
 scalar_t__ stub4 (TYPE_16__**,int const) ;
 scalar_t__ stub5 (TYPE_12__**,TYPE_7__***,TYPE_1__*,TYPE_2__*,int,int const*,int const*) ;
 scalar_t__ stub6 (TYPE_7__**,int const) ;
 scalar_t__ stub7 (TYPE_7__**,int const,TYPE_6__***) ;
 scalar_t__ stub8 (TYPE_7__**,int const,TYPE_6__***) ;
 scalar_t__ stub9 (TYPE_6__**,int ,int *) ;

__attribute__((used)) static int SNDOpenSLInit(void)
{
   int i;


    SLDataLocator_AndroidSimpleBufferQueue loc_bufq = {SL_DATALOCATOR_ANDROIDSIMPLEBUFFERQUEUE, 2};
    SLDataFormat_PCM format_pcm = {SL_DATAFORMAT_PCM, 2, SL_SAMPLINGRATE_44_1,
        SL_PCMSAMPLEFORMAT_FIXED_16, SL_PCMSAMPLEFORMAT_FIXED_16,
        (SL_SPEAKER_FRONT_LEFT | SL_SPEAKER_FRONT_RIGHT), SL_BYTEORDER_LITTLEENDIAN};
    SLDataSource audioSrc = {&loc_bufq, &format_pcm};

   SLresult result;



   result = slCreateEngine(&engineObject, 0, ((void*)0), 0, ((void*)0), ((void*)0));
   assert(SL_RESULT_SUCCESS == result);


   result = (*engineObject)->Realize(engineObject, SL_BOOLEAN_FALSE);
   assert(SL_RESULT_SUCCESS == result);


   result = (*engineObject)->GetInterface(engineObject, SL_IID_ENGINE, &engineEngine);
   assert(SL_RESULT_SUCCESS == result);


   const SLInterfaceID ids[1] = {SL_IID_ENVIRONMENTALREVERB};
   const SLboolean req[1] = {SL_BOOLEAN_FALSE};

   result = (*engineEngine)->CreateOutputMix(engineEngine, &outputMixObject, 1, ids, req);
   assert(SL_RESULT_SUCCESS == result);


   result = (*outputMixObject)->Realize(outputMixObject, SL_BOOLEAN_FALSE);
   assert(SL_RESULT_SUCCESS == result);


    SLDataLocator_OutputMix loc_outmix = {SL_DATALOCATOR_OUTPUTMIX, outputMixObject};
    SLDataSink audioSnk = {&loc_outmix, ((void*)0)};


    const SLInterfaceID aids[3] = {SL_IID_BUFFERQUEUE, SL_IID_EFFECTSEND, SL_IID_VOLUME};
    const SLboolean areq[3] = {SL_BOOLEAN_TRUE, SL_BOOLEAN_TRUE, SL_BOOLEAN_TRUE};
    result = (*engineEngine)->CreateAudioPlayer(engineEngine, &bqPlayerObject, &audioSrc, &audioSnk,
            3, aids, areq);
    assert(SL_RESULT_SUCCESS == result);


    result = (*bqPlayerObject)->Realize(bqPlayerObject, SL_BOOLEAN_FALSE);
    assert(SL_RESULT_SUCCESS == result);


    result = (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_PLAY, &bqPlayerPlay);
    assert(SL_RESULT_SUCCESS == result);


    result = (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_BUFFERQUEUE,
            &bqPlayerBufferQueue);
    assert(SL_RESULT_SUCCESS == result);


    result = (*bqPlayerBufferQueue)->RegisterCallback(bqPlayerBufferQueue, bqPlayerCallback, ((void*)0));
    assert(SL_RESULT_SUCCESS == result);


    result = (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_EFFECTSEND,
            &bqPlayerEffectSend);
    assert(SL_RESULT_SUCCESS == result);
    result = (*bqPlayerObject)->GetInterface(bqPlayerObject, SL_IID_VOLUME, &bqPlayerVolume);
    assert(SL_RESULT_SUCCESS == result);

    InitSoundBuff();



   result = (*bqPlayerPlay)->SetPlayState(bqPlayerPlay, SL_PLAYSTATE_PLAYING);
   assert(SL_RESULT_SUCCESS == result);

   muted = 0;

   return 0;
}
