; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_ir_correct_for_bounds.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/wiiuse/extr_ir.c_ir_correct_for_bounds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@WIIUSE_ASPECT_16_9 = common dso_local global i32 0, align 4
@WM_ASPECT_16_9_X = common dso_local global i32 0, align 4
@WM_ASPECT_16_9_Y = common dso_local global i32 0, align 4
@WM_ASPECT_4_3_X = common dso_local global i32 0, align 4
@WM_ASPECT_4_3_Y = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (float*, float*, i32, i32, i32)* @ir_correct_for_bounds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ir_correct_for_bounds(float* %0, float* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @WIIUSE_ASPECT_16_9, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %5
  %20 = load i32, i32* @WM_ASPECT_16_9_X, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @WM_ASPECT_16_9_Y, align 4
  store i32 %21, i32* %15, align 4
  br label %25

22:                                               ; preds = %5
  %23 = load i32, i32* @WM_ASPECT_4_3_X, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* @WM_ASPECT_4_3_Y, align 4
  store i32 %24, i32* %15, align 4
  br label %25

25:                                               ; preds = %22, %19
  %26 = load i32, i32* %14, align 4
  %27 = sub nsw i32 1024, %26
  %28 = sdiv i32 %27, 2
  %29 = load i32, i32* %10, align 4
  %30 = add nsw i32 %28, %29
  %31 = sitofp i32 %30 to float
  store float %31, float* %12, align 4
  %32 = load i32, i32* %15, align 4
  %33 = sub nsw i32 768, %32
  %34 = sdiv i32 %33, 2
  %35 = load i32, i32* %11, align 4
  %36 = add nsw i32 %34, %35
  %37 = sitofp i32 %36 to float
  store float %37, float* %13, align 4
  %38 = load float*, float** %7, align 8
  %39 = load float, float* %38, align 4
  %40 = load float, float* %12, align 4
  %41 = fcmp oge float %39, %40
  br i1 %41, label %42, label %74

42:                                               ; preds = %25
  %43 = load float*, float** %7, align 8
  %44 = load float, float* %43, align 4
  %45 = load float, float* %12, align 4
  %46 = load i32, i32* %14, align 4
  %47 = sitofp i32 %46 to float
  %48 = fadd float %45, %47
  %49 = fcmp ole float %44, %48
  br i1 %49, label %50, label %74

50:                                               ; preds = %42
  %51 = load float*, float** %8, align 8
  %52 = load float, float* %51, align 4
  %53 = load float, float* %13, align 4
  %54 = fcmp oge float %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %50
  %56 = load float*, float** %8, align 8
  %57 = load float, float* %56, align 4
  %58 = load float, float* %13, align 4
  %59 = load i32, i32* %15, align 4
  %60 = sitofp i32 %59 to float
  %61 = fadd float %58, %60
  %62 = fcmp ole float %57, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %55
  %64 = load i32, i32* %10, align 4
  %65 = sitofp i32 %64 to float
  %66 = load float*, float** %7, align 8
  %67 = load float, float* %66, align 4
  %68 = fsub float %67, %65
  store float %68, float* %66, align 4
  %69 = load i32, i32* %11, align 4
  %70 = sitofp i32 %69 to float
  %71 = load float*, float** %8, align 8
  %72 = load float, float* %71, align 4
  %73 = fsub float %72, %70
  store float %73, float* %71, align 4
  store i32 1, i32* %6, align 4
  br label %75

74:                                               ; preds = %55, %50, %42, %25
  store i32 0, i32* %6, align 4
  br label %75

75:                                               ; preds = %74, %63
  %76 = load i32, i32* %6, align 4
  ret i32 %76
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
