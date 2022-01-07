
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mfxU16 ;


 scalar_t__ MFX_CODINGOPTION_OFF ;
 scalar_t__ MFX_CODINGOPTION_ON ;

__attribute__((used)) static const char *print_threestate(mfxU16 val)
{
    if (val == MFX_CODINGOPTION_ON)
        return "ON";
    else if (val == MFX_CODINGOPTION_OFF)
        return "OFF";
    return "unknown";
}
