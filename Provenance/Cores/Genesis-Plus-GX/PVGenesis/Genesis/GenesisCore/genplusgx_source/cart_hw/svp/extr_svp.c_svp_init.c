
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rom; } ;


 TYPE_1__ cart ;
 int memset (void*,int ,int) ;
 void* svp ;

void svp_init(void)
{
  svp = (void *) ((char *)cart.rom + 0x200000);
  memset(svp, 0, sizeof(*svp));
}
