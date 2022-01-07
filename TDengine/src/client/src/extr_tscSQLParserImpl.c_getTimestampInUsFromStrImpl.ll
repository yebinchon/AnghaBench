; ModuleID = '/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_getTimestampInUsFromStrImpl.c'
source_filename = "/home/carl/AnghaBench/TDengine/src/client/src/extr_tscSQLParserImpl.c_getTimestampInUsFromStrImpl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MILLISECOND_PER_SECOND = common dso_local global i64 0, align 8
@MILLISECOND_PER_MINUTE = common dso_local global i64 0, align 8
@MILLISECOND_PER_HOUR = common dso_local global i64 0, align 8
@MILLISECOND_PER_DAY = common dso_local global i64 0, align 8
@MILLISECOND_PER_WEEK = common dso_local global i64 0, align 8
@MILLISECOND_PER_MONTH = common dso_local global i64 0, align 8
@MILLISECOND_PER_YEAR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getTimestampInUsFromStrImpl(i64 %0, i8 signext %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8, align 1
  %7 = alloca i64*, align 8
  store i64 %0, i64* %5, align 8
  store i8 %1, i8* %6, align 1
  store i64* %2, i64** %7, align 8
  %8 = load i64, i64* %5, align 8
  %9 = load i64*, i64** %7, align 8
  store i64 %8, i64* %9, align 8
  %10 = load i8, i8* %6, align 1
  %11 = sext i8 %10 to i32
  switch i32 %11, label %48 [
    i32 115, label %12
    i32 109, label %17
    i32 104, label %22
    i32 100, label %27
    i32 119, label %32
    i32 110, label %37
    i32 121, label %42
    i32 97, label %47
  ]

12:                                               ; preds = %3
  %13 = load i64, i64* @MILLISECOND_PER_SECOND, align 8
  %14 = load i64*, i64** %7, align 8
  %15 = load i64, i64* %14, align 8
  %16 = mul nsw i64 %15, %13
  store i64 %16, i64* %14, align 8
  br label %49

17:                                               ; preds = %3
  %18 = load i64, i64* @MILLISECOND_PER_MINUTE, align 8
  %19 = load i64*, i64** %7, align 8
  %20 = load i64, i64* %19, align 8
  %21 = mul nsw i64 %20, %18
  store i64 %21, i64* %19, align 8
  br label %49

22:                                               ; preds = %3
  %23 = load i64, i64* @MILLISECOND_PER_HOUR, align 8
  %24 = load i64*, i64** %7, align 8
  %25 = load i64, i64* %24, align 8
  %26 = mul nsw i64 %25, %23
  store i64 %26, i64* %24, align 8
  br label %49

27:                                               ; preds = %3
  %28 = load i64, i64* @MILLISECOND_PER_DAY, align 8
  %29 = load i64*, i64** %7, align 8
  %30 = load i64, i64* %29, align 8
  %31 = mul nsw i64 %30, %28
  store i64 %31, i64* %29, align 8
  br label %49

32:                                               ; preds = %3
  %33 = load i64, i64* @MILLISECOND_PER_WEEK, align 8
  %34 = load i64*, i64** %7, align 8
  %35 = load i64, i64* %34, align 8
  %36 = mul nsw i64 %35, %33
  store i64 %36, i64* %34, align 8
  br label %49

37:                                               ; preds = %3
  %38 = load i64, i64* @MILLISECOND_PER_MONTH, align 8
  %39 = load i64*, i64** %7, align 8
  %40 = load i64, i64* %39, align 8
  %41 = mul nsw i64 %40, %38
  store i64 %41, i64* %39, align 8
  br label %49

42:                                               ; preds = %3
  %43 = load i64, i64* @MILLISECOND_PER_YEAR, align 8
  %44 = load i64*, i64** %7, align 8
  %45 = load i64, i64* %44, align 8
  %46 = mul nsw i64 %45, %43
  store i64 %46, i64* %44, align 8
  br label %49

47:                                               ; preds = %3
  br label %49

48:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %53

49:                                               ; preds = %47, %42, %37, %32, %27, %22, %17, %12
  %50 = load i64*, i64** %7, align 8
  %51 = load i64, i64* %50, align 8
  %52 = mul nsw i64 %51, 1000
  store i64 %52, i64* %50, align 8
  store i32 0, i32* %4, align 4
  br label %53

53:                                               ; preds = %49, %48
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
