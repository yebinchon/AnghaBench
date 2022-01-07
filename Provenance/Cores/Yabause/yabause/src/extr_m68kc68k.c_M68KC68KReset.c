
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int C68K ;
 int C68k_Reset (int *) ;

__attribute__((used)) static void M68KC68KReset(void) {
 C68k_Reset(&C68K);
}
