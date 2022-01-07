
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int me_cmp_func ;
typedef int MpegEncContext ;


 int cmp_inline (int *,int const,int const,int ,int ,int ,int,int,int,int ,int ,int ,int ) ;

__attribute__((used)) static int cmp_simple(MpegEncContext *s, const int x, const int y,
                      int ref_index, int src_index,
                      me_cmp_func cmp_func, me_cmp_func chroma_cmp_func){
    return cmp_inline(s,x,y,0,0,0,16,ref_index,src_index, cmp_func, chroma_cmp_func, 0, 0);
}
