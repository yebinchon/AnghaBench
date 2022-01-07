
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ start; scalar_t__ new_chap; } ;
struct TYPE_6__ {TYPE_1__ s; } ;
typedef TYPE_2__ hb_buffer_t ;



__attribute__((used)) static inline void copy_chapter( hb_buffer_t * dst, hb_buffer_t * src )
{





    if( src && dst && src->s.start == dst->s.start && src->s.new_chap != 0)
    {

        dst->s.new_chap = src->s.new_chap;
    }
}
