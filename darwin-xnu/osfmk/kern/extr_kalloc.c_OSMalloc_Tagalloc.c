
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint32_t ;
typedef int queue_entry_t ;
struct TYPE_3__ {int OSMT_refcnt; int OSMT_state; int OSMT_name; int OSMT_attr; } ;
typedef TYPE_1__* OSMallocTag ;


 int OSMT_ATTR_PAGEABLE ;
 int OSMT_MAX_NAME ;
 int OSMT_PAGEABLE ;
 int OSMT_VALID ;
 int OSMalloc_tag_list ;
 int OSMalloc_tag_spin_lock () ;
 int OSMalloc_tag_unlock () ;
 int bzero (void*,int) ;
 int enqueue_tail (int *,int ) ;
 scalar_t__ kalloc (int) ;
 int strlcpy (int ,char const*,int ) ;

OSMallocTag
OSMalloc_Tagalloc(
 const char *str,
 uint32_t flags)
{
 OSMallocTag OSMTag;

 OSMTag = (OSMallocTag)kalloc(sizeof(*OSMTag));

 bzero((void *)OSMTag, sizeof(*OSMTag));

 if (flags & OSMT_PAGEABLE)
  OSMTag->OSMT_attr = OSMT_ATTR_PAGEABLE;

 OSMTag->OSMT_refcnt = 1;

 strlcpy(OSMTag->OSMT_name, str, OSMT_MAX_NAME);

 OSMalloc_tag_spin_lock();
 enqueue_tail(&OSMalloc_tag_list, (queue_entry_t)OSMTag);
 OSMalloc_tag_unlock();
 OSMTag->OSMT_state = OSMT_VALID;
 return(OSMTag);
}
