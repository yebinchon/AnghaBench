
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int pending_int_irq; unsigned int pending_int_vector; int test_irq; } ;
typedef TYPE_1__ SH2 ;


 int SH2_REG_SIZE ;
 int memcpy (TYPE_1__*,unsigned char const*,int) ;

void sh2_unpack(SH2 *sh2, const unsigned char *buff)
{
 unsigned int *p;

 memcpy(sh2, buff, SH2_REG_SIZE);
 p = (void *)(buff + SH2_REG_SIZE);

 sh2->pending_int_irq = p[0];
 sh2->pending_int_vector = p[1];
 sh2->test_irq = 1;
}
