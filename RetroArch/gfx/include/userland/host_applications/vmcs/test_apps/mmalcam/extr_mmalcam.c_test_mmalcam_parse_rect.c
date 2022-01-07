
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int height; int width; int y; int x; } ;
typedef TYPE_1__ MMAL_RECT_T ;
typedef int MMAL_BOOL_T ;


 int sscanf (char const*,char*,int *,int *,int *,int *) ;

__attribute__((used)) static MMAL_BOOL_T test_mmalcam_parse_rect(const char *str, MMAL_RECT_T *rect)
{

   return sscanf(str, "%d,%d,%d,%d", &rect->x, &rect->y, &rect->width, &rect->height) == 4;
}
