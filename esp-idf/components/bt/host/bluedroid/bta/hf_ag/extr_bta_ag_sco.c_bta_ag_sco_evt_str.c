
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;
__attribute__((used)) static char *bta_ag_sco_evt_str(UINT8 event)
{
    switch (event)
    {
    case 132:
        return "Listen Request";
    case 131:
        return "Open Request";
    case 128:
        return "Transfer Request";

    case 135:
        return "Codec Negotiation Done";
    case 130:
        return "Reopen Request";

    case 136:
        return "Close Request";
    case 129:
        return "Shutdown Request";
    case 133:
        return "Opened";
    case 134:
        return "Closed";
    case 137 :
        return "Sco Data";
    default:
        return "Unknown SCO Event";
    }
}
