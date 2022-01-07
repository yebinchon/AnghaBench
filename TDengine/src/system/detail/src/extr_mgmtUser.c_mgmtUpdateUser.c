
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SUserObj ;


 int sdbUpdateRow (int ,int *,int ,int) ;
 int userSdb ;

int mgmtUpdateUser(SUserObj *pUser) { return sdbUpdateRow(userSdb, pUser, 0, 1); }
