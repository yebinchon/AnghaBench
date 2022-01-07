
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pSrc; int pDst; } ;
typedef TYPE_1__ SCopySection ;


 scalar_t__ ConfigListParameters (int ,void*,int ) ;
 scalar_t__ ConfigOpenSection (char const*,int *) ;
 scalar_t__ ConfigSetParameter (int ,char*,int ,char const*) ;
 int CopyParamCallback ;
 int DebugMessage (int ,char*,...) ;
 scalar_t__ M64ERR_SUCCESS ;
 int M64MSG_ERROR ;
 int M64TYPE_STRING ;

int auto_copy_inputconfig(const char *pccSourceSectionName, const char *pccDestSectionName, const char *sdlJoyName)
{
    SCopySection cpyContext;

    if (ConfigOpenSection(pccSourceSectionName, &cpyContext.pSrc) != M64ERR_SUCCESS)
    {
        DebugMessage(M64MSG_ERROR, "auto_copy_inputconfig: Couldn't open source config section '%s' for copying", pccSourceSectionName);
        return 0;
    }

    if (ConfigOpenSection(pccDestSectionName, &cpyContext.pDst) != M64ERR_SUCCESS)
    {
        DebugMessage(M64MSG_ERROR, "auto_copy_inputconfig: Couldn't open destination config section '%s' for copying", pccDestSectionName);
        return 0;
    }


    if (sdlJoyName != ((void*)0))
    {
        if (ConfigSetParameter(cpyContext.pDst, "name", M64TYPE_STRING, sdlJoyName) != M64ERR_SUCCESS)
        {
            DebugMessage(M64MSG_ERROR, "auto_copy_inputconfig: Couldn't set 'name' parameter to '%s' in section '%s'", sdlJoyName, pccDestSectionName);
            return 0;
        }
    }


    if (ConfigListParameters(cpyContext.pSrc, (void *) &cpyContext, CopyParamCallback) != M64ERR_SUCCESS)
    {
        DebugMessage(M64MSG_ERROR, "auto_copy_inputconfig: parameter list copy failed");
        return 0;
    }

    return 1;
}
