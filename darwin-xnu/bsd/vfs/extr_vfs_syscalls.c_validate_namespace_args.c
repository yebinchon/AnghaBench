
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int user64_namespace_handler_info_ext ;
typedef int user64_namespace_handler_info ;
typedef int user64_namespace_handler_data ;
typedef int user32_namespace_handler_info_ext ;
typedef int user32_namespace_handler_info ;
typedef int user32_namespace_handler_data ;


 int EINVAL ;

__attribute__((used)) static inline int validate_namespace_args (int is64bit, int size) {

 if (is64bit) {

  if (size == sizeof(user64_namespace_handler_info)) {
   goto sizeok;
  }
  if (size == sizeof(user64_namespace_handler_info_ext)) {
   goto sizeok;
  }
  if (size == sizeof(user64_namespace_handler_data)) {
   goto sizeok;
  }
  return EINVAL;
 }
 else {

  if (size == sizeof(user32_namespace_handler_info)) {
   goto sizeok;
  }
  if (size == sizeof(user32_namespace_handler_info_ext)) {
   goto sizeok;
  }
  if (size == sizeof(user32_namespace_handler_data)) {
   goto sizeok;
  }
  return EINVAL;
 }

sizeok:

 return 0;

}
