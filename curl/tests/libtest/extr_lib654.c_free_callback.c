
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct WriteThis {int freecount; } ;



__attribute__((used)) static void free_callback(void *userp)
{
  struct WriteThis *pooh = (struct WriteThis *) userp;

  pooh->freecount++;
}
