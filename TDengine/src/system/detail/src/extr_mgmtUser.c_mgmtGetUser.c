
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SUserObj ;


 scalar_t__ sdbGetRow (int ,char*) ;
 int userSdb ;

SUserObj *mgmtGetUser(char *name) { return (SUserObj *)sdbGetRow(userSdb, name); }
