
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Capture ;


 scalar_t__ isclosecap (int *) ;
 int isfullcap (int *) ;

__attribute__((used)) static Capture *findopen (Capture *cap) {
  int n = 0;
  for (;;) {
    cap--;
    if (isclosecap(cap)) n++;
    else if (!isfullcap(cap))
      if (n-- == 0) return cap;
  }
}
