
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __SIGABRT ;
 int __exit (int) ;
 int __getpid () ;
 int __kill (int ,int ,int ) ;

__attribute__((used)) static inline void __attribute__((noreturn))
abort(void) {
 (void)__kill(__getpid(), __SIGABRT, 0);
 __exit(1);
}
