
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef TYPE_2__* thread_t ;
struct TYPE_5__ {TYPE_1__* affinity_set; } ;
struct TYPE_4__ {int aset_tag; } ;


 int THREAD_AFFINITY_TAG_NULL ;

uint32_t
thread_affinity_get(thread_t thread)
{
 uint32_t tag;

 if (thread->affinity_set != ((void*)0))
  tag = thread->affinity_set->aset_tag;
 else
  tag = THREAD_AFFINITY_TAG_NULL;

 return tag;
}
