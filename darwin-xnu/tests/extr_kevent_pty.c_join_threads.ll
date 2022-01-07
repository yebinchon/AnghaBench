; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_pty.c_join_threads.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_kevent_pty.c_join_threads.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@attach_slave = common dso_local global i32 0, align 4
@attach_master = common dso_local global i32 0, align 4
@writing = common dso_local global i32 0, align 4
@reader = common dso_local global i32 0, align 4
@writer = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @join_threads to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @join_threads() #0 {
  %1 = load i32, i32* @attach_slave, align 4
  %2 = call i32 @close(i32 %1)
  %3 = load i32, i32* @attach_master, align 4
  %4 = call i32 @close(i32 %3)
  store i32 0, i32* @writing, align 4
  %5 = load i32, i32* @reader, align 4
  %6 = call i32 @pthread_join(i32 %5, i32* null)
  %7 = load i32, i32* @writer, align 4
  %8 = call i32 @pthread_join(i32 %7, i32* null)
  ret void
}

declare dso_local i32 @close(i32) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
