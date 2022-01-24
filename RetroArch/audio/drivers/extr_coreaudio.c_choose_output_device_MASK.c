#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  dev; } ;
typedef  TYPE_1__ coreaudio_t ;
typedef  int UInt32 ;
struct TYPE_7__ {int /*<<< orphan*/  mSelector; int /*<<< orphan*/  mScope; int /*<<< orphan*/  mElement; } ;
typedef  TYPE_2__ AudioObjectPropertyAddress ;
typedef  char AudioDeviceID ;

/* Variables and functions */
 scalar_t__ FUNC0 (char,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*,char*) ; 
 scalar_t__ FUNC1 (char,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  kAudioDevicePropertyDeviceName ; 
 int /*<<< orphan*/  kAudioDevicePropertyScopeOutput ; 
 int /*<<< orphan*/  kAudioHardwarePropertyDevices ; 
 int /*<<< orphan*/  kAudioObjectPropertyElementMaster ; 
 int /*<<< orphan*/  kAudioObjectPropertyScopeGlobal ; 
 int /*<<< orphan*/  kAudioObjectPropertyScopeOutput ; 
 char kAudioObjectSystemObject ; 
 int /*<<< orphan*/  kAudioOutputUnitProperty_CurrentDevice ; 
 int /*<<< orphan*/  kAudioUnitScope_Global ; 
 scalar_t__ FUNC4 (int) ; 
 scalar_t__ noErr ; 
 scalar_t__ FUNC5 (char*,char const*) ; 

__attribute__((used)) static void FUNC6(coreaudio_t *dev, const char* device)
{
   unsigned i;
   UInt32 deviceCount;
   AudioObjectPropertyAddress propaddr;
   AudioDeviceID *devices              = NULL;
   UInt32 size                         = 0;

   propaddr.mSelector = kAudioHardwarePropertyDevices;
#if MAC_OS_X_VERSION_10_12
   propaddr.mScope    = kAudioObjectPropertyScopeOutput;
#else
   propaddr.mScope    = kAudioObjectPropertyScopeGlobal;
#endif
   propaddr.mElement  = kAudioObjectPropertyElementMaster;

   if (FUNC1(kAudioObjectSystemObject,
            &propaddr, 0, 0, &size) != noErr)
      return;

   deviceCount = size / sizeof(AudioDeviceID);
   devices     = (AudioDeviceID*)FUNC4(size);

   if (!devices || FUNC0(kAudioObjectSystemObject,
            &propaddr, 0, 0, &size, devices) != noErr)
      goto done;

#if MAC_OS_X_VERSION_10_12
#else
   propaddr.mScope    = kAudioDevicePropertyScopeOutput;
#endif
   propaddr.mSelector = kAudioDevicePropertyDeviceName;

   for (i = 0; i < deviceCount; i ++)
   {
      char device_name[1024];
      device_name[0] = 0;
      size           = 1024;

      if (FUNC0(devices[i],
               &propaddr, 0, 0, &size, device_name) == noErr
            && FUNC5(device_name, device))
      {
         FUNC2(dev->dev, kAudioOutputUnitProperty_CurrentDevice,
               kAudioUnitScope_Global, 0, &devices[i], sizeof(AudioDeviceID));
         goto done;
      }
   }

done:
   FUNC3(devices);
}