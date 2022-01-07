; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_monotonic.c_mt_mtc_update_count.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_kern_monotonic.c_mt_mtc_update_count.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt_cpu = type { i64* }

@mt_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [86 x i8] c"monotonic: cpu %d: thread %#llx: retrograde counter %u value: %llu, last read = %llu\0A\00", align 1
@mt_retrograde = common dso_local global i32 0, align 4
@memory_order_relaxed = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mt_mtc_update_count(%struct.mt_cpu* %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.mt_cpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mt_cpu* %0, %struct.mt_cpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call i64 @mt_core_snap(i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %12 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %11, i32 0, i32 0
  %13 = load i64*, i64** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i64, i64* %13, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp slt i64 %10, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %2
  %20 = load i64, i64* @mt_debug, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %19
  %23 = call i32 (...) @cpu_number()
  %24 = call i32 (...) @current_thread()
  %25 = call i32 @thread_tid(i32 %24)
  %26 = load i32, i32* %5, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %29 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %28, i32 0, i32 0
  %30 = load i64*, i64** %29, align 8
  %31 = load i32, i32* %5, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds i64, i64* %30, i64 %32
  %34 = load i64, i64* %33, align 8
  %35 = call i32 @kprintf(i8* getelementptr inbounds ([86 x i8], [86 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %25, i32 %26, i64 %27, i64 %34)
  br label %36

36:                                               ; preds = %22, %19
  %37 = load i32, i32* @memory_order_relaxed, align 4
  %38 = call i32 @atomic_fetch_add_explicit(i32* @mt_retrograde, i32 1, i32 %37)
  %39 = load i64, i64* %6, align 8
  %40 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %41 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %5, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  store i64 %39, i64* %45, align 8
  store i64 0, i64* %3, align 8
  br label %64

46:                                               ; preds = %2
  %47 = load i64, i64* %6, align 8
  %48 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %49 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds i64, i64* %50, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %47, %54
  store i64 %55, i64* %7, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load %struct.mt_cpu*, %struct.mt_cpu** %4, align 8
  %58 = getelementptr inbounds %struct.mt_cpu, %struct.mt_cpu* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i32, i32* %5, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i64, i64* %59, i64 %61
  store i64 %56, i64* %62, align 8
  %63 = load i64, i64* %7, align 8
  store i64 %63, i64* %3, align 8
  br label %64

64:                                               ; preds = %46, %36
  %65 = load i64, i64* %3, align 8
  ret i64 %65
}

declare dso_local i64 @mt_core_snap(i32) #1

declare dso_local i32 @kprintf(i8*, i32, i32, i32, i64, i64) #1

declare dso_local i32 @cpu_number(...) #1

declare dso_local i32 @thread_tid(i32) #1

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @atomic_fetch_add_explicit(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
