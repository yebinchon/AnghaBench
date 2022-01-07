; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_started_cpu.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_mp.c_started_cpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }

@TSC_sync_margin = common dso_local global i64 0, align 8
@start_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@tsc_target = common dso_local global i64 0, align 8
@tsc_entry_barrier = common dso_local global i64 0, align 8
@tsc_exit_barrier = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @started_cpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @started_cpu() #0 {
  %1 = load i64, i64* @TSC_sync_margin, align 8
  %2 = icmp ne i64 %1, 0
  br i1 %2, label %3, label %16

3:                                                ; preds = %0
  %4 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @start_info, i32 0, i32 0), align 8
  %5 = call i64 (...) @cpu_number()
  %6 = icmp eq i64 %4, %5
  br i1 %6, label %7, label %16

7:                                                ; preds = %3
  store i64 0, i64* @tsc_target, align 8
  %8 = call i32 @atomic_decl(i64* @tsc_entry_barrier, i32 1)
  br label %9

9:                                                ; preds = %12, %7
  %10 = load i64, i64* @tsc_entry_barrier, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %9

13:                                               ; preds = %9
  %14 = call i64 (...) @rdtsc64()
  store i64 %14, i64* @tsc_target, align 8
  %15 = call i32 @atomic_decl(i64* @tsc_exit_barrier, i32 1)
  br label %16

16:                                               ; preds = %13, %3, %0
  ret void
}

declare dso_local i64 @cpu_number(...) #1

declare dso_local i32 @atomic_decl(i64*, i32) #1

declare dso_local i64 @rdtsc64(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
