
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int file_list_t ;


 int stripes_list_clear (int *) ;

__attribute__((used)) static void stripes_list_free(file_list_t *list, size_t a, size_t b)
{
   stripes_list_clear(list);
}
