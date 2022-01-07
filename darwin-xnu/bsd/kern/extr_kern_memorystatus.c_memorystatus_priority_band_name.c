
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;
__attribute__((used)) static const char *
memorystatus_priority_band_name(int32_t priority)
{
 switch (priority) {
 case 130:
  return "FOREGROUND";
 case 134:
  return "AUDIO_AND_ACCESSORY";
 case 133:
  return "CONDUCTOR";
 case 129:
  return "HOME";
 case 131:
  return "EXECUTIVE";
 case 128:
  return "IMPORTANT";
 case 132:
  return "CRITICAL";
 }

 return ("?");
}
