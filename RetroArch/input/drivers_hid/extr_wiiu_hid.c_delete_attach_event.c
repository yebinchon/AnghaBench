
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wiiu_attach_event ;


 int free (int *) ;

__attribute__((used)) static void delete_attach_event(wiiu_attach_event *event)
{
   if (event)
      free(event);
}
