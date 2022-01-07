
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_6__ {int efbHeight; int xfbHeight; scalar_t__ xfbMode; int viTVMode; int viXOrigin; int viYOrigin; scalar_t__ viHeight; scalar_t__ viWidth; scalar_t__ fbWidth; } ;
typedef TYPE_1__ GXRModeObj ;


 int VI_PROGRESSIVE ;
 scalar_t__ VI_XFBMODE_SF ;
 int memcpy (TYPE_1__*,TYPE_1__*,int) ;

void GX_AdjustForOverscan(GXRModeObj *rmin,GXRModeObj *rmout,u16 hor,u16 ver)
{
 if(rmin!=rmout) memcpy(rmout,rmin,sizeof(GXRModeObj));

 rmout->fbWidth = rmin->fbWidth-(hor<<1);
 rmout->efbHeight = rmin->efbHeight-((rmin->efbHeight*(ver<<1))/rmin->xfbHeight);
 if(rmin->xfbMode==VI_XFBMODE_SF && !(rmin->viTVMode&VI_PROGRESSIVE)) rmout->xfbHeight = rmin->xfbHeight-ver;
 else rmout->xfbHeight = rmin->xfbHeight-(ver<<1);

 rmout->viWidth = rmin->viWidth-(hor<<1);
 if(rmin->viTVMode&VI_PROGRESSIVE) rmout->viHeight = rmin->viHeight-(ver<<2);
 else rmout->viHeight = rmin->viHeight-(ver<<1);

 rmout->viXOrigin += hor;
 rmout->viYOrigin += ver;
}
