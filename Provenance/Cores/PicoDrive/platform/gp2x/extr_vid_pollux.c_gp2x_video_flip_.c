
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FB_BUF_COUNT ;
 int pollux_video_flip (int ) ;

__attribute__((used)) static void gp2x_video_flip_(void)
{
 pollux_video_flip(FB_BUF_COUNT);
}
