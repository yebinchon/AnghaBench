
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int callback ;
struct TYPE_3__ {int * inputProcRefCon; int * inputProc; } ;
typedef scalar_t__ OSStatus ;
typedef TYPE_1__ AURenderCallbackStruct ;


 scalar_t__ AudioOutputUnitStop (int ) ;
 scalar_t__ AudioUnitSetProperty (int ,int ,int ,int ,TYPE_1__*,int) ;
 scalar_t__ AudioUnitUninitialize (int ) ;
 int CloseComponent (int ) ;
 int kAudioUnitProperty_SetRenderCallback ;
 int kAudioUnitScope_Input ;
 scalar_t__ noErr ;
 int outputAU ;

__attribute__((used)) static void SNDMacDeInit(void) {
    OSStatus error;
    AURenderCallbackStruct callback;


    error = AudioOutputUnitStop(outputAU);

    if(error != noErr)
        return;


    callback.inputProc = ((void*)0);
    callback.inputProcRefCon = ((void*)0);

    error = AudioUnitSetProperty(outputAU, kAudioUnitProperty_SetRenderCallback,
                                 kAudioUnitScope_Input, 0, &callback,
                                 sizeof(callback));

    if(error != noErr)
        return;


    error = AudioUnitUninitialize(outputAU);

    if(error != noErr)
        return;


    CloseComponent(outputAU);
}
