
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HEVCContext ;


 size_t CU_CHROMA_QP_OFFSET_FLAG ;
 int GET_CABAC (int ) ;
 int * elem_offset ;

int ff_hevc_cu_chroma_qp_offset_flag(HEVCContext *s)
{
    return GET_CABAC(elem_offset[CU_CHROMA_QP_OFFSET_FLAG]);
}
