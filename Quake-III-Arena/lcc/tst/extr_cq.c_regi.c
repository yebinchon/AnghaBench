
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
regi() {
            int r00;
            int r01;
            int r02;
            int r03;
   register int r04;
            int r05;
   register int r06;
            int r07;
   register int r08;
            int r09;
   register int r10;
            int r11;
   register int r12;
            int r13;
   register int r14;
            int r15;
   register int r16;
            int r17;
   register int r18;
            int r19;
   register int r20;
            int r21;
   register int r22;
            int r23;
   register int r24;
            int r25;
   register int r26;
            int r27;
   register int r28;
            int r29;
   register int r30;
            int r31;
   register int r32;
            int r33;
   register int r34;
            int r35;
            int r36;
            int r37;
            int r38;

   int s, n1, n2, nr, j, d[22];

   r00 = 0;
   r01 = 1;
   r02 = 2;
   r03 = 3;
   r04 = 4;
   r05 = 5;
   r06 = 6;
   r07 = 7;
   r08 = 8;
   r09 = 9;
   r10 = 10;
   r11 = 11;
   r12 = 12;
   r13 = 13;
   r14 = 14;
   r15 = 15;
   r16 = 16;
   r17 = 17;
   r18 = 18;
   r19 = 19;
   r20 = 20;
   r21 = 21;
   r22 = 22;
   r23 = 23;
   r24 = 24;
   r25 = 25;
   r26 = 26;
   r27 = 27;
   r28 = 28;
   r29 = 29;
   r30 = 30;
   r31 = 31;
   r32 = 32;
   r33 = 33;
   r34 = 34;
   r35 = 35;
   r36 = 36;
   r37 = 37;
   r38 = 38;

   d[0] = &r01 - &r00;
   d[1] = &r02 - &r01;
   d[2] = &r03 - &r02;
   d[3] = &r05 - &r03;
   d[4] = &r07 - &r05;
   d[5] = &r09 - &r07;
   d[6] = &r11 - &r09;
   d[7] = &r13 - &r11;
   d[8] = &r15 - &r13;
   d[9] = &r17 - &r15;
   d[10] = &r19 - &r17;
   d[11] = &r21 - &r19;
   d[12] = &r23 - &r21;
   d[13] = &r25 - &r23;
   d[14] = &r27 - &r25;
   d[15] = &r29 - &r27;
   d[16] = &r31 - &r29;
   d[17] = &r33 - &r31;
   d[18] = &r35 - &r33;
   d[19] = &r36 - &r35;
   d[20] = &r37 - &r36;
   d[21] = &r38 - &r37;
   n1 = d[0];
   s = 1;

   for (j=0; j<22; j++)
     switch (s) {
       case 1: if (d[j] != n1) {
                n2 = d[j];
                s = 2;
                nr = 1;
               }
               break;
       case 2: if (d[j] == n1) {
                s = 3;
                break;
               }
               if (d[j] == n2) {
                nr = nr+1;
                break;
               }
               s = 4;
               break;
       case 3: if (d[j] != n1) s = 4;
               break;
     }
   ;

   if (s == 3) return 16-nr;
   else return -1;
}
