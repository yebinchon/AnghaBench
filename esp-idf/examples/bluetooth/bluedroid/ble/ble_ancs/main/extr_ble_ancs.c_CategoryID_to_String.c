
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
char *CategoryID_to_String(uint8_t CategoryID)
{
    char *Cidstr = ((void*)0);
    switch(CategoryID) {
        case 131:
            Cidstr = "Other";
            break;
        case 135:
            Cidstr = "IncomingCall";
            break;
        case 133:
            Cidstr = "MissedCall";
            break;
        case 128:
            Cidstr = "Voicemail";
            break;
        case 129:
            Cidstr = "Social";
            break;
        case 130:
            Cidstr = "Schedule";
            break;
        case 138:
            Cidstr = "Email";
            break;
        case 132:
            Cidstr = "News";
            break;
        case 136:
            Cidstr = "HealthAndFitness";
            break;
        case 139:
            Cidstr = "BusinessAndFinance";
            break;
        case 134:
            Cidstr = "Location";
            break;
        case 137:
            Cidstr = "Entertainment";
            break;
        default:
            Cidstr = "Unknown CategoryID";
            break;
    }
    return Cidstr;
}
