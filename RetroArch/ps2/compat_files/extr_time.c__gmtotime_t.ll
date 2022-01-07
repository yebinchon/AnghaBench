; ModuleID = '/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_time.c__gmtotime_t.c'
source_filename = "/home/carl/AnghaBench/RetroArch/ps2/compat_files/extr_time.c__gmtotime_t.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MIN_SUPPORTED_YEAR = common dso_local global i32 0, align 4
@MAX_SUPPORTED_YEAR = common dso_local global i32 0, align 4
@DAYS_YEAR = common dso_local global i32 0, align 4
@_days = common dso_local global i64* null, align 8
@MINS_HOUR = common dso_local global i32 0, align 4
@SECS_MIN = common dso_local global i32 0, align 4
@HOURS_DAY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i32)* @_gmtotime_t to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gmtotime_t(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 -1, i32* %16, align 4
  %17 = load i32, i32* %7, align 4
  %18 = load i32, i32* @MIN_SUPPORTED_YEAR, align 4
  %19 = icmp sge i32 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %6
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @MAX_SUPPORTED_YEAR, align 4
  %23 = icmp sle i32 %21, %22
  br i1 %23, label %24, label %86

24:                                               ; preds = %20, %6
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = load i32, i32* @MIN_SUPPORTED_YEAR, align 4
  %28 = sext i32 %27 to i64
  %29 = sub nsw i64 %26, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* @DAYS_YEAR, align 4
  %33 = mul nsw i32 %31, %32
  %34 = sext i32 %33 to i64
  store i64 %34, i64* %14, align 8
  %35 = load i32, i32* %13, align 4
  %36 = ashr i32 %35, 2
  %37 = load i32, i32* @DAYS_YEAR, align 4
  %38 = add nsw i32 %37, 1
  %39 = mul nsw i32 %36, %38
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %14, align 8
  %42 = add nsw i64 %41, %40
  store i64 %42, i64* %14, align 8
  %43 = load i32, i32* %9, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64*, i64** @_days, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sub nsw i32 %46, 1
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %45, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %44, %50
  %52 = load i64, i64* %14, align 8
  %53 = add nsw i64 %52, %51
  store i64 %53, i64* %14, align 8
  %54 = load i32, i32* %7, align 4
  %55 = and i32 %54, 3
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %63, label %57

57:                                               ; preds = %24
  %58 = load i32, i32* %8, align 4
  %59 = icmp sgt i32 %58, 2
  br i1 %59, label %60, label %63

60:                                               ; preds = %57
  %61 = load i64, i64* %14, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %14, align 8
  br label %63

63:                                               ; preds = %60, %57, %24
  %64 = load i32, i32* %10, align 4
  %65 = load i32, i32* @MINS_HOUR, align 4
  %66 = mul nsw i32 %64, %65
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %66, %67
  %69 = load i32, i32* @SECS_MIN, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %12, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  store i64 %73, i64* %15, align 8
  %74 = load i64, i64* %14, align 8
  %75 = load i64, i64* @HOURS_DAY, align 8
  %76 = mul nsw i64 %74, %75
  %77 = load i32, i32* @MINS_HOUR, align 4
  %78 = sext i32 %77 to i64
  %79 = mul nsw i64 %76, %78
  %80 = load i32, i32* @SECS_MIN, align 4
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %79, %81
  %83 = load i64, i64* %15, align 8
  %84 = add nsw i64 %82, %83
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %16, align 4
  br label %86

86:                                               ; preds = %63, %20
  %87 = load i32, i32* %16, align 4
  ret i32 %87
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
