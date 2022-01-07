
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int test_status_t ;


 int not_reached () ;




__attribute__((used)) static const char *
test_status_string(test_status_t test_status)
{

 switch (test_status) {
 case 129: return "pass";
 case 128: return "skip";
 case 130: return "fail";
 default: not_reached();
 }
}
