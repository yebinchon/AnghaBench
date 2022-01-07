; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_interpolate_lpc.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_qcelpdec.c_interpolate_lpc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, float* }

@RATE_QUARTER = common dso_local global i64 0, align 8
@RATE_OCTAVE = common dso_local global i64 0, align 8
@I_F_Q = common dso_local global i64 0, align 8
@SILENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*, float*, i32)* @interpolate_lpc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @interpolate_lpc(%struct.TYPE_3__* %0, float* %1, float* %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca float*, align 8
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [10 x float], align 16
  %10 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store float* %1, float** %6, align 8
  store float* %2, float** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @RATE_QUARTER, align 8
  %15 = icmp sge i64 %13, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %4
  %17 = load i32, i32* %8, align 4
  %18 = add nsw i32 %17, 1
  %19 = sitofp i32 %18 to double
  %20 = fmul double 2.500000e-01, %19
  %21 = fptrunc double %20 to float
  store float %21, float* %10, align 4
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @RATE_OCTAVE, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store float 6.250000e-01, float* %10, align 4
  br label %33

32:                                               ; preds = %28, %22
  store float 1.000000e+00, float* %10, align 4
  br label %33

33:                                               ; preds = %32, %31
  br label %34

34:                                               ; preds = %33, %16
  %35 = load float, float* %10, align 4
  %36 = fpext float %35 to double
  %37 = fcmp une double %36, 1.000000e+00
  br i1 %37, label %38, label %52

38:                                               ; preds = %34
  %39 = getelementptr inbounds [10 x float], [10 x float]* %9, i64 0, i64 0
  %40 = load float*, float** %6, align 8
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = load float*, float** %42, align 8
  %44 = load float, float* %10, align 4
  %45 = load float, float* %10, align 4
  %46 = fpext float %45 to double
  %47 = fsub double 1.000000e+00, %46
  %48 = call i32 @ff_weighted_vector_sumf(float* %39, float* %40, float* %43, float %44, double %47, i32 10)
  %49 = getelementptr inbounds [10 x float], [10 x float]* %9, i64 0, i64 0
  %50 = load float*, float** %7, align 8
  %51 = call i32 @lspf2lpc(float* %49, float* %50)
  br label %88

52:                                               ; preds = %34
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RATE_QUARTER, align 8
  %57 = icmp sge i64 %55, %56
  br i1 %57, label %67, label %58

58:                                               ; preds = %52
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @I_F_Q, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %71

64:                                               ; preds = %58
  %65 = load i32, i32* %8, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %71, label %67

67:                                               ; preds = %64, %52
  %68 = load float*, float** %6, align 8
  %69 = load float*, float** %7, align 8
  %70 = call i32 @lspf2lpc(float* %68, float* %69)
  br label %87

71:                                               ; preds = %64, %58
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @SILENCE, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %86

77:                                               ; preds = %71
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %86, label %80

80:                                               ; preds = %77
  %81 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %81, i32 0, i32 1
  %83 = load float*, float** %82, align 8
  %84 = load float*, float** %7, align 8
  %85 = call i32 @lspf2lpc(float* %83, float* %84)
  br label %86

86:                                               ; preds = %80, %77, %71
  br label %87

87:                                               ; preds = %86, %67
  br label %88

88:                                               ; preds = %87, %38
  ret void
}

declare dso_local i32 @ff_weighted_vector_sumf(float*, float*, float*, float, double, i32) #1

declare dso_local i32 @lspf2lpc(float*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
