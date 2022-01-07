
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int h; int w; } ;
typedef TYPE_1__ SDL_Rect ;
typedef int AVRational ;


 int INT_MAX ;
 int calculate_display_rect (TYPE_1__*,int ,int ,int,int,int,int,int ) ;
 int default_height ;
 int default_width ;
 int screen_height ;
 int screen_width ;

__attribute__((used)) static void set_default_window_size(int width, int height, AVRational sar)
{
    SDL_Rect rect;
    int max_width = screen_width ? screen_width : INT_MAX;
    int max_height = screen_height ? screen_height : INT_MAX;
    if (max_width == INT_MAX && max_height == INT_MAX)
        max_height = height;
    calculate_display_rect(&rect, 0, 0, max_width, max_height, width, height, sar);
    default_width = rect.w;
    default_height = rect.h;
}
