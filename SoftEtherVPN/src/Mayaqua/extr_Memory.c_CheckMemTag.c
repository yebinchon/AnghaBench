
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ Magic; } ;
typedef TYPE_1__ MEMTAG ;


 int AbortExitEx (char*) ;
 int IsTrackingEnabled () ;
 scalar_t__ MEMTAG_MAGIC ;

void CheckMemTag(MEMTAG *tag)
{
 if (IsTrackingEnabled() == 0)
 {
  return;
 }


 if (tag == ((void*)0))
 {
  AbortExitEx("CheckMemTag: tag == NULL");
  return;
 }

 if (tag->Magic != MEMTAG_MAGIC)
 {
  AbortExitEx("CheckMemTag: tag->Magic != MEMTAG_MAGIC");
  return;
 }
}
