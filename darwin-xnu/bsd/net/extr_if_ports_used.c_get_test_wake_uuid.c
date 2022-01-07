
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * uuid_t ;


 scalar_t__ __improbable (int ) ;
 int test_wakeuuid ;
 int use_test_wakeuuid ;
 int uuid_copy (int *,int ) ;
 int uuid_is_null (int ) ;

__attribute__((used)) static bool
get_test_wake_uuid(uuid_t wakeuuid)
{
 if (__improbable(use_test_wakeuuid)) {
  if (!uuid_is_null(test_wakeuuid)) {
   if (wakeuuid != ((void*)0)) {
    uuid_copy(wakeuuid, test_wakeuuid);
   }
   return (1);
  } else {
   return (0);
  }
 } else {
  return (0);
 }
}
