; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_vectoyaw.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/game/extr_g_utils.c_vectoyaw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@YAW = common dso_local global i64 0, align 8
@PITCH = common dso_local global i64 0, align 8
@M_PI = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local float @vectoyaw(i64* %0) #0 {
  %2 = alloca i64*, align 8
  %3 = alloca float, align 4
  store i64* %0, i64** %2, align 8
  %4 = load i64*, i64** %2, align 8
  %5 = load i64, i64* @YAW, align 8
  %6 = getelementptr inbounds i64, i64* %4, i64 %5
  %7 = load i64, i64* %6, align 8
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load i64*, i64** %2, align 8
  %11 = load i64, i64* @PITCH, align 8
  %12 = getelementptr inbounds i64, i64* %10, i64 %11
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store float 0.000000e+00, float* %3, align 4
  br label %52

16:                                               ; preds = %9, %1
  %17 = load i64*, i64** %2, align 8
  %18 = load i64, i64* @PITCH, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %16
  %23 = load i64*, i64** %2, align 8
  %24 = load i64, i64* @YAW, align 8
  %25 = getelementptr inbounds i64, i64* %23, i64 %24
  %26 = load i64, i64* %25, align 8
  %27 = load i64*, i64** %2, align 8
  %28 = load i64, i64* @PITCH, align 8
  %29 = getelementptr inbounds i64, i64* %27, i64 %28
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @atan2(i64 %26, i64 %30)
  %32 = mul nsw i32 %31, 180
  %33 = load i32, i32* @M_PI, align 4
  %34 = sdiv i32 %32, %33
  %35 = sitofp i32 %34 to float
  store float %35, float* %3, align 4
  br label %45

36:                                               ; preds = %16
  %37 = load i64*, i64** %2, align 8
  %38 = load i64, i64* @YAW, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = icmp sgt i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  store float 9.000000e+01, float* %3, align 4
  br label %44

43:                                               ; preds = %36
  store float 2.700000e+02, float* %3, align 4
  br label %44

44:                                               ; preds = %43, %42
  br label %45

45:                                               ; preds = %44, %22
  %46 = load float, float* %3, align 4
  %47 = fcmp olt float %46, 0.000000e+00
  br i1 %47, label %48, label %51

48:                                               ; preds = %45
  %49 = load float, float* %3, align 4
  %50 = fadd float %49, 3.600000e+02
  store float %50, float* %3, align 4
  br label %51

51:                                               ; preds = %48, %45
  br label %52

52:                                               ; preds = %51, %15
  %53 = load float, float* %3, align 4
  ret float %53
}

declare dso_local i32 @atan2(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
