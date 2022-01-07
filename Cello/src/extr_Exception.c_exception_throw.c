
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * var ;
struct Exception {int msg; int * obj; } ;


 int Exception ;
 int * Exception_Buffer (struct Exception*) ;
 int Exception_Error (struct Exception*) ;
 int Exception_Len (struct Exception*) ;
 struct Exception* current (int ) ;
 int longjmp (int ,int) ;
 int print_to_with (int ,int ,char const*,int *) ;

var exception_throw(var obj, const char* fmt, var args) {

  struct Exception* e = current(Exception);

  e->obj = obj;
  print_to_with(e->msg, 0, fmt, args);

  if (Exception_Len(e) >= 1) {
    longjmp(*Exception_Buffer(e), 1);
  } else {
    Exception_Error(e);
  }

  return ((void*)0);

}
