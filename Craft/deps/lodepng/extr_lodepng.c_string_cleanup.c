
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int lodepng_free (char*) ;

__attribute__((used)) static void string_cleanup(char** out)
{
  lodepng_free(*out);
  *out = ((void*)0);
}
