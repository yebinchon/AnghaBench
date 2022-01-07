
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *
qfq_state2str(int s)
{
 const char *c;

 switch (s) {
 case 130:
  c = "ER";
  break;
 case 128:
  c = "IR";
  break;
 case 131:
  c = "EB";
  break;
 case 129:
  c = "IB";
  break;
 default:
  c = "?";
  break;
 }
 return (c);
}
