
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int memorystatus_knote_unregister (struct knote*) ;

__attribute__((used)) static void
filt_memorystatusdetach(struct knote *kn)
{
 memorystatus_knote_unregister(kn);
}
