
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int C68K ;
 int C68k_Load_State (int *,int *) ;

__attribute__((used)) static void M68KC68KLoadState(FILE *fp) {
   C68k_Load_State(&C68K, fp);
}
