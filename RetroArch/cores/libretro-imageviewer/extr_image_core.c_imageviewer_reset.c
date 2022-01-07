
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * image_buffer ;
 scalar_t__ image_height ;
 scalar_t__ image_width ;

__attribute__((used)) static void imageviewer_reset(void)
{
   image_buffer = ((void*)0);
   image_width = 0;
   image_height = 0;
}
