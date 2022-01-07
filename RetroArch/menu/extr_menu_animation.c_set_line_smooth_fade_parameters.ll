; ModuleID = '/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_set_line_smooth_fade_parameters.c'
source_filename = "/home/carl/AnghaBench/RetroArch/menu/extr_menu_animation.c_set_line_smooth_fade_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i64, i64, i64, i64, i64, i64, float, i64*, float*, float*, i64*, float*, float*)* @set_line_smooth_fade_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_line_smooth_fade_parameters(i32 %0, i64 %1, i64 %2, i64 %3, i64 %4, i64 %5, i64 %6, float %7, i64* %8, float* %9, float* %10, i64* %11, float* %12, float* %13) #0 {
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca float, align 4
  %23 = alloca i64*, align 8
  %24 = alloca float*, align 8
  %25 = alloca float*, align 8
  %26 = alloca i64*, align 8
  %27 = alloca float*, align 8
  %28 = alloca float*, align 8
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  store i32 %0, i32* %15, align 4
  store i64 %1, i64* %16, align 8
  store i64 %2, i64* %17, align 8
  store i64 %3, i64* %18, align 8
  store i64 %4, i64* %19, align 8
  store i64 %5, i64* %20, align 8
  store i64 %6, i64* %21, align 8
  store float %7, float* %22, align 4
  store i64* %8, i64** %23, align 8
  store float* %9, float** %24, align 8
  store float* %10, float** %25, align 8
  store i64* %11, i64** %26, align 8
  store float* %12, float** %27, align 8
  store float* %13, float** %28, align 8
  store float 0.000000e+00, float* %29, align 4
  store float 0.000000e+00, float* %30, align 4
  %31 = load i64, i64* %16, align 8
  %32 = uitofp i64 %31 to float
  %33 = load i64, i64* %17, align 8
  %34 = uitofp i64 %33 to float
  %35 = fmul float %34, 2.000000e+00
  %36 = fsub float %32, %35
  %37 = load i64, i64* %16, align 8
  %38 = uitofp i64 %37 to float
  %39 = fdiv float %36, %38
  store float %39, float* %29, align 4
  %40 = load float, float* %29, align 4
  %41 = fmul float -1.000000e+00, %40
  store float %41, float* %30, align 4
  %42 = load float, float* %29, align 4
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %14
  br label %47

45:                                               ; preds = %14
  %46 = load float, float* %29, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi float [ 0.000000e+00, %44 ], [ %46, %45 ]
  store float %48, float* %29, align 4
  %49 = load float, float* %30, align 4
  %50 = fcmp olt float %49, 0.000000e+00
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %54

52:                                               ; preds = %47
  %53 = load float, float* %30, align 4
  br label %54

54:                                               ; preds = %52, %51
  %55 = phi float [ 0.000000e+00, %51 ], [ %53, %52 ]
  store float %55, float* %30, align 4
  %56 = load i64, i64* %21, align 8
  %57 = icmp ugt i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* %21, align 8
  %60 = sub i64 %59, 1
  br label %63

61:                                               ; preds = %54
  %62 = load i64, i64* %19, align 8
  br label %63

63:                                               ; preds = %61, %58
  %64 = phi i64 [ %60, %58 ], [ %62, %61 ]
  %65 = load i64*, i64** %23, align 8
  store i64 %64, i64* %65, align 8
  %66 = load float, float* %22, align 4
  %67 = load i64, i64* %18, align 8
  %68 = uitofp i64 %67 to float
  %69 = fsub float %66, %68
  %70 = load float*, float** %24, align 8
  store float %69, float* %70, align 4
  %71 = load i32, i32* %15, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %63
  %74 = load float, float* %29, align 4
  br label %77

75:                                               ; preds = %63
  %76 = load float, float* %30, align 4
  br label %77

77:                                               ; preds = %75, %73
  %78 = phi float [ %74, %73 ], [ %76, %75 ]
  %79 = load float*, float** %25, align 8
  store float %78, float* %79, align 4
  %80 = load i64, i64* %21, align 8
  %81 = load i64, i64* %20, align 8
  %82 = add i64 %80, %81
  %83 = load i64*, i64** %26, align 8
  store i64 %82, i64* %83, align 8
  %84 = load float, float* %22, align 4
  %85 = load i64, i64* %18, align 8
  %86 = load i64, i64* %20, align 8
  %87 = mul i64 %85, %86
  %88 = uitofp i64 %87 to float
  %89 = fadd float %84, %88
  %90 = load float*, float** %27, align 8
  store float %89, float* %90, align 4
  %91 = load i32, i32* %15, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %77
  %94 = load float, float* %30, align 4
  br label %97

95:                                               ; preds = %77
  %96 = load float, float* %29, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi float [ %94, %93 ], [ %96, %95 ]
  %99 = load float*, float** %28, align 8
  store float %98, float* %99, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
