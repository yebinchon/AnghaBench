
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32_t ;
typedef size_t mbuf_class_t ;
struct TYPE_2__ {int mtbl_avgtotal; } ;


 TYPE_1__* mbuf_table ;

__attribute__((used)) static uint32_t
m_avgtotal(mbuf_class_t c)
{
 return (mbuf_table[c].mtbl_avgtotal);
}
