
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CONTENTS_SOLID ;

int IntersectionContents (int c1, int c2)
{
 int out;

 out = c1 | c2;

 if (out & CONTENTS_SOLID) out = CONTENTS_SOLID;

 return out;
}
