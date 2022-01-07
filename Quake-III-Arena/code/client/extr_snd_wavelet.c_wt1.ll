; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_wt1.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/client/extr_snd_wavelet.c_wt1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @wt1(float* %0, i64 %1, i32 %2) #0 {
  %4 = alloca float*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store float* %0, float** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i64, i64* %5, align 8
  %10 = udiv i64 %9, 4
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %8, align 4
  %12 = load i64, i64* %5, align 8
  %13 = load i32, i32* %8, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp ult i64 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %52

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = icmp sge i32 %18, 0
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  store i64 %21, i64* %7, align 8
  br label %22

22:                                               ; preds = %32, %20
  %23 = load i64, i64* %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %23, %25
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load float*, float** %4, align 8
  %29 = load i64, i64* %7, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @daub4(float* %28, i64 %29, i32 %30)
  br label %32

32:                                               ; preds = %27
  %33 = load i64, i64* %7, align 8
  %34 = lshr i64 %33, 1
  store i64 %34, i64* %7, align 8
  br label %22

35:                                               ; preds = %22
  br label %52

36:                                               ; preds = %17
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %7, align 8
  br label %39

39:                                               ; preds = %48, %36
  %40 = load i64, i64* %7, align 8
  %41 = load i64, i64* %5, align 8
  %42 = icmp ule i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %39
  %44 = load float*, float** %4, align 8
  %45 = load i64, i64* %7, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @daub4(float* %44, i64 %45, i32 %46)
  br label %48

48:                                               ; preds = %43
  %49 = load i64, i64* %7, align 8
  %50 = shl i64 %49, 1
  store i64 %50, i64* %7, align 8
  br label %39

51:                                               ; preds = %39
  br label %52

52:                                               ; preds = %16, %51, %35
  ret void
}

declare dso_local i32 @daub4(float*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
