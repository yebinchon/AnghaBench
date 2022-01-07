
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytes; } ;
typedef int * TAOS_ROW ;
typedef TYPE_1__ TAOS_FIELD ;


 int exit (int ) ;
 int fprintf (int ,char*,...) ;
 int memcpy (char*,int ,int ) ;
 int * result ;
 int stderr ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;
 TYPE_1__* taos_fetch_fields (int *) ;
 int * taos_fetch_row (int *) ;
 int taos_field_count (void*) ;
 int taos_free_result (int *) ;
 scalar_t__ taos_query (void*,char*) ;
 int * taos_use_result (void*) ;

void shellGetGrantInfo(void *con) {
}
