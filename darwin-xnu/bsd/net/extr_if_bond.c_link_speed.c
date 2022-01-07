
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFM_SUBTYPE (int) ;

__attribute__((used)) static int
link_speed(int active)
{
    switch (IFM_SUBTYPE(active)) {
    case 131:
    case 135:
    case 134:
    case 132:
    case 133:
 return (10);
    case 139:
    case 142:
    case 140:
    case 138:
    case 141:
 return (100);
    case 144:
    case 145:
    case 146:
    case 143:
 return (1000);
    case 128:
 return (0);
    default:

    case 136:
    case 137:
 return (10000);
    case 130:
 return (2500);
    case 129:
 return (5000);
    }
}
