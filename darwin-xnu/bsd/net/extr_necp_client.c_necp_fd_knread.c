
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;



__attribute__((used)) static int
necp_fd_knread(struct knote *kn, long hint)
{
#pragma unused(kn, hint)
 return 1;
}
