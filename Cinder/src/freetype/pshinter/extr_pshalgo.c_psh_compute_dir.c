
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FT_Pos ;


 int FT_ABS (int) ;
 int PSH_DIR_DOWN ;
 int PSH_DIR_LEFT ;
 int PSH_DIR_NONE ;
 int PSH_DIR_RIGHT ;
 int PSH_DIR_UP ;

__attribute__((used)) static int
  psh_compute_dir( FT_Pos dx,
                   FT_Pos dy )
  {
    FT_Pos ax, ay;
    int result = PSH_DIR_NONE;


    ax = FT_ABS( dx );
    ay = FT_ABS( dy );

    if ( ay * 12 < ax )
    {

      result = ( dx >= 0 ) ? PSH_DIR_RIGHT : PSH_DIR_LEFT;
    }
    else if ( ax * 12 < ay )
    {

      result = ( dy >= 0 ) ? PSH_DIR_UP : PSH_DIR_DOWN;
    }

    return result;
  }
