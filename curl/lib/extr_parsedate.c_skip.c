
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ISALNUM (char const) ;

__attribute__((used)) static void skip(const char **date)
{

  while(**date && !ISALNUM(**date))
    (*date)++;
}
