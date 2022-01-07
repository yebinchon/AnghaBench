
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ MP4_MODE_ENTRY_T ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int mp4_mode_comparator(const MP4_MODE_ENTRY_T *a, const MP4_MODE_ENTRY_T *b)
{
   return strcasecmp(a->name, b->name);
}
