
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filename; } ;
typedef TYPE_1__ entries ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int comp_entries_by_filename(const void *elem1, const void *elem2)
{
   return strcmp(((entries*)elem1)->filename, ((entries*)elem2)->filename);
}
