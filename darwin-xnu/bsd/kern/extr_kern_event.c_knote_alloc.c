
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {int dummy; } ;


 int bzero (struct knote*,int) ;
 int knote_zone ;
 scalar_t__ zalloc (int ) ;

__attribute__((used)) static struct knote *
knote_alloc(void)
{
 struct knote *kn = ((struct knote *)zalloc(knote_zone));
 bzero(kn, sizeof(struct knote));
 return kn;
}
