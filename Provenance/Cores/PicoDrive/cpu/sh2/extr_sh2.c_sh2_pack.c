
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int pending_int_irq; unsigned int pending_int_vector; } ;
typedef TYPE_1__ SH2 ;


 int SH2_REG_SIZE ;
 int memcpy (unsigned char*,TYPE_1__ const*,int) ;

void sh2_pack(const SH2 *sh2, unsigned char *buff)
{
 unsigned int *p;

 memcpy(buff, sh2, SH2_REG_SIZE);
 p = (void *)(buff + SH2_REG_SIZE);

 p[0] = sh2->pending_int_irq;
 p[1] = sh2->pending_int_vector;
}
