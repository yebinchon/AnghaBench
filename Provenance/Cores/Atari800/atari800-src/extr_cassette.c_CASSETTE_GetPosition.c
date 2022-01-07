
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IMG_TAPE_GetPosition (int *) ;
 int * cassette_file ;

unsigned int CASSETTE_GetPosition(void)
{
 if (cassette_file == ((void*)0))
  return 0;
 return IMG_TAPE_GetPosition(cassette_file) + 1;
}
