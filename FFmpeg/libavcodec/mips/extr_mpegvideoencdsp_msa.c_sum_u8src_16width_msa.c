
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int v16u8 ;
typedef int uint8_t ;
typedef int uint32_t ;
typedef int int32_t ;


 int HADD_UB4_UB (int ,int ,int ,int ,int ,int ,int ,int ) ;
 int HADD_UH_U32 (int ) ;
 int LD_UB8 (int *,int,int ,int ,int ,int ,int ,int ,int ,int ) ;

__attribute__((used)) static int32_t sum_u8src_16width_msa(uint8_t *src, int32_t stride)
{
    uint32_t sum = 0;
    v16u8 in0, in1, in2, in3, in4, in5, in6, in7;
    v16u8 in8, in9, in10, in11, in12, in13, in14, in15;

    LD_UB8(src, stride, in0, in1, in2, in3, in4, in5, in6, in7);
    src += (8 * stride);
    LD_UB8(src, stride, in8, in9, in10, in11, in12, in13, in14, in15);

    HADD_UB4_UB(in0, in1, in2, in3, in0, in1, in2, in3);
    HADD_UB4_UB(in4, in5, in6, in7, in4, in5, in6, in7);
    HADD_UB4_UB(in8, in9, in10, in11, in8, in9, in10, in11);
    HADD_UB4_UB(in12, in13, in14, in15, in12, in13, in14, in15);

    sum = HADD_UH_U32(in0);
    sum += HADD_UH_U32(in1);
    sum += HADD_UH_U32(in2);
    sum += HADD_UH_U32(in3);
    sum += HADD_UH_U32(in4);
    sum += HADD_UH_U32(in5);
    sum += HADD_UH_U32(in6);
    sum += HADD_UH_U32(in7);
    sum += HADD_UH_U32(in8);
    sum += HADD_UH_U32(in9);
    sum += HADD_UH_U32(in10);
    sum += HADD_UH_U32(in11);
    sum += HADD_UH_U32(in12);
    sum += HADD_UH_U32(in13);
    sum += HADD_UH_U32(in14);
    sum += HADD_UH_U32(in15);

    return sum;
}
