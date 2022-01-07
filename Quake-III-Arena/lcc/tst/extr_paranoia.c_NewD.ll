; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_NewD.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/lcc/tst/extr_paranoia.c_NewD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@Z1 = common dso_local global i32 0, align 4
@Q = common dso_local global i32 0, align 4
@X = common dso_local global i32 0, align 4
@Half = common dso_local global i64 0, align 8
@Radix = common dso_local global i32 0, align 4
@Z = common dso_local global i32 0, align 4
@D = common dso_local global i32 0, align 4
@Two = common dso_local global i32 0, align 4
@Zero = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @NewD() #0 {
  %1 = alloca i32, align 4
  %2 = load i32, i32* @Z1, align 4
  %3 = load i32, i32* @Q, align 4
  %4 = mul nsw i32 %2, %3
  store i32 %4, i32* @X, align 4
  %5 = load i64, i64* @Half, align 8
  %6 = load i32, i32* @X, align 4
  %7 = load i32, i32* @Radix, align 4
  %8 = sdiv i32 %6, %7
  %9 = sext i32 %8 to i64
  %10 = sub nsw i64 %5, %9
  %11 = call i32 @FLOOR(i64 %10)
  %12 = load i32, i32* @Radix, align 4
  %13 = mul nsw i32 %11, %12
  %14 = load i32, i32* @X, align 4
  %15 = add nsw i32 %13, %14
  store i32 %15, i32* @X, align 4
  %16 = load i32, i32* @Q, align 4
  %17 = load i32, i32* @X, align 4
  %18 = load i32, i32* @Z, align 4
  %19 = mul nsw i32 %17, %18
  %20 = sub nsw i32 %16, %19
  %21 = load i32, i32* @Radix, align 4
  %22 = sdiv i32 %20, %21
  %23 = load i32, i32* @X, align 4
  %24 = load i32, i32* @X, align 4
  %25 = mul nsw i32 %23, %24
  %26 = load i32, i32* @D, align 4
  %27 = load i32, i32* @Radix, align 4
  %28 = sdiv i32 %26, %27
  %29 = mul nsw i32 %25, %28
  %30 = add nsw i32 %22, %29
  store i32 %30, i32* @Q, align 4
  %31 = load i32, i32* @Z, align 4
  %32 = load i32, i32* @Two, align 4
  %33 = load i32, i32* @X, align 4
  %34 = mul nsw i32 %32, %33
  %35 = load i32, i32* @D, align 4
  %36 = mul nsw i32 %34, %35
  %37 = sub nsw i32 %31, %36
  store i32 %37, i32* @Z, align 4
  %38 = load i32, i32* @Z, align 4
  %39 = load i32, i32* @Zero, align 4
  %40 = icmp sle i32 %38, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %0
  %42 = load i32, i32* @Z, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* @Z, align 4
  %44 = load i32, i32* @Z1, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* @Z1, align 4
  br label %46

46:                                               ; preds = %41, %0
  %47 = load i32, i32* @Radix, align 4
  %48 = load i32, i32* @D, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* @D, align 4
  %50 = load i32, i32* %1, align 4
  ret i32 %50
}

declare dso_local i32 @FLOOR(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
