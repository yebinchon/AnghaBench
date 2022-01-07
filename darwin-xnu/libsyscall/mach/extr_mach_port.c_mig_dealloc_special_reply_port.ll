; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_port.c_mig_dealloc_special_reply_port.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/mach/extr_mach_port.c_mig_dealloc_special_reply_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@THREAD_SPECIAL_REPLY_PORT_ALL = common dso_local global i32 0, align 4
@MACH_PORT_NULL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mig_dealloc_special_reply_port(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i64 (...) @_tsd_get_special_reply_port()
  store i64 %4, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i64 @MACH_PORT_VALID(i64 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %22

8:                                                ; preds = %1
  %9 = load i64, i64* %3, align 8
  %10 = load i32, i32* @THREAD_SPECIAL_REPLY_PORT_ALL, align 4
  %11 = call i32 @thread_destruct_special_reply_port(i64 %9, i32 %10)
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* %3, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %8
  %16 = call i32 (...) @mach_task_self()
  %17 = load i64, i64* %2, align 8
  %18 = call i32 @mach_port_deallocate(i32 %16, i64 %17)
  br label %19

19:                                               ; preds = %15, %8
  %20 = load i32, i32* @MACH_PORT_NULL, align 4
  %21 = call i32 @_tsd_set_special_reply_port(i32 %20)
  br label %22

22:                                               ; preds = %19, %1
  ret void
}

declare dso_local i64 @_tsd_get_special_reply_port(...) #1

declare dso_local i64 @MACH_PORT_VALID(i64) #1

declare dso_local i32 @thread_destruct_special_reply_port(i64, i32) #1

declare dso_local i32 @mach_port_deallocate(i32, i64) #1

declare dso_local i32 @mach_task_self(...) #1

declare dso_local i32 @_tsd_set_special_reply_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
