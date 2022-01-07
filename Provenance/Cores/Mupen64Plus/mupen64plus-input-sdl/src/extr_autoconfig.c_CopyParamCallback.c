
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int m64p_type ;
struct TYPE_2__ {int pDst; int pSrc; } ;
typedef TYPE_1__ SCopySection ;


 int ConfigGetParameter (int ,char const*,int,...) ;
 int ConfigSetParameter (int ,char const*,int,...) ;
 int DebugMessage (int ,char*,int) ;
 int M64ERR_SUCCESS ;
 int M64MSG_ERROR ;





__attribute__((used)) static void CopyParamCallback(void * context, const char *ParamName, m64p_type ParamType)
{
    SCopySection *pCpyContext = (SCopySection *) context;
    int paramInt;
    float paramFloat;
    char paramString[1024];


    switch (ParamType)
    {
        case 129:
        case 131:
            if (ConfigGetParameter(pCpyContext->pSrc, ParamName, ParamType, &paramInt, sizeof(int)) == M64ERR_SUCCESS)
                ConfigSetParameter(pCpyContext->pDst, ParamName, ParamType, &paramInt);
            break;
        case 130:
            if (ConfigGetParameter(pCpyContext->pSrc, ParamName, ParamType, &paramFloat, sizeof(float)) == M64ERR_SUCCESS)
                ConfigSetParameter(pCpyContext->pDst, ParamName, ParamType, &paramFloat);
            break;
        case 128:
            if (ConfigGetParameter(pCpyContext->pSrc, ParamName, ParamType, paramString, 1024) == M64ERR_SUCCESS)
                ConfigSetParameter(pCpyContext->pDst, ParamName, ParamType, paramString);
            break;
        default:

            DebugMessage(M64MSG_ERROR, "Unknown source parameter type %i in copy callback", (int) ParamType);
            return;
    }
}
