
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_3__ {scalar_t__ sig_head; scalar_t__ sig_tail; int name; } ;
typedef TYPE_1__ case_t ;


 scalar_t__ __start_case_data ;
 scalar_t__ __start_case_data_assessment ;
 scalar_t__ __stop_case_data ;
 scalar_t__ __stop_case_data_assessment ;
 int __test_case_setup () ;
 int __test_case_teardown () ;
 int case_conclude (int,int,int) ;
 int case_run (TYPE_1__*,char const*,int ,int,int*,int*,int*) ;
 int chdir (char*) ;
 char* getcwd (char*,int) ;
 scalar_t__ strstr (int ,char const*) ;

int main(int argc, char** argv)
{
 int case_size = (intptr_t)__stop_case_data_assessment - (intptr_t)__start_case_data_assessment;
 int test_size = (intptr_t)__stop_case_data - (intptr_t)__start_case_data;
 char buf[1024];
 char* cur_dir = getcwd(buf, 1024);
 static uint64_t the_sig = 0x883253372849284B;
 int scan_mode = (test_size % case_size != 0);
 const char* match_test = (argc == 2) ? argv[1] : 0;
 int i, total = 0;
 if (!scan_mode)
  total = test_size / case_size;
 for (i = 0; i < total; i++)
 {
  case_t* test_case = (case_t*)((unsigned char*)__start_case_data + i * case_size);

  if (test_case->sig_head != the_sig || test_case->sig_tail != the_sig + 2)
  {
   scan_mode = 1;
   break;
  }
 }
 int len, pass = 0, skip = 0, fail = 0;

 if (scan_mode)
 {
  total = 0;
  len = (intptr_t)__stop_case_data - (intptr_t)__start_case_data - sizeof(case_t) + 1;
  for (i = 0; i < len; i++)
  {
   case_t* test_case = (case_t*)((unsigned char*)__start_case_data + i);
   if (test_case->sig_head == the_sig && test_case->sig_tail == the_sig + 2 &&
    (!match_test || strstr(test_case->name, match_test)))
    total++;
  }
 }
 if (__test_case_setup)
  __test_case_setup();
 if (scan_mode)
 {
  int j = 0;
  for (i = 0; i < len; i++)
  {
   case_t* test_case = (case_t*)((unsigned char*)__start_case_data + i);
   if (test_case->sig_head == the_sig && test_case->sig_tail == the_sig + 2 &&
    (!match_test || strstr(test_case->name, match_test)))
   {
    case_run(test_case, match_test, j++, total, &pass, &skip, &fail);
    chdir(cur_dir);
   }
  }
 } else {
  int matched_total = match_test ? 0 : total;
  if (match_test)
   for (i = 0; i < total; i++)
   {
    case_t* test_case = (case_t*)((unsigned char*)__start_case_data + i * case_size);
    if (strstr(test_case->name, match_test))
     matched_total++;
   }
  int j = 0;

  for (i = 0; i < total; i++)
  {
   case_t* test_case = (case_t*)((unsigned char*)__start_case_data + i * case_size);
   if (!match_test || strstr(test_case->name, match_test))
    case_run(test_case, match_test, j++, matched_total, &pass, &skip, &fail);
   chdir(cur_dir);
  }
 }
 if (__test_case_teardown)
  __test_case_teardown();
 case_conclude(pass, skip, fail);
 return fail;
}
