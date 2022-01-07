
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int string_resize (char**,int ) ;

__attribute__((used)) static void string_init(char** out)
{
  *out = ((void*)0);
  string_resize(out, 0);
}
