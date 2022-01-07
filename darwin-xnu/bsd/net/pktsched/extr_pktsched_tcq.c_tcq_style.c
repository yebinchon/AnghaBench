
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcq_if {int dummy; } ;



__attribute__((used)) static const char *
tcq_style(struct tcq_if *tif)
{
#pragma unused(tif)
 return ("TCQ");
}
