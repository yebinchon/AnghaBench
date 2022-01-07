; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/external/sbc/plc/extr_sbc_plc.c_AmplitudeMatch.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/external/sbc/plc/extr_sbc_plc.c_AmplitudeMatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SBC_FS = common dso_local global i32 0, align 4
@SBC_LHIST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (float (i32*, i32)* @AmplitudeMatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @AmplitudeMatch(i32* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  store i32* %0, i32** %3, align 8
  store i32 %1, i32* %4, align 4
  store float 0.000000e+00, float* %6, align 4
  store float 0x3EB0C6F7A0000000, float* %7, align 4
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %38, %2
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @SBC_FS, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %41

13:                                               ; preds = %9
  %14 = load i32*, i32** %3, align 8
  %15 = load i32, i32* @SBC_LHIST, align 4
  %16 = load i32, i32* @SBC_FS, align 4
  %17 = sub nsw i32 %15, %16
  %18 = load i32, i32* %5, align 4
  %19 = add nsw i32 %17, %18
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %14, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @absolute(i32 %22)
  %24 = sitofp i64 %23 to float
  %25 = load float, float* %6, align 4
  %26 = fadd float %25, %24
  store float %26, float* %6, align 4
  %27 = load i32*, i32** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %27, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @absolute(i32 %33)
  %35 = sitofp i64 %34 to float
  %36 = load float, float* %7, align 4
  %37 = fadd float %36, %35
  store float %37, float* %7, align 4
  br label %38

38:                                               ; preds = %13
  %39 = load i32, i32* %5, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %5, align 4
  br label %9

41:                                               ; preds = %9
  %42 = load float, float* %6, align 4
  %43 = load float, float* %7, align 4
  %44 = fdiv float %42, %43
  store float %44, float* %8, align 4
  %45 = load float, float* %8, align 4
  %46 = fcmp olt float %45, 7.500000e-01
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store float 7.500000e-01, float* %8, align 4
  br label %48

48:                                               ; preds = %47, %41
  %49 = load float, float* %8, align 4
  %50 = fcmp ogt float %49, 0x3FF3333340000000
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store float 0x3FF3333340000000, float* %8, align 4
  br label %52

52:                                               ; preds = %51, %48
  %53 = load float, float* %8, align 4
  ret float %53
}

declare dso_local i64 @absolute(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
