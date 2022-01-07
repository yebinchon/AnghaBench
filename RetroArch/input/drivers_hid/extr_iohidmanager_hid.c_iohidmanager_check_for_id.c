
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ id; struct TYPE_3__* next; } ;
typedef TYPE_1__ apple_input_rec_t ;



__attribute__((used)) static bool iohidmanager_check_for_id(apple_input_rec_t *rec, uint32_t id)
{
   while (rec)
   {
      if (rec->id == id)
         return 1;
      rec = rec->next;
   }
   return 0;
}
