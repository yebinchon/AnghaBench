
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mk_timer_data_t ;


 int TRUE ;
 int Z_NOENCRYPT ;
 int assert (int) ;
 int * mk_timer_zone ;
 int * zinit (int,int,int,char*) ;
 int zone_change (int *,int ,int ) ;

void
mk_timer_init(void)
{
 int s = sizeof (mk_timer_data_t);

 assert(!(mk_timer_zone != ((void*)0)));

 mk_timer_zone = zinit(s, (4096 * s), (16 * s), "mk_timer");

 zone_change(mk_timer_zone, Z_NOENCRYPT, TRUE);
}
