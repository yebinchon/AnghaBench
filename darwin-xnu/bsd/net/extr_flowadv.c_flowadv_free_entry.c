
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct flowadv_fcentry {int dummy; } ;


 int fadv_zone ;
 int zfree (int ,struct flowadv_fcentry*) ;

void
flowadv_free_entry(struct flowadv_fcentry *fce)
{
 zfree(fadv_zone, fce);
}
