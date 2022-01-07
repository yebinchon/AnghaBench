
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int scsp_frame_accurate ;

void ScspSetFrameAccurate(int on)
{
   scsp_frame_accurate = (on != 0);
}
