
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int retro_video_refresh_t ;


 int video_cb ;

void retro_set_video_refresh(retro_video_refresh_t cb) { video_cb = cb; }
