
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int me_cmp_func ;
typedef int MpegEncContext ;


 int const FLAG_CHROMA ;
 int const FLAG_DIRECT ;
 int cmp_direct_inline (int *,int const,int const,int const,int const,int const,int const,int,int,int ,int ,int ) ;
 int cmp_inline (int *,int const,int const,int const,int const,int const,int const,int,int,int ,int ,int ,int const) ;

__attribute__((used)) static int cmp_hpel(MpegEncContext *s, const int x, const int y, const int subx, const int suby,
                      const int size, const int h, int ref_index, int src_index,
                      me_cmp_func cmp_func, me_cmp_func chroma_cmp_func, const int flags){
    if(flags&FLAG_DIRECT){
        return cmp_direct_inline(s,x,y,subx,suby,size,h,ref_index,src_index, cmp_func, chroma_cmp_func, 0);
    }else{
        return cmp_inline(s,x,y,subx,suby,size,h,ref_index,src_index, cmp_func, chroma_cmp_func, 0, flags&FLAG_CHROMA);
    }
}
