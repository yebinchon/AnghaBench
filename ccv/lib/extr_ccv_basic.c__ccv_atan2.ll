; ModuleID = '/home/carl/AnghaBench/ccv/lib/extr_ccv_basic.c__ccv_atan2.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/extr_ccv_basic.c__ccv_atan2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CCV_PI = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, float*, i32)* @_ccv_atan2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_atan2(float* %0, float* %1, float* %2, float* %3, i32 %4) #0 {
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store float* %0, float** %6, align 8
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %18 = load double, double* @CCV_PI, align 8
  %19 = fdiv double 1.800000e+02, %18
  %20 = fptrunc double %19 to float
  store float %20, float* %12, align 4
  br label %21

21:                                               ; preds = %110, %5
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %113

25:                                               ; preds = %21
  %26 = load float*, float** %6, align 8
  %27 = load i32, i32* %11, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds float, float* %26, i64 %28
  %30 = load float, float* %29, align 4
  store float %30, float* %13, align 4
  %31 = load float*, float** %7, align 8
  %32 = load i32, i32* %11, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds float, float* %31, i64 %33
  %35 = load float, float* %34, align 4
  store float %35, float* %14, align 4
  %36 = load float, float* %13, align 4
  %37 = load float, float* %13, align 4
  %38 = fmul float %36, %37
  store float %38, float* %16, align 4
  %39 = load float, float* %14, align 4
  %40 = load float, float* %14, align 4
  %41 = fmul float %39, %40
  store float %41, float* %17, align 4
  %42 = load float, float* %17, align 4
  %43 = load float, float* %16, align 4
  %44 = fcmp ole float %42, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %25
  %46 = load float, float* %13, align 4
  %47 = load float, float* %14, align 4
  %48 = fmul float %46, %47
  %49 = load float, float* %16, align 4
  %50 = load float, float* %17, align 4
  %51 = fmul float 0x3FD1EB8520000000, %50
  %52 = fadd float %49, %51
  %53 = fadd float %52, 0x3EB0C6F7A0000000
  %54 = fdiv float %48, %53
  %55 = load float, float* %13, align 4
  %56 = fcmp olt float %55, 0.000000e+00
  br i1 %56, label %57, label %59

57:                                               ; preds = %45
  %58 = load double, double* @CCV_PI, align 8
  br label %68

59:                                               ; preds = %45
  %60 = load float, float* %14, align 4
  %61 = fcmp oge float %60, 0.000000e+00
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  br label %66

63:                                               ; preds = %59
  %64 = load double, double* @CCV_PI, align 8
  %65 = fmul double %64, 2.000000e+00
  br label %66

66:                                               ; preds = %63, %62
  %67 = phi double [ 0.000000e+00, %62 ], [ %65, %63 ]
  br label %68

68:                                               ; preds = %66, %57
  %69 = phi double [ %58, %57 ], [ %67, %66 ]
  %70 = fptrunc double %69 to float
  %71 = fadd float %54, %70
  store float %71, float* %15, align 4
  br label %94

72:                                               ; preds = %25
  %73 = load float, float* %14, align 4
  %74 = fcmp oge float %73, 0.000000e+00
  br i1 %74, label %75, label %78

75:                                               ; preds = %72
  %76 = load double, double* @CCV_PI, align 8
  %77 = fmul double %76, 5.000000e-01
  br label %81

78:                                               ; preds = %72
  %79 = load double, double* @CCV_PI, align 8
  %80 = fmul double %79, 1.500000e+00
  br label %81

81:                                               ; preds = %78, %75
  %82 = phi double [ %77, %75 ], [ %80, %78 ]
  %83 = fptrunc double %82 to float
  %84 = load float, float* %13, align 4
  %85 = load float, float* %14, align 4
  %86 = fmul float %84, %85
  %87 = load float, float* %17, align 4
  %88 = load float, float* %16, align 4
  %89 = fmul float 0x3FD1EB8520000000, %88
  %90 = fadd float %87, %89
  %91 = fadd float %90, 0x3EB0C6F7A0000000
  %92 = fdiv float %86, %91
  %93 = fsub float %83, %92
  store float %93, float* %15, align 4
  br label %94

94:                                               ; preds = %81, %68
  %95 = load float, float* %15, align 4
  %96 = load float, float* %12, align 4
  %97 = fmul float %95, %96
  %98 = load float*, float** %8, align 8
  %99 = load i32, i32* %11, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds float, float* %98, i64 %100
  store float %97, float* %101, align 4
  %102 = load float, float* %16, align 4
  %103 = load float, float* %17, align 4
  %104 = fadd float %102, %103
  %105 = call float @sqrtf(float %104) #2
  %106 = load float*, float** %9, align 8
  %107 = load i32, i32* %11, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds float, float* %106, i64 %108
  store float %105, float* %109, align 4
  br label %110

110:                                              ; preds = %94
  %111 = load i32, i32* %11, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %11, align 4
  br label %21

113:                                              ; preds = %21
  ret void
}

; Function Attrs: nounwind
declare dso_local float @sqrtf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
