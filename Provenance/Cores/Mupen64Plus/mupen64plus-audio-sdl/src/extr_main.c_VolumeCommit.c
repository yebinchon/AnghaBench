
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_MIX_MAXVOLUME ;
 scalar_t__ VOLUME_TYPE_OSS ;
 scalar_t__ VolIsMuted ;
 int VolPercent ;
 int VolSDL ;
 scalar_t__ VolumeControlType ;
 int volSet (int) ;

__attribute__((used)) static void VolumeCommit(void)
{
    int levelToCommit = VolIsMuted ? 0 : VolPercent;
    {
        VolSDL = SDL_MIX_MAXVOLUME * levelToCommit / 100;
    }
}
