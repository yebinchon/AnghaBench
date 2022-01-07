
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ctl_reg {int ctl_flags; int ctl_send; int ctl_disconnect; int ctl_connect; int ctl_recvsize; int ctl_sendsize; int ctl_name; } ;
typedef int nstat_control ;
typedef int lck_grp_attr_t ;


 int CTL_FLAG_REG_CRIT ;
 int CTL_FLAG_REG_EXTENDED ;
 int NET_STAT_CONTROL_NAME ;
 int bzero (struct kern_ctl_reg*,int) ;
 int ctl_register (struct kern_ctl_reg*,int *) ;
 int lck_grp_alloc_init (char*,int *) ;
 int * lck_grp_attr_alloc_init () ;
 int lck_grp_attr_free (int *) ;
 int lck_grp_attr_setdefault (int *) ;
 int lck_mtx_init (int *,int ,int *) ;
 int nstat_control_connect ;
 int nstat_control_disconnect ;
 int nstat_control_send ;
 int nstat_ctlref ;
 int nstat_lck_grp ;
 int nstat_mtx ;
 int nstat_recvspace ;
 int nstat_sendspace ;
 int strlcpy (int ,int ,int) ;

__attribute__((used)) static void
nstat_control_register(void)
{

 lck_grp_attr_t *grp_attr = lck_grp_attr_alloc_init();
 lck_grp_attr_setdefault(grp_attr);
 nstat_lck_grp = lck_grp_alloc_init("network statistics kctl", grp_attr);
 lck_grp_attr_free(grp_attr);

 lck_mtx_init(&nstat_mtx, nstat_lck_grp, ((void*)0));


 struct kern_ctl_reg nstat_control;
 bzero(&nstat_control, sizeof(nstat_control));
 strlcpy(nstat_control.ctl_name, NET_STAT_CONTROL_NAME, sizeof(nstat_control.ctl_name));
 nstat_control.ctl_flags = CTL_FLAG_REG_EXTENDED | CTL_FLAG_REG_CRIT;
 nstat_control.ctl_sendsize = nstat_sendspace;
 nstat_control.ctl_recvsize = nstat_recvspace;
 nstat_control.ctl_connect = nstat_control_connect;
 nstat_control.ctl_disconnect = nstat_control_disconnect;
 nstat_control.ctl_send = nstat_control_send;

 ctl_register(&nstat_control, &nstat_ctlref);
}
