
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ARTIFACT_t ;


 int ARTIFACT_mode ;
 int TRUE ;
 int UpdateFromTVMode (int) ;
 int UpdateMode (int ,int ) ;

void ARTIFACT_SetTVMode(int tv_mode)
{
 ARTIFACT_t old_mode = ARTIFACT_mode;
 UpdateFromTVMode(tv_mode);
 UpdateMode(old_mode, TRUE);
}
