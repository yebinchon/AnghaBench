
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int vita2d_pool_reset () ;
 int vita2d_start_drawing_advanced (int *,int ) ;

void vita2d_start_drawing()
{
 vita2d_pool_reset();
 vita2d_start_drawing_advanced(((void*)0), 0);
}
