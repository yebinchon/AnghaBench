
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int dev; } ;
typedef TYPE_1__ coreaudio_t ;
typedef int UInt32 ;
struct TYPE_7__ {int mSelector; int mScope; int mElement; } ;
typedef TYPE_2__ AudioObjectPropertyAddress ;
typedef char AudioDeviceID ;


 scalar_t__ AudioObjectGetPropertyData (char,TYPE_2__*,int ,int ,int*,char*) ;
 scalar_t__ AudioObjectGetPropertyDataSize (char,TYPE_2__*,int ,int ,int*) ;
 int AudioUnitSetProperty (int ,int ,int ,int ,char*,int) ;
 int free (char*) ;
 int kAudioDevicePropertyDeviceName ;
 int kAudioDevicePropertyScopeOutput ;
 int kAudioHardwarePropertyDevices ;
 int kAudioObjectPropertyElementMaster ;
 int kAudioObjectPropertyScopeGlobal ;
 int kAudioObjectPropertyScopeOutput ;
 char kAudioObjectSystemObject ;
 int kAudioOutputUnitProperty_CurrentDevice ;
 int kAudioUnitScope_Global ;
 scalar_t__ malloc (int) ;
 scalar_t__ noErr ;
 scalar_t__ string_is_equal (char*,char const*) ;

__attribute__((used)) static void choose_output_device(coreaudio_t *dev, const char* device)
{
   unsigned i;
   UInt32 deviceCount;
   AudioObjectPropertyAddress propaddr;
   AudioDeviceID *devices = ((void*)0);
   UInt32 size = 0;

   propaddr.mSelector = kAudioHardwarePropertyDevices;



   propaddr.mScope = kAudioObjectPropertyScopeGlobal;

   propaddr.mElement = kAudioObjectPropertyElementMaster;

   if (AudioObjectGetPropertyDataSize(kAudioObjectSystemObject,
            &propaddr, 0, 0, &size) != noErr)
      return;

   deviceCount = size / sizeof(AudioDeviceID);
   devices = (AudioDeviceID*)malloc(size);

   if (!devices || AudioObjectGetPropertyData(kAudioObjectSystemObject,
            &propaddr, 0, 0, &size, devices) != noErr)
      goto done;



   propaddr.mScope = kAudioDevicePropertyScopeOutput;

   propaddr.mSelector = kAudioDevicePropertyDeviceName;

   for (i = 0; i < deviceCount; i ++)
   {
      char device_name[1024];
      device_name[0] = 0;
      size = 1024;

      if (AudioObjectGetPropertyData(devices[i],
               &propaddr, 0, 0, &size, device_name) == noErr
            && string_is_equal(device_name, device))
      {
         AudioUnitSetProperty(dev->dev, kAudioOutputUnitProperty_CurrentDevice,
               kAudioUnitScope_Global, 0, &devices[i], sizeof(AudioDeviceID));
         goto done;
      }
   }

done:
   free(devices);
}
