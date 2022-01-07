
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VIDEOMODE_MODE_t ;


 scalar_t__ AF80_enabled ;
 scalar_t__ ARTIFACT_NTSC_FULL ;
 scalar_t__ ARTIFACT_mode ;
 scalar_t__ PBI_PROTO80_enabled ;
 scalar_t__ VIDEOMODE_80_column ;
 int VIDEOMODE_MODE_AF80 ;
 int VIDEOMODE_MODE_NORMAL ;
 int VIDEOMODE_MODE_NTSC_FILTER ;
 int VIDEOMODE_MODE_PROTO80 ;
 int VIDEOMODE_MODE_XEP80 ;
 scalar_t__ XEP80_enabled ;
 int force_standard_screen ;

__attribute__((used)) static VIDEOMODE_MODE_t CurrentDisplayMode(void)
{
 return VIDEOMODE_MODE_NORMAL;
}
