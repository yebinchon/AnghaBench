
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int mgmtProcessDnodeStatus ;
 int mgmtStatusTimer ;
 int mgmtTmr ;
 int taosTmrReset (int ,int,int *,int ,int *) ;

void mgmtStartMgmtTimer() { taosTmrReset(mgmtProcessDnodeStatus, 500, ((void*)0), mgmtTmr, &mgmtStatusTimer); }
