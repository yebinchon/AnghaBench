
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {size_t kn_filtid; } ;
struct filterops {int dummy; } ;


 struct filterops const** sysfilt_ops ;

const struct filterops *
knote_fops(struct knote *kn)
{
 return sysfilt_ops[kn->kn_filtid];
}
