
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get_protocol_family(unsigned int protocol)
{
  unsigned int family;

  switch(protocol) {
  case 150:
  case 149:
    family = 150;
    break;

  case 153:
  case 152:
    family = 153;
    break;

  case 135:
    family = 135;
    break;

  case 134:
    family = 134;
    break;

  case 129:
    family = 129;
    break;

  case 146:
  case 145:
    family = 146;
    break;

  case 155:
    family = 155;
    break;

  case 154:
    family = 154;
    break;

  case 128:
    family = 128;
    break;

  case 148:
  case 147:
    family = 148;
    break;

  case 144:
  case 143:
    family = 144;
    break;

  case 131:
  case 130:
      family = 131;
      break;

  case 136:
    family = 136;
    break;

  case 142:
  case 140:
    family = 142;
    break;

  case 139:
  case 137:
    family = 139;
    break;

  case 141:
    family = 141;
    break;

  case 138:
    family = 138;
    break;

  case 151:
    family = 151;
    break;

  case 133:
  case 132:
    family = 133;
    break;

  default:
      family = 0;
      break;
  }

  return family;
}
