
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label {int dummy; } ;


 int FALSE ;
 int TRUE ;
 int Z_CALLERACCT ;
 int Z_EXHAUST ;
 int Z_EXPAND ;
 int zinit (int,int,int,char*) ;
 int zone_change (int ,int ,int ) ;
 int zone_label ;

void
mac_labelzone_init(void)
{

 zone_label = zinit(sizeof(struct label),
     8192 * sizeof(struct label),
     sizeof(struct label), "MAC Labels");
 zone_change(zone_label, Z_EXPAND, TRUE);
 zone_change(zone_label, Z_EXHAUST, FALSE);
 zone_change(zone_label, Z_CALLERACCT, FALSE);
}
