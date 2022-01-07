
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,int) ;

__attribute__((used)) static const char* get_button_name(int button)
{
    switch (button)
    {
        case 130:
            return "left";
        case 128:
            return "right";
        case 129:
            return "middle";
        default:
        {
            static char name[16];
            sprintf(name, "%i", button);
            return name;
        }
    }
}
