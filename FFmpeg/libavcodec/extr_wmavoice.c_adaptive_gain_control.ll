; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_adaptive_gain_control.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_wmavoice.c_adaptive_gain_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, float*, float*, i32, float, float*)* @adaptive_gain_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @adaptive_gain_control(float* %0, float* %1, float* %2, i32 %3, float %4, float* %5) #0 {
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca i32, align 4
  %11 = alloca float, align 4
  %12 = alloca float*, align 8
  %13 = alloca i32, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store float* %0, float** %7, align 8
  store float* %1, float** %8, align 8
  store float* %2, float** %9, align 8
  store i32 %3, i32* %10, align 4
  store float %4, float* %11, align 4
  store float* %5, float** %12, align 8
  store float 0.000000e+00, float* %14, align 4
  store float 0.000000e+00, float* %15, align 4
  %18 = load float*, float** %12, align 8
  %19 = load float, float* %18, align 4
  store float %19, float* %17, align 4
  store i32 0, i32* %13, align 4
  br label %20

20:                                               ; preds = %43, %6
  %21 = load i32, i32* %13, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %46

24:                                               ; preds = %20
  %25 = load float*, float** %9, align 8
  %26 = load i32, i32* %13, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = call i64 @fabsf(float %29)
  %31 = sitofp i64 %30 to float
  %32 = load float, float* %14, align 4
  %33 = fadd float %32, %31
  store float %33, float* %14, align 4
  %34 = load float*, float** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %34, i64 %36
  %38 = load float, float* %37, align 4
  %39 = call i64 @fabsf(float %38)
  %40 = sitofp i64 %39 to float
  %41 = load float, float* %15, align 4
  %42 = fadd float %41, %40
  store float %42, float* %15, align 4
  br label %43

43:                                               ; preds = %24
  %44 = load i32, i32* %13, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %13, align 4
  br label %20

46:                                               ; preds = %20
  %47 = load float, float* %15, align 4
  %48 = fpext float %47 to double
  %49 = fcmp oeq double %48, 0.000000e+00
  br i1 %49, label %50, label %51

50:                                               ; preds = %46
  br label %61

51:                                               ; preds = %46
  %52 = load float, float* %11, align 4
  %53 = fpext float %52 to double
  %54 = fsub double 1.000000e+00, %53
  %55 = load float, float* %14, align 4
  %56 = fpext float %55 to double
  %57 = fmul double %54, %56
  %58 = load float, float* %15, align 4
  %59 = fpext float %58 to double
  %60 = fdiv double %57, %59
  br label %61

61:                                               ; preds = %51, %50
  %62 = phi double [ 0.000000e+00, %50 ], [ %60, %51 ]
  %63 = fptrunc double %62 to float
  store float %63, float* %16, align 4
  store i32 0, i32* %13, align 4
  br label %64

64:                                               ; preds = %85, %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %65, %66
  br i1 %67, label %68, label %88

68:                                               ; preds = %64
  %69 = load float, float* %11, align 4
  %70 = load float, float* %17, align 4
  %71 = fmul float %69, %70
  %72 = load float, float* %16, align 4
  %73 = fadd float %71, %72
  store float %73, float* %17, align 4
  %74 = load float*, float** %8, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds float, float* %74, i64 %76
  %78 = load float, float* %77, align 4
  %79 = load float, float* %17, align 4
  %80 = fmul float %78, %79
  %81 = load float*, float** %7, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds float, float* %81, i64 %83
  store float %80, float* %84, align 4
  br label %85

85:                                               ; preds = %68
  %86 = load i32, i32* %13, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %13, align 4
  br label %64

88:                                               ; preds = %64
  %89 = load float, float* %17, align 4
  %90 = load float*, float** %12, align 8
  store float %89, float* %90, align 4
  ret void
}

declare dso_local i64 @fabsf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
