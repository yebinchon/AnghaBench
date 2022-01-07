
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char item_tag () ;

__attribute__((used)) static int item_is_tag(char tag)
{
 return item_tag() == tag;
}
