
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_FrameBuffer ;
 scalar_t__ g_VertexBuffer ;
 int g_buf_height ;
 int g_buf_width ;

int Java_org_yabause_android_YabauseRunnable_cleanup()
{
    g_FrameBuffer = 0;
    g_VertexBuffer = 0;
    g_buf_width = -1;
    g_buf_height = -1;
}
