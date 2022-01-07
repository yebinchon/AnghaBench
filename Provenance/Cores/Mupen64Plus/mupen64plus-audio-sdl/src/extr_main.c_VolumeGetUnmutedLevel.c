
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ VOLUME_TYPE_OSS ;
 int VolIsMuted ;
 int VolPercent ;
 scalar_t__ VolumeControlType ;
 int volGet () ;

__attribute__((used)) static int VolumeGetUnmutedLevel(void)
{
    return VolPercent;
}
