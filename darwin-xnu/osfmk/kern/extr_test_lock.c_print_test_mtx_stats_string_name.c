
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int snprintf (char*,int,char*,char*) ;

__attribute__((used)) static int
print_test_mtx_stats_string_name(
 int type_num,
 char* buffer,
 int size)
{
 char* type = "";
 switch (type_num) {
 case 133:
  type = "TEST_MTX_LOCK_STATS";
  break;
 case 130:
  type = "TEST_MTX_TRY_LOCK_STATS";
  break;
 case 134:
  type = "TEST_MTX_LOCK_SPIN_STATS";
  break;
 case 135:
  type = "TEST_MTX_LOCK_SPIN_ALWAYS_STATS";
  break;
 case 131:
  type = "TEST_MTX_TRY_LOCK_SPIN_STATS";
  break;
 case 132:
  type = "TEST_MTX_TRY_LOCK_SPIN_ALWAYS_STATS";
  break;
 case 129:
  type = "TEST_MTX_UNLOCK_MTX_STATS";
  break;
 case 128:
  type = "TEST_MTX_UNLOCK_SPIN_STATS";
  break;
 default:
  break;
 }

 return snprintf(buffer, size, "%s ", type);
}
