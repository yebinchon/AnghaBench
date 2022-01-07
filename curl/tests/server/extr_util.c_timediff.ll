; ModuleID = '/home/carl/AnghaBench/curl/tests/server/extr_util.c_timediff.c'
source_filename = "/home/carl/AnghaBench/curl/tests/server/extr_util.c_timediff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32, i64 }

@LONG_MAX = common dso_local global i32 0, align 4
@LONG_MIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @timediff(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.timeval, align 8
  %7 = alloca %struct.timeval, align 8
  %8 = alloca i32, align 4
  %9 = bitcast %struct.timeval* %6 to { i32, i64 }*
  %10 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 0
  store i32 %0, i32* %10, align 8
  %11 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %9, i32 0, i32 1
  store i64 %1, i64* %11, align 8
  %12 = bitcast %struct.timeval* %7 to { i32, i64 }*
  %13 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 0
  store i32 %2, i32* %13, align 8
  %14 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %12, i32 0, i32 1
  store i64 %3, i64* %14, align 8
  %15 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sub nsw i32 %16, %18
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @LONG_MAX, align 4
  %22 = sdiv i32 %21, 1000
  %23 = icmp sge i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i32, i32* @LONG_MAX, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %5, align 8
  br label %51

27:                                               ; preds = %4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @LONG_MIN, align 4
  %30 = sdiv i32 %29, 1000
  %31 = icmp sle i32 %28, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %27
  %33 = load i32, i32* @LONG_MIN, align 4
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %5, align 8
  br label %51

35:                                               ; preds = %27
  br label %36

36:                                               ; preds = %35
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sub nsw i32 %38, %40
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, 1000
  %44 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.timeval, %struct.timeval* %7, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = sub nsw i64 %45, %47
  %49 = sdiv i64 %48, 1000
  %50 = add nsw i64 %43, %49
  store i64 %50, i64* %5, align 8
  br label %51

51:                                               ; preds = %36, %32, %24
  %52 = load i64, i64* %5, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
