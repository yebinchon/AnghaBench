
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf_t ;
struct TYPE_4__ {int offset; int factor; int size; scalar_t__ integrator; } ;
typedef TYPE_1__ blip_t ;


 int SAMPLES (TYPE_1__*) ;
 int buf_extra ;
 int memset (int ,int ,int) ;

void blip_clear( blip_t* m )
{






 m->offset = m->factor / 2;
 m->integrator = 0;
 memset( SAMPLES( m ), 0, (m->size + buf_extra) * sizeof (buf_t) );
}
