
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nRemaining; } ;
typedef TYPE_1__ sqlite3_backup ;



int sqlite3_backup_remaining(sqlite3_backup *p){
  return p->nRemaining;
}
