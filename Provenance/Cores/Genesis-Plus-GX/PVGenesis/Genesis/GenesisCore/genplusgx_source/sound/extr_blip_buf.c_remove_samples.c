
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf_t ;
struct TYPE_4__ {int offset; } ;
typedef TYPE_1__ blip_t ;


 int * SAMPLES (TYPE_1__*) ;
 int buf_extra ;
 int memmove (int *,int *,int) ;
 int memset (int *,int ,int) ;
 int time_bits ;
 int time_unit ;

__attribute__((used)) static void remove_samples( blip_t* m, int count )
{
 buf_t* buf = SAMPLES( m );
 int remain = (m->offset >> time_bits) + buf_extra - count;
  m->offset -= count * time_unit;

 memmove( &buf [0], &buf [count], remain * sizeof buf [0] );
 memset( &buf [remain], 0, count * sizeof buf [0] );
}
