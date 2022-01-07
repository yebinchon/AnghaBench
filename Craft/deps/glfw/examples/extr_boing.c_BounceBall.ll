; ModuleID = '/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_BounceBall.c'
source_filename = "/home/carl/AnghaBench/Craft/deps/glfw/examples/extr_boing.c_BounceBall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@override_pos = common dso_local global i64 0, align 8
@ball_x = common dso_local global i32 0, align 4
@BOUNCE_WIDTH = common dso_local global i32 0, align 4
@WALL_R_OFFSET = common dso_local global i32 0, align 4
@RAND_MAX = common dso_local global i64 0, align 8
@ball_x_inc = common dso_local global float 0.000000e+00, align 4
@deg_rot_y_inc = common dso_local global i32 0, align 4
@BOUNCE_HEIGHT = common dso_local global i32 0, align 4
@WALL_L_OFFSET = common dso_local global i32 0, align 4
@ball_y = common dso_local global i32 0, align 4
@ball_y_inc = common dso_local global float 0.000000e+00, align 4
@ANIMATION_SPEED = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BounceBall(double %0) #0 {
  %2 = alloca double, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  store double %0, double* %2, align 8
  %5 = load i64, i64* @override_pos, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %121

8:                                                ; preds = %1
  %9 = load i32, i32* @ball_x, align 4
  %10 = load i32, i32* @BOUNCE_WIDTH, align 4
  %11 = sdiv i32 %10, 2
  %12 = load i32, i32* @WALL_R_OFFSET, align 4
  %13 = add nsw i32 %11, %12
  %14 = icmp sgt i32 %9, %13
  br i1 %14, label %15, label %25

15:                                               ; preds = %8
  %16 = call i64 (...) @rand()
  %17 = sitofp i64 %16 to float
  %18 = fmul float 7.500000e-01, %17
  %19 = load i64, i64* @RAND_MAX, align 8
  %20 = sitofp i64 %19 to float
  %21 = fdiv float %18, %20
  %22 = fsub float -5.000000e-01, %21
  store float %22, float* @ball_x_inc, align 4
  %23 = load i32, i32* @deg_rot_y_inc, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* @deg_rot_y_inc, align 4
  br label %25

25:                                               ; preds = %15, %8
  %26 = load i32, i32* @ball_x, align 4
  %27 = load i32, i32* @BOUNCE_HEIGHT, align 4
  %28 = sdiv i32 %27, 2
  %29 = load i32, i32* @WALL_L_OFFSET, align 4
  %30 = add nsw i32 %28, %29
  %31 = sub nsw i32 0, %30
  %32 = icmp slt i32 %26, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = call i64 (...) @rand()
  %35 = sitofp i64 %34 to float
  %36 = fmul float 7.500000e-01, %35
  %37 = load i64, i64* @RAND_MAX, align 8
  %38 = sitofp i64 %37 to float
  %39 = fdiv float %36, %38
  %40 = fadd float 5.000000e-01, %39
  store float %40, float* @ball_x_inc, align 4
  %41 = load i32, i32* @deg_rot_y_inc, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* @deg_rot_y_inc, align 4
  br label %43

43:                                               ; preds = %33, %25
  %44 = load i32, i32* @ball_y, align 4
  %45 = load i32, i32* @BOUNCE_HEIGHT, align 4
  %46 = sdiv i32 %45, 2
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = call i64 (...) @rand()
  %50 = sitofp i64 %49 to float
  %51 = fmul float 1.000000e+00, %50
  %52 = load i64, i64* @RAND_MAX, align 8
  %53 = sitofp i64 %52 to float
  %54 = fdiv float %51, %53
  %55 = fsub float -7.500000e-01, %54
  store float %55, float* @ball_y_inc, align 4
  br label %56

56:                                               ; preds = %48, %43
  %57 = load i32, i32* @ball_y, align 4
  %58 = sitofp i32 %57 to double
  %59 = load i32, i32* @BOUNCE_HEIGHT, align 4
  %60 = sub nsw i32 0, %59
  %61 = sdiv i32 %60, 2
  %62 = sitofp i32 %61 to double
  %63 = fmul double %62, 8.500000e-01
  %64 = fcmp olt double %58, %63
  br i1 %64, label %65, label %73

65:                                               ; preds = %56
  %66 = call i64 (...) @rand()
  %67 = sitofp i64 %66 to float
  %68 = fmul float 1.000000e+00, %67
  %69 = load i64, i64* @RAND_MAX, align 8
  %70 = sitofp i64 %69 to float
  %71 = fdiv float %68, %70
  %72 = fadd float 7.500000e-01, %71
  store float %72, float* @ball_y_inc, align 4
  br label %73

73:                                               ; preds = %65, %56
  %74 = load float, float* @ball_x_inc, align 4
  %75 = load double, double* %2, align 8
  %76 = fptrunc double %75 to float
  %77 = load float, float* @ANIMATION_SPEED, align 4
  %78 = fmul float %76, %77
  %79 = fmul float %74, %78
  %80 = load i32, i32* @ball_x, align 4
  %81 = sitofp i32 %80 to float
  %82 = fadd float %81, %79
  %83 = fptosi float %82 to i32
  store i32 %83, i32* @ball_x, align 4
  %84 = load float, float* @ball_y_inc, align 4
  %85 = load double, double* %2, align 8
  %86 = fptrunc double %85 to float
  %87 = load float, float* @ANIMATION_SPEED, align 4
  %88 = fmul float %86, %87
  %89 = fmul float %84, %88
  %90 = load i32, i32* @ball_y, align 4
  %91 = sitofp i32 %90 to float
  %92 = fadd float %91, %89
  %93 = fptosi float %92 to i32
  store i32 %93, i32* @ball_y, align 4
  %94 = load float, float* @ball_y_inc, align 4
  %95 = fcmp olt float %94, 0.000000e+00
  br i1 %95, label %96, label %97

96:                                               ; preds = %73
  store float -1.000000e+00, float* %3, align 4
  br label %98

97:                                               ; preds = %73
  store float 1.000000e+00, float* %3, align 4
  br label %98

98:                                               ; preds = %97, %96
  %99 = load i32, i32* @ball_y, align 4
  %100 = load i32, i32* @BOUNCE_HEIGHT, align 4
  %101 = sdiv i32 %100, 2
  %102 = add nsw i32 %99, %101
  %103 = mul nsw i32 %102, 90
  %104 = load i32, i32* @BOUNCE_HEIGHT, align 4
  %105 = sdiv i32 %103, %104
  %106 = sitofp i32 %105 to float
  store float %106, float* %4, align 4
  %107 = load float, float* %4, align 4
  %108 = fcmp ogt float %107, 8.000000e+01
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  store float 8.000000e+01, float* %4, align 4
  br label %110

110:                                              ; preds = %109, %98
  %111 = load float, float* %4, align 4
  %112 = fcmp olt float %111, 1.000000e+01
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store float 1.000000e+01, float* %4, align 4
  br label %114

114:                                              ; preds = %113, %110
  %115 = load float, float* %3, align 4
  %116 = fmul float %115, 4.000000e+00
  %117 = load float, float* %4, align 4
  %118 = call i64 @sin_deg(float %117)
  %119 = sitofp i64 %118 to float
  %120 = fmul float %116, %119
  store float %120, float* @ball_y_inc, align 4
  br label %121

121:                                              ; preds = %114, %7
  ret void
}

declare dso_local i64 @rand(...) #1

declare dso_local i64 @sin_deg(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
