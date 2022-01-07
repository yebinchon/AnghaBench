; ModuleID = '/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit.c_cleanup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/tests/extr_perf_exit.c_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@begin_ts = common dso_local global i32 0, align 4
@spawn_queue = common dso_local global i32 0, align 4
@processing_queue = common dso_local global i32 0, align 4
@tracing_on = common dso_local global i64 0, align 8
@session = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup() #0 {
  %1 = load i32, i32* @begin_ts, align 4
  %2 = call i32 @free(i32 %1)
  %3 = load i32, i32* @spawn_queue, align 4
  %4 = call i32 @dispatch_release(i32 %3)
  %5 = load i32, i32* @processing_queue, align 4
  %6 = call i32 @dispatch_release(i32 %5)
  %7 = load i64, i64* @tracing_on, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %0
  %10 = load i32, i32* @session, align 4
  %11 = call i32 @ktrace_end(i32 %10, i32 1)
  br label %12

12:                                               ; preds = %9, %0
  ret void
}

declare dso_local i32 @free(i32) #1

declare dso_local i32 @dispatch_release(i32) #1

declare dso_local i32 @ktrace_end(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
