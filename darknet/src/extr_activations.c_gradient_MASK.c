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
typedef  int ACTIVATION ;

/* Variables and functions */
#define  ELU 141 
#define  HARDTAN 140 
#define  LEAKY 139 
#define  LHTAN 138 
#define  LINEAR 137 
#define  LOGGY 136 
#define  LOGISTIC 135 
#define  PLSE 134 
#define  RAMP 133 
#define  RELIE 132 
#define  RELU 131 
#define  SELU 130 
#define  STAIR 129 
#define  TANH 128 
 float FUNC0 (float) ; 
 float FUNC1 (float) ; 
 float FUNC2 (float) ; 
 float FUNC3 (float) ; 
 float FUNC4 (float) ; 
 float FUNC5 (float) ; 
 float FUNC6 (float) ; 
 float FUNC7 (float) ; 
 float FUNC8 (float) ; 
 float FUNC9 (float) ; 
 float FUNC10 (float) ; 
 float FUNC11 (float) ; 
 float FUNC12 (float) ; 
 float FUNC13 (float) ; 

float FUNC14(float x, ACTIVATION a)
{
    switch(a){
        case LINEAR:
            return FUNC4(x);
        case LOGISTIC:
            return FUNC6(x);
        case LOGGY:
            return FUNC5(x);
        case RELU:
            return FUNC10(x);
        case ELU:
            return FUNC0(x);
        case SELU:
            return FUNC11(x);
        case RELIE:
            return FUNC9(x);
        case RAMP:
            return FUNC8(x);
        case LEAKY:
            return FUNC2(x);
        case TANH:
            return FUNC13(x);
        case PLSE:
            return FUNC7(x);
        case STAIR:
            return FUNC12(x);
        case HARDTAN:
            return FUNC1(x);
        case LHTAN:
            return FUNC3(x);
    }
    return 0;
}