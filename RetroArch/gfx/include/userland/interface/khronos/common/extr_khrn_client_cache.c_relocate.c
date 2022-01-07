
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef void uint8_t ;



__attribute__((used)) static void *relocate(void *data, void *user)
{
   return (uint8_t *)data - ((uint8_t **)user)[0] + ((uint8_t **)user)[1];
}
