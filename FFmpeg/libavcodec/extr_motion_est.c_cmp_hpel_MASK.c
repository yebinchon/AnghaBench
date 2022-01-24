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
typedef  int /*<<< orphan*/  me_cmp_func ;
typedef  int /*<<< orphan*/  MpegEncContext ;

/* Variables and functions */
 int const FLAG_CHROMA ; 
 int const FLAG_DIRECT ; 
 int FUNC0 (int /*<<< orphan*/ *,int const,int const,int const,int const,int const,int const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ *,int const,int const,int const,int const,int const,int const,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const) ; 

__attribute__((used)) static int FUNC2(MpegEncContext *s, const int x, const int y, const int subx, const int suby,
                      const int size, const int h, int ref_index, int src_index,
                      me_cmp_func cmp_func, me_cmp_func chroma_cmp_func, const int flags){
    if(flags&FLAG_DIRECT){
        return FUNC0(s,x,y,subx,suby,size,h,ref_index,src_index, cmp_func, chroma_cmp_func, 0);
    }else{
        return FUNC1(s,x,y,subx,suby,size,h,ref_index,src_index, cmp_func, chroma_cmp_func, 0, flags&FLAG_CHROMA);
    }
}