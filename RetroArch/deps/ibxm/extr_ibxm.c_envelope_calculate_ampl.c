
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct envelope {int* points_ampl; int num_points; int* points_tick; } ;



__attribute__((used)) static int envelope_calculate_ampl( struct envelope *envelope, int tick ) {
 int idx, point, dt, da;
 int ampl = envelope->points_ampl[ envelope->num_points - 1 ];
 if( tick < envelope->points_tick[ envelope->num_points - 1 ] ) {
  point = 0;
  for( idx = 1; idx < envelope->num_points; idx++ ) {
   if( envelope->points_tick[ idx ] <= tick ) {
    point = idx;
   }
  }
  dt = envelope->points_tick[ point + 1 ] - envelope->points_tick[ point ];
  da = envelope->points_ampl[ point + 1 ] - envelope->points_ampl[ point ];
  ampl = envelope->points_ampl[ point ];
  ampl += ( ( da << 24 ) / dt ) * ( tick - envelope->points_tick[ point ] ) >> 24;
 }
 return ampl;
}
