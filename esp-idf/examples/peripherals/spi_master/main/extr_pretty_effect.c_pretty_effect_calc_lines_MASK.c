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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int prev_frame ; 
 int FUNC1 (int) ; 
 int* xcomp ; 
 int* xofs ; 
 int* ycomp ; 
 int* yofs ; 

void FUNC2(uint16_t *dest, int line, int frame, int linect)
{
    if (frame!=prev_frame) {
        //We need to calculate a new set of offset coefficients. Take some random sines as offsets to make everything
        //look pretty and fluid-y.
        for (int x=0; x<320; x++) xofs[x]=FUNC1(frame*0.15+x*0.06)*4;
        for (int y=0; y<240; y++) yofs[y]=FUNC1(frame*0.1+y*0.05)*4;
        for (int x=0; x<320; x++) xcomp[x]=FUNC1(frame*0.11+x*0.12)*4;
        for (int y=0; y<240; y++) ycomp[y]=FUNC1(frame*0.07+y*0.15)*4;
        prev_frame=frame;
    }
    for (int y=line; y<line+linect; y++) {
        for (int x=0; x<320; x++) {
            *dest++=FUNC0(x+yofs[y]+xcomp[x], y+xofs[x]+ycomp[y]);
        }
    }
}