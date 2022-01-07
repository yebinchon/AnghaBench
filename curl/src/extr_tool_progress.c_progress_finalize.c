
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct per_transfer {scalar_t__ ulnow; scalar_t__ dlnow; } ;


 int all_dlalready ;
 int all_ulalready ;

void progress_finalize(struct per_transfer *per)
{

  all_dlalready += per->dlnow;
  all_ulalready += per->ulnow;
}
