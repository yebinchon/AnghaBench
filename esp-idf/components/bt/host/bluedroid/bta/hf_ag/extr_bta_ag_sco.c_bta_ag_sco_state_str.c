
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
__attribute__((used)) static char *bta_ag_sco_state_str(UINT8 state)
{
    switch (state)
    {
        case 129:
            return "Shutdown";
        case 134:
            return "Listening";

        case 135:
            return "Codec Negotiation";

        case 133:
            return "Opening";
        case 132:
            return "Open while closing";
        case 130:
            return "Opening while Transferring";
        case 131:
            return "Open";
        case 136:
            return "Closing";
        case 138:
            return "Close while Opening";
        case 137:
            return "Close while Transferring";
        case 128:
            return "Shutting Down";
        default:
            return "Unknown SCO State";
    }
}
