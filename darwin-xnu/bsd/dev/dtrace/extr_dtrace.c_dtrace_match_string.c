
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int
dtrace_match_string(const char *s, const char *p, int depth)
{
#pragma unused(depth)
 return (s != ((void*)0) && s == p);
}
