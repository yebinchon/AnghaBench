
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SVgObj ;


 scalar_t__ sdbGetRow (int ,int*) ;
 int vgSdb ;

SVgObj *mgmtGetVgroup(int vgId) { return (SVgObj *)sdbGetRow(vgSdb, &vgId); }
