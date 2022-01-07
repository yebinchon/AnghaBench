
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int IMG_TAPE_GetSize (int *) ;
 int * cassette_file ;

unsigned int CASSETTE_GetSize(void)
{
 if (cassette_file == ((void*)0))
  return 0;
 return IMG_TAPE_GetSize(cassette_file);
}
