; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_enable_callbacks.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_fasttrap.c_fasttrap_enable_callbacks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@fasttrap_count_mtx = common dso_local global i32 0, align 4
@fasttrap_pid_count = common dso_local global i64 0, align 8
@dtrace_pid_probe_ptr = common dso_local global i32* null, align 8
@dtrace_return_probe_ptr = common dso_local global i32* null, align 8
@fasttrap_pid_probe = common dso_local global i32 0, align 4
@fasttrap_return_probe = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @fasttrap_enable_callbacks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fasttrap_enable_callbacks() #0 {
  %1 = call i32 @lck_mtx_lock(i32* @fasttrap_count_mtx)
  %2 = load i64, i64* @fasttrap_pid_count, align 8
  %3 = icmp eq i64 %2, 0
  br i1 %3, label %4, label %13

4:                                                ; preds = %0
  %5 = load i32*, i32** @dtrace_pid_probe_ptr, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @ASSERT(i32 %7)
  %9 = load i32*, i32** @dtrace_return_probe_ptr, align 8
  %10 = icmp eq i32* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @ASSERT(i32 %11)
  store i32* @fasttrap_pid_probe, i32** @dtrace_pid_probe_ptr, align 8
  store i32* @fasttrap_return_probe, i32** @dtrace_return_probe_ptr, align 8
  br label %13

13:                                               ; preds = %4, %0
  %14 = load i32*, i32** @dtrace_pid_probe_ptr, align 8
  %15 = icmp eq i32* %14, @fasttrap_pid_probe
  %16 = zext i1 %15 to i32
  %17 = call i32 @ASSERT(i32 %16)
  %18 = load i32*, i32** @dtrace_return_probe_ptr, align 8
  %19 = icmp eq i32* %18, @fasttrap_return_probe
  %20 = zext i1 %19 to i32
  %21 = call i32 @ASSERT(i32 %20)
  %22 = load i64, i64* @fasttrap_pid_count, align 8
  %23 = add nsw i64 %22, 1
  store i64 %23, i64* @fasttrap_pid_count, align 8
  %24 = call i32 @lck_mtx_unlock(i32* @fasttrap_count_mtx)
  ret void
}

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
