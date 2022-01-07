
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _vita2d_context ;
 int sceGxmFinish (int ) ;

void vita2d_wait_rendering_done()
{
 sceGxmFinish(_vita2d_context);
}
