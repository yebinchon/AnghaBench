
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfr_table {char* pfrt_anchor; char* pfrt_name; } ;



void
pfr_table_copyin_cleanup(struct pfr_table *tbl)
{
 tbl->pfrt_anchor[sizeof (tbl->pfrt_anchor) - 1] = '\0';
 tbl->pfrt_name[sizeof (tbl->pfrt_name) - 1] = '\0';
}
