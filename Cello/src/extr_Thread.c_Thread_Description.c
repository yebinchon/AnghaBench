
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char* Thread_Description(void) {
  return
    "The `Thread` type provides a basic primitive for concurrent "
    "execution. It acts as a basic wrapper around operating system threads, "
    "using WinThreads on Windows and pthreads otherwise.";
}
