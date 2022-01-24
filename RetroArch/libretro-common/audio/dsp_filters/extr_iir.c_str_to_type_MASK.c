#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  enum IIRFilter { ____Placeholder_IIRFilter } IIRFilter ;

/* Variables and functions */
 int APF ; 
 int BBOOST ; 
 int BPCSGF ; 
 int BPZPGF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HPF ; 
 int HSH ; 
 int LPF ; 
 int LSH ; 
 int NOTCH ; 
 int PEQ ; 
 int RIAA_CD ; 
 int RIAA_phono ; 

__attribute__((used)) static enum IIRFilter FUNC1(const char *str)
{
   FUNC0(LPF);
   FUNC0(HPF);
   FUNC0(BPCSGF);
   FUNC0(BPZPGF);
   FUNC0(APF);
   FUNC0(NOTCH);
   FUNC0(RIAA_phono);
   FUNC0(PEQ);
   FUNC0(BBOOST);
   FUNC0(LSH);
   FUNC0(HSH);
   FUNC0(RIAA_CD);

   return LPF; /* Fallback. */
}