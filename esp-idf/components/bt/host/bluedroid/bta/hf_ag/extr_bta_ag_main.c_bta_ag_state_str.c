
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT8 ;







__attribute__((used)) static char *bta_ag_state_str(UINT8 state)
{
    switch (state) {
    case 130:
        return "Initial";
    case 129:
        return "Opening";
    case 128:
        return "Open";
    case 131:
        return "Closing";
    default:
        return "Unknown AG State";
    }
}
