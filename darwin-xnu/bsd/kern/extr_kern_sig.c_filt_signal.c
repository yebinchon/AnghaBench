
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct knote {unsigned int kn_id; scalar_t__ kn_data; } ;


 long NOTE_EXIT ;
 long NOTE_SIGNAL ;
 int panic (char*) ;

__attribute__((used)) static int
filt_signal(struct knote *kn, long hint)
{

 if (hint & NOTE_SIGNAL) {
  hint &= ~NOTE_SIGNAL;

  if (kn->kn_id == (unsigned int)hint)
   kn->kn_data++;
 } else if (hint & NOTE_EXIT) {
  panic("filt_signal: detected NOTE_EXIT event");
 }

 return (kn->kn_data != 0);
}
