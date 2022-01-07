
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wait_result_t ;


 int EINTR ;
 int ETIMEDOUT ;





__attribute__((used)) inline static int
wait_result_to_return_code(wait_result_t wr)
{
 int ret = 0;

 switch (wr) {
 case 131:
  break;
 case 128:
  ret = ETIMEDOUT;
  break;
 case 130:
 case 129:
 default:
  ret = EINTR;
  break;
 }

 return ret;
}
