
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; } ;
typedef TYPE_1__ MIME_TYPE_DATA_T ;


 int strcasecmp (int ,int ) ;

__attribute__((used)) static int mime_type_data_comparator(const MIME_TYPE_DATA_T *a, const MIME_TYPE_DATA_T *b)
{
   return strcasecmp(a->name, b->name);
}
