
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msglist (char**) ;

History()

{



  static char *hist[] = {
 "The program attempts to discriminate among",
 "   FLAWs, like lack of a sticky bit,",
 "   Serious DEFECTs, like lack of a guard digit, and",
 "   FAILUREs, like 2+2 == 5 .",
 "Failures may confound subsequent diagnoses.\n",
 "The diagnostic capabilities of this program go beyond an earlier",
 "program called `MACHAR', which can be found at the end of the",
 "book  `Software Manual for the Elementary Functions' (1980) by",
 "W. J. Cody and W. Waite. Although both programs try to discover",
 "the Radix, Precision and range (over/underflow thresholds)",
 "of the arithmetic, this program tries to cope with a wider variety",
 "of pathologies, and to say how well the arithmetic is implemented.",
 "\nThe program is based upon a conventional radix representation for",
 "floating-point numbers, but also allows logarithmic encoding",
 "as used by certain early WANG machines.\n",
 "BASIC version of this program (C) 1983 by Prof. W. M. Kahan;",
 "see source comments for more history.",
 0};

 msglist(hist);
 }
