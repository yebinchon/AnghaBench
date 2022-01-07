; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_clock.c_tvtohz.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_kern_clock.c_tvtohz.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@LONG_MAX = common dso_local global i32 0, align 4
@tick = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tvtohz(%struct.timeval* %0) #0 {
  %2 = alloca %struct.timeval*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.timeval* %0, %struct.timeval** %2, align 8
  %6 = load %struct.timeval*, %struct.timeval** %2, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.timeval*, %struct.timeval** %2, align 8
  %10 = getelementptr inbounds %struct.timeval, %struct.timeval* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %5, align 8
  %12 = load i64, i64* %5, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i64, i64* %4, align 8
  %16 = add nsw i64 %15, -1
  store i64 %16, i64* %4, align 8
  %17 = load i64, i64* %5, align 8
  %18 = add nsw i64 %17, 1000000
  store i64 %18, i64* %5, align 8
  br label %19

19:                                               ; preds = %14, %1
  %20 = load i64, i64* %4, align 8
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i64 1, i64* %3, align 8
  br label %69

23:                                               ; preds = %19
  %24 = load i64, i64* %4, align 8
  %25 = load i32, i32* @LONG_MAX, align 4
  %26 = sdiv i32 %25, 1000000
  %27 = sext i32 %26 to i64
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %23
  %30 = load i64, i64* %4, align 8
  %31 = mul nsw i64 %30, 1000000
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %31, %32
  %34 = load i32, i32* @tick, align 4
  %35 = sub nsw i32 %34, 1
  %36 = sext i32 %35 to i64
  %37 = add i64 %33, %36
  %38 = load i32, i32* @tick, align 4
  %39 = sext i32 %38 to i64
  %40 = udiv i64 %37, %39
  %41 = add i64 %40, 1
  store i64 %41, i64* %3, align 8
  br label %68

42:                                               ; preds = %23
  %43 = load i64, i64* %4, align 8
  %44 = load i32, i32* @LONG_MAX, align 4
  %45 = load i32, i32* @hz, align 4
  %46 = sdiv i32 %44, %45
  %47 = sext i32 %46 to i64
  %48 = icmp sle i64 %43, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i64, i64* %4, align 8
  %51 = load i32, i32* @hz, align 4
  %52 = sext i32 %51 to i64
  %53 = mul nsw i64 %50, %52
  %54 = load i64, i64* %5, align 8
  %55 = load i32, i32* @tick, align 4
  %56 = sub nsw i32 %55, 1
  %57 = sext i32 %56 to i64
  %58 = add i64 %54, %57
  %59 = load i32, i32* @tick, align 4
  %60 = sext i32 %59 to i64
  %61 = udiv i64 %58, %60
  %62 = add i64 %53, %61
  %63 = add i64 %62, 1
  store i64 %63, i64* %3, align 8
  br label %67

64:                                               ; preds = %42
  %65 = load i32, i32* @LONG_MAX, align 4
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %3, align 8
  br label %67

67:                                               ; preds = %64, %49
  br label %68

68:                                               ; preds = %67, %29
  br label %69

69:                                               ; preds = %68, %22
  %70 = load i64, i64* %3, align 8
  %71 = load i64, i64* @INT_MAX, align 8
  %72 = icmp ugt i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %69
  %74 = load i64, i64* @INT_MAX, align 8
  store i64 %74, i64* %3, align 8
  br label %75

75:                                               ; preds = %73, %69
  %76 = load i64, i64* %3, align 8
  %77 = trunc i64 %76 to i32
  ret i32 %77
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
