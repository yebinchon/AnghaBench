
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _vita2d_context ;
 scalar_t__ drawing ;
 int sceGxmEndScene (int ,int *,int *) ;

void vita2d_end_drawing()
{
 sceGxmEndScene(_vita2d_context, ((void*)0), ((void*)0));
 drawing = 0;
}
