
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {scalar_t__ kn_data; } ;


 int filt_spec_common (struct knote*,int) ;
 int spec_knote_select_and_link (struct knote*) ;

__attribute__((used)) static int
filt_specpeek(struct knote *kn)
{
 int selres = 0;

 selres = spec_knote_select_and_link(kn);
 filt_spec_common(kn, selres);

 return kn->kn_data != 0;
}
