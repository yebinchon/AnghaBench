
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;







char *Errcode_to_String(uint16_t status)
{
    char *Errstr = ((void*)0);
    switch (status) {
        case 128:
            Errstr = "Unknown_command";
            break;
        case 130:
            Errstr = "Invalid_command";
            break;
        case 129:
            Errstr = "Invalid_parameter";
            break;
        case 131:
            Errstr = "Action_failed";
            break;
        default:
            Errstr = "unknown_failed";
            break;
    }
    return Errstr;

}
