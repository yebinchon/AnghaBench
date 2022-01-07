
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
const char *
rtm2str(int cmd)
{
 const char *c = "RTM_?";

 switch (cmd) {
 case 148:
  c = "RTM_ADD";
  break;
 case 145:
  c = "RTM_DELETE";
  break;
 case 147:
  c = "RTM_CHANGE";
  break;
 case 143:
  c = "RTM_GET";
  break;
 case 136:
  c = "RTM_LOSING";
  break;
 case 129:
  c = "RTM_REDIRECT";
  break;
 case 135:
  c = "RTM_MISS";
  break;
 case 137:
  c = "RTM_LOCK";
  break;
 case 131:
  c = "RTM_OLDADD";
  break;
 case 130:
  c = "RTM_OLDDEL";
  break;
 case 128:
  c = "RTM_RESOLVE";
  break;
 case 134:
  c = "RTM_NEWADDR";
  break;
 case 146:
  c = "RTM_DELADDR";
  break;
 case 139:
  c = "RTM_IFINFO";
  break;
 case 133:
  c = "RTM_NEWMADDR";
  break;
 case 144:
  c = "RTM_DELMADDR";
  break;
 case 140:
  c = "RTM_GET_SILENT";
  break;
 case 138:
  c = "RTM_IFINFO2";
  break;
 case 132:
  c = "RTM_NEWMADDR2";
  break;
 case 142:
  c = "RTM_GET2";
  break;
 case 141:
  c = "RTM_GET_EXT";
  break;
 }

 return (c);
}
