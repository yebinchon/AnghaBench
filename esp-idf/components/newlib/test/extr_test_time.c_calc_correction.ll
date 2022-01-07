; ModuleID = '/home/carl/AnghaBench/esp-idf/components/newlib/test/extr_test_time.c_calc_correction.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/newlib/test/extr_test_time.c_calc_correction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ADJTIME_CORRECTION_FACTOR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [95 x i8] c"%s: dt_real_time = %lli us, dt_sys_time = %lli us, calc_correction = %lli us, error = %lli us\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64*, i64*)* @calc_correction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @calc_correction(i8* %0, i64* %1, i64* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i64* %2, i64** %6, align 8
  %12 = load i64*, i64** %6, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64*, i64** %6, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = sub nsw i64 %14, %17
  store i64 %18, i64* %7, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = load i64*, i64** %5, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = sub nsw i64 %21, %24
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* @ADJTIME_CORRECTION_FACTOR, align 8
  %28 = ashr i64 %26, %27
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* %7, align 8
  %31 = sub nsw i64 %29, %30
  store i64 %31, i64* %10, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load i64, i64* %10, align 8
  %34 = sub nsw i64 %32, %33
  store i64 %34, i64* %11, align 8
  %35 = load i8*, i8** %4, align 8
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %9, align 8
  %39 = load i64, i64* %11, align 8
  %40 = call i32 @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i8* %35, i64 %36, i64 %37, i64 %38, i64 %39)
  %41 = load i64, i64* %8, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %3
  %44 = load i64, i64* %7, align 8
  %45 = icmp sgt i64 %44, 0
  br label %46

46:                                               ; preds = %43, %3
  %47 = phi i1 [ false, %3 ], [ %45, %43 ]
  %48 = zext i1 %47 to i32
  %49 = call i32 @TEST_ASSERT_TRUE(i32 %48)
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @TEST_ASSERT_INT_WITHIN(i32 100, i32 0, i64 %50)
  %52 = load i64, i64* %10, align 8
  ret i64 %52
}

declare dso_local i32 @printf(i8*, i8*, i64, i64, i64, i64) #1

declare dso_local i32 @TEST_ASSERT_TRUE(i32) #1

declare dso_local i32 @TEST_ASSERT_INT_WITHIN(i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
