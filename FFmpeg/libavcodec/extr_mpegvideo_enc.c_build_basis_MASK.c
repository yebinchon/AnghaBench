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
typedef  int uint8_t ;

/* Variables and functions */
 int BASIS_SHIFT ; 
 double M_PI ; 
 int /*<<< orphan*/ ** basis ; 
 double FUNC0 (double) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (double) ; 
 double FUNC3 (double) ; 

__attribute__((used)) static void FUNC4(uint8_t *perm){
    int i, j, x, y;
    FUNC1();
    for(i=0; i<8; i++){
        for(j=0; j<8; j++){
            for(y=0; y<8; y++){
                for(x=0; x<8; x++){
                    double s= 0.25*(1<<BASIS_SHIFT);
                    int index= 8*i + j;
                    int perm_index= perm[index];
                    if(i==0) s*= FUNC3(0.5);
                    if(j==0) s*= FUNC3(0.5);
                    basis[perm_index][8*x + y]= FUNC2(s * FUNC0((M_PI/8.0)*i*(x+0.5)) * FUNC0((M_PI/8.0)*j*(y+0.5)));
                }
            }
        }
    }
}