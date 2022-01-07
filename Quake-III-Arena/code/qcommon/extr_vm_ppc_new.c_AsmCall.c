
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
void AsmCall( void ) {
asm (

"    lwz		r12,0(r4)	\n"
"    addi	r4,r4,-4		\n"


"    cmpwi	r12,0			\n"
"    bc		12,0, systemTrap	\n"


"    slwi	r12,r12,2		\n"

"    lwzx	r12, r8, r12		\n"
"    mtctr	r12			\n"
);






    asm (
"	lwz		r1,0(r1)	\n"
"	lmw		r30,-8(r1)	\n"
);


asm (
"	    bcctr	20,0		\n"


"systemTrap:				\n"

"	subfic	r12,r12,-1		\n"


"    mflr	r13			\n"
"	addi	r1,r1,-92		\n"
"    stw		r3,56(r1)	\n"
"    stw		r4,60(r1)	\n"
"    stw		r5,64(r1)	\n"
"    stw		r6,68(r1)	\n"
"    stw		r7,72(r1)	\n"
"    stw		r8,76(r1)	\n"
"    stw		r9,80(r1)	\n"
"    stw		r10,84(r1)	\n"
"    stw		r13,88(r1)	\n"


"    addi	r13,r3,-4		\n"
"    stw		r13,0(r10)	\n"


"    add		r3,r3,r5	\n"
"    stwu	r12,4(r3)		\n"



"    lwz		r12,4(r10)	\n"
"    mtctr	r12			\n"
"    bcctrl	20,0			\n"
"    mr		r12,r3			\n"


"   	lwz		r3,56(r1)	\n"
"   	lwz		r4,60(r1)	\n"
"   	lwz		r5,64(r1)	\n"
"   	lwz		r6,68(r1)	\n"
"   	lwz		r7,72(r1)	\n"
"   	lwz		r8,76(r1)	\n"
"   	lwz		r9,80(r1)	\n"
"   	lwz		r10,84(r1)	\n"
"   	lwz		r13,88(r1)	\n"
"    addi	r1,r1,92		\n"


"    mtlr	r13			\n"


"    stwu	r12,4(r4)		\n"


 );
}
