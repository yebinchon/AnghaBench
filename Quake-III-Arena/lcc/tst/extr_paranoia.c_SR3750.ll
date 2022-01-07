; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_SR3750.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_SR3750.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@X = common dso_local global i32 0, align 4
@Radix = common dso_local global i64 0, align 8
@Z2 = common dso_local global i64 0, align 8
@W = common dso_local global i64 0, align 8
@I = common dso_local global i64 0, align 8
@D = common dso_local global i32 0, align 4
@X2 = common dso_local global i64 0, align 8
@Y = common dso_local global i64 0, align 8
@Y2 = common dso_local global i64 0, align 8
@X8 = common dso_local global i64 0, align 8
@Half = common dso_local global i64 0, align 8
@SqEr = common dso_local global i64 0, align 8
@MinSqEr = common dso_local global i64 0, align 8
@MaxSqEr = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SR3750() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @X, align 4
  %3 = sext i32 %2 to i64
  %4 = load i64, i64* @Radix, align 8
  %5 = sub nsw i64 %3, %4
  %6 = load i64, i64* @Z2, align 8
  %7 = load i64, i64* @Radix, align 8
  %8 = sub nsw i64 %6, %7
  %9 = icmp slt i64 %5, %8
  br i1 %9, label %67, label %10

10:                                               ; preds = %0
  %11 = load i32, i32* @X, align 4
  %12 = sext i32 %11 to i64
  %13 = load i64, i64* @Z2, align 8
  %14 = sub nsw i64 %12, %13
  %15 = load i64, i64* @W, align 8
  %16 = load i64, i64* @Z2, align 8
  %17 = sub nsw i64 %15, %16
  %18 = icmp sgt i64 %14, %17
  br i1 %18, label %67, label %19

19:                                               ; preds = %10
  %20 = load i64, i64* @I, align 8
  %21 = add nsw i64 %20, 1
  store i64 %21, i64* @I, align 8
  %22 = load i32, i32* @X, align 4
  %23 = load i32, i32* @D, align 4
  %24 = mul nsw i32 %22, %23
  %25 = call i64 @SQRT(i32 %24)
  store i64 %25, i64* @X2, align 8
  %26 = load i64, i64* @X2, align 8
  %27 = load i64, i64* @Z2, align 8
  %28 = sub nsw i64 %26, %27
  %29 = load i64, i64* @Y, align 8
  %30 = load i64, i64* @Z2, align 8
  %31 = sub nsw i64 %29, %30
  %32 = sub nsw i64 %28, %31
  store i64 %32, i64* @Y2, align 8
  %33 = load i64, i64* @X8, align 8
  %34 = load i64, i64* @Y, align 8
  %35 = load i64, i64* @Half, align 8
  %36 = sub nsw i64 %34, %35
  %37 = sdiv i64 %33, %36
  store i64 %37, i64* @X2, align 8
  %38 = load i64, i64* @X2, align 8
  %39 = load i64, i64* @Half, align 8
  %40 = load i64, i64* @X2, align 8
  %41 = mul nsw i64 %39, %40
  %42 = load i64, i64* @X2, align 8
  %43 = mul nsw i64 %41, %42
  %44 = sub nsw i64 %38, %43
  store i64 %44, i64* @X2, align 8
  %45 = load i64, i64* @Y2, align 8
  %46 = load i64, i64* @Half, align 8
  %47 = add nsw i64 %45, %46
  %48 = load i64, i64* @Half, align 8
  %49 = load i64, i64* @X2, align 8
  %50 = sub nsw i64 %48, %49
  %51 = add nsw i64 %47, %50
  store i64 %51, i64* @SqEr, align 8
  %52 = load i64, i64* @SqEr, align 8
  %53 = load i64, i64* @MinSqEr, align 8
  %54 = icmp slt i64 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %19
  %56 = load i64, i64* @SqEr, align 8
  store i64 %56, i64* @MinSqEr, align 8
  br label %57

57:                                               ; preds = %55, %19
  %58 = load i64, i64* @Y2, align 8
  %59 = load i64, i64* @X2, align 8
  %60 = sub nsw i64 %58, %59
  store i64 %60, i64* @SqEr, align 8
  %61 = load i64, i64* @SqEr, align 8
  %62 = load i64, i64* @MaxSqEr, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i64, i64* @SqEr, align 8
  store i64 %65, i64* @MaxSqEr, align 8
  br label %66

66:                                               ; preds = %64, %57
  br label %67

67:                                               ; preds = %66, %10, %0
  %68 = load i32, i32* %1, align 4
  ret i32 %68
}

declare dso_local i64 @SQRT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
