
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VP8Context ;


 int IS_VP7 ;
 int update_dimensions (int *,int,int,int ) ;

__attribute__((used)) static int vp7_update_dimensions(VP8Context *s, int width, int height)
{
    return update_dimensions(s, width, height, IS_VP7);
}
