
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int GXRModeObj ;


 int CONF_GetEuRGB60 () ;
 scalar_t__ CONF_GetProgressiveScan () ;
 int CONF_GetVideo () ;



 int TVEurgb60Hz480IntDf ;
 int TVEurgb60Hz480Prog ;
 int TVMpal480IntDf ;
 int TVMpal480Prog ;
 int TVNtsc480IntDf ;
 int TVNtsc480Prog ;
 int TVPal576IntDfScale ;
 int TVPal576ProgScale ;
 int VIDEO_GetCurrentTvMode () ;
 scalar_t__ VIDEO_HaveComponentCable () ;




 int memcpy (int *,int *,int) ;

GXRModeObj * VIDEO_GetPreferredMode(GXRModeObj *mode)
{

GXRModeObj *rmode = ((void*)0);
 u32 tvmode = VIDEO_GetCurrentTvMode();
 if (VIDEO_HaveComponentCable()) {
  switch (tvmode) {
   case 129:
    rmode = &TVNtsc480Prog;
    break;
   case 128:
    rmode = &TVPal576ProgScale;
    break;
   case 130:
    rmode = &TVMpal480Prog;
    break;
   case 131:
    rmode = &TVEurgb60Hz480Prog;
    break;
  }
 } else {
  switch (tvmode) {
   case 129:
    rmode = &TVNtsc480IntDf;
    break;
   case 128:
    rmode = &TVPal576IntDfScale;
    break;
   case 130:
    rmode = &TVMpal480IntDf;
    break;
   case 131:
    rmode = &TVEurgb60Hz480IntDf;
    break;
  }
 }


 if ( ((void*)0) != mode ) {
  memcpy( mode, rmode, sizeof(GXRModeObj));
 } else {
  mode = rmode;
 }

 return mode;

}
