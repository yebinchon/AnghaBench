
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;






char *EventID_to_String(uint8_t EventID)
{
    char *str = ((void*)0);
    switch (EventID)
    {
        case 130:
            str = "New message";
            break;
        case 129:
            str = "Modified message";
            break;
        case 128:
            str = "Removed message";
            break;
        default:
            str = "unknown EventID";
            break;
    }
    return str;
}
