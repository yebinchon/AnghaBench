; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@dtrace_probeid_error = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@DTRACEFLT_UNKNOWN = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dtrace_probe(i64 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = call i32 (...) @current_thread()
  store i32 %14, i32* %13, align 4
  %15 = call i32 (...) @disable_preemption()
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @dtrace_probeid_error, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %6
  %20 = load i64, i64* %7, align 8
  %21 = load i64, i64* %8, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = trunc i64 %23 to i32
  %25 = load i64, i64* %11, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @__dtrace_probe(i64 %20, i64 %21, i64 %22, i32 %24, i32 %26, i64 %27)
  %29 = call i32 (...) @dtrace_getipl()
  br label %51

30:                                               ; preds = %6
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @dtrace_get_thread_reentering(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %50, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* @TRUE, align 4
  %37 = call i32 @dtrace_set_thread_reentering(i32 %35, i32 %36)
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i64, i64* %11, align 8
  %44 = trunc i64 %43 to i32
  %45 = load i64, i64* %12, align 8
  %46 = call i32 @__dtrace_probe(i64 %38, i64 %39, i64 %40, i32 %42, i32 %44, i64 %45)
  %47 = load i32, i32* %13, align 4
  %48 = load i32, i32* @FALSE, align 4
  %49 = call i32 @dtrace_set_thread_reentering(i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %34, %30
  br label %51

51:                                               ; preds = %50, %19
  %52 = call i32 (...) @enable_preemption()
  ret void
}

declare dso_local i32 @current_thread(...) #1

declare dso_local i32 @disable_preemption(...) #1

declare dso_local i32 @__dtrace_probe(i64, i64, i64, i32, i32, i64) #1

declare dso_local i32 @dtrace_getipl(...) #1

declare dso_local i32 @dtrace_get_thread_reentering(i32) #1

declare dso_local i32 @dtrace_set_thread_reentering(i32, i32) #1

declare dso_local i32 @enable_preemption(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
