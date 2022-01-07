
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int FALSE ;
 int MAX ;
 int START ;
 scalar_t__ STEP ;
 int TRUE ;
 int fflush (int ) ;
 int printf (char*,...) ;
 int stdout ;
 int testt (int ,int,int,int) ;

int main(int argc, char **argv) {
 int kb;
 uint64_t time1, time2, time3, time4;

 int mode;

 printf("; m0 r s; m0 r b; m0 w s; m0 w b; m1 r s; m1 r b; m1 w s; m1 w b; m2 r s; m2 r b; m2 w s; m2 w b\n");
 for (kb=START; kb<MAX; kb+=STEP) {
  printf("%d", kb);
  for (mode=0; mode<=2; mode++) {
   time1=time2=time3=time4=-1;
   time1 = testt(TRUE, mode, 0, kb);
   time2 = testt(FALSE, mode, 0, kb);
   time3 = testt(TRUE, mode, 1, kb);
   time4 = testt(FALSE, mode, 1, kb);
   printf("; %lld; %lld; %lld; %lld", time1, time2, time3, time4);
   fflush(stdout);
  }
  printf("\n");
 }

 return 0;
}
