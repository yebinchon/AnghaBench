
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ activeAlterTables ;

bool
AlterTableInProgress(void)
{
 return activeAlterTables > 0;
}
