
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lenBV; int * BV; } ;
typedef TYPE_1__* CFF_Blend ;
typedef scalar_t__ CF2_UInt ;
typedef int CF2_Stack ;
typedef int CF2_Fixed ;


 int ADD_INT32 (int ,int ) ;
 int FT_MulFix (int ,int ) ;
 scalar_t__ cf2_stack_count (int ) ;
 int cf2_stack_getReal (int ,scalar_t__) ;
 int cf2_stack_pop (int ,scalar_t__) ;
 int cf2_stack_setReal (int ,scalar_t__,int ) ;

__attribute__((used)) static void
  cf2_doBlend( const CFF_Blend blend,
               CF2_Stack opStack,
               CF2_UInt numBlends )
  {
    CF2_UInt delta;
    CF2_UInt base;
    CF2_UInt i, j;
    CF2_UInt numOperands = (CF2_UInt)( numBlends * blend->lenBV );


    base = cf2_stack_count( opStack ) - numOperands;
    delta = base + numBlends;

    for ( i = 0; i < numBlends; i++ )
    {
      const CF2_Fixed* weight = &blend->BV[1];


      CF2_Fixed sum = cf2_stack_getReal( opStack, i + base );


      for ( j = 1; j < blend->lenBV; j++ )
        sum = ADD_INT32( sum,
                         FT_MulFix( *weight++,
                                    cf2_stack_getReal( opStack,
                                                       delta++ ) ) );


      cf2_stack_setReal( opStack, i + base, sum );
    }


    cf2_stack_pop( opStack, numOperands - numBlends );
  }
