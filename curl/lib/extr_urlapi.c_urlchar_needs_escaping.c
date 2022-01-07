
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISCNTRL (int) ;
 scalar_t__ ISGRAPH (int) ;
 scalar_t__ ISSPACE (int) ;

__attribute__((used)) static bool urlchar_needs_escaping(int c)
{
    return !(ISCNTRL(c) || ISSPACE(c) || ISGRAPH(c));
}
