
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cqev_t ;
const char *
ifclassq_ev2str(cqev_t ev)
{
 const char *c;

 switch (ev) {
 case 132:
  c = "LINK_BANDWIDTH";
  break;

 case 130:
  c = "LINK_LATENCY";
  break;

 case 129:
  c = "LINK_MTU";
  break;

 case 128:
  c = "LINK_UP";
  break;

 case 131:
  c = "LINK_DOWN";
  break;

 default:
  c = "UNKNOWN";
  break;
 }

 return (c);
}
