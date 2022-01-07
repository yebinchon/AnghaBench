
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf_t ;
struct TYPE_4__ {int factor; int size; } ;
typedef TYPE_1__ blip_t ;


 int assert (int) ;
 int blip_clear (TYPE_1__*) ;
 int blip_max_ratio ;
 int buf_extra ;
 int check_assumptions () ;
 scalar_t__ malloc (int) ;
 int time_unit ;

blip_t* blip_new( int size )
{
 blip_t* m;




 m = (blip_t*) malloc( sizeof *m + (size + buf_extra) * sizeof (buf_t) );
 if ( m )
 {
  m->factor = time_unit / blip_max_ratio;
  m->size = size;
  blip_clear( m );



  }
 return m;
}
