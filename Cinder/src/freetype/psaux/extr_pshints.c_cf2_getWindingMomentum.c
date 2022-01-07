
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CF2_Int ;
typedef int CF2_Fixed ;


 int SUB_INT32 (int,int) ;

__attribute__((used)) static CF2_Int
  cf2_getWindingMomentum( CF2_Fixed x1,
                          CF2_Fixed y1,
                          CF2_Fixed x2,
                          CF2_Fixed y2 )
  {



    return ( x1 >> 16 ) * ( SUB_INT32( y2, y1 ) >> 16 ) -
           ( y1 >> 16 ) * ( SUB_INT32( x2, x1 ) >> 16 );
  }
