
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PORTDATA1 ;
 int PerPadAdd (int *) ;
 int PerPortReset () ;
 int pad1 ;

int PERDCInit(void) {
    PerPortReset();
    pad1 = PerPadAdd(&PORTDATA1);
 return 0;
}
