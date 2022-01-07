; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcWaveColor.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_shade_calc.c_RB_CalcWaveColor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { float }
%struct.TYPE_6__ = type { i64, float, i32, i32, float }

@GF_NOISE = common dso_local global i64 0, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@tr = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcWaveColor(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca float, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [4 x i32], align 16
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to i32*
  store i32* %11, i32** %8, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @GF_NOISE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %36

17:                                               ; preds = %2
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 1
  %20 = load float, float* %19, align 8
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 4
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %21, %24
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = mul nsw i32 %25, %28
  %30 = call float @R_NoiseGet4f(i32 0, i32 0, i32 0, i32 %29)
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 4
  %33 = load float, float* %32, align 4
  %34 = fmul float %30, %33
  %35 = fadd float %20, %34
  store float %35, float* %7, align 4
  br label %41

36:                                               ; preds = %2
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = call float @EvalWaveForm(%struct.TYPE_6__* %37)
  %39 = load float, float* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @tr, i32 0, i32 0), align 4
  %40 = fmul float %38, %39
  store float %40, float* %7, align 4
  br label %41

41:                                               ; preds = %36, %17
  %42 = load float, float* %7, align 4
  %43 = fcmp olt float %42, 0.000000e+00
  br i1 %43, label %44, label %45

44:                                               ; preds = %41
  store float 0.000000e+00, float* %7, align 4
  br label %50

45:                                               ; preds = %41
  %46 = load float, float* %7, align 4
  %47 = fcmp ogt float %46, 1.000000e+00
  br i1 %47, label %48, label %49

48:                                               ; preds = %45
  store float 1.000000e+00, float* %7, align 4
  br label %49

49:                                               ; preds = %48, %45
  br label %50

50:                                               ; preds = %49, %44
  %51 = load float, float* %7, align 4
  %52 = fmul float 2.550000e+02, %51
  %53 = fptosi float %52 to i32
  %54 = call i32 @myftol(i32 %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %55, i32* %56, align 8
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %55, i32* %57, align 4
  %58 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %55, i32* %58, align 16
  %59 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 255, i32* %59, align 4
  %60 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %61 = load i32, i32* %60, align 16
  store i32 %61, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %62

62:                                               ; preds = %69, %50
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %62
  %67 = load i32, i32* %6, align 4
  %68 = load i32*, i32** %8, align 8
  store i32 %67, i32* %68, align 4
  br label %69

69:                                               ; preds = %66
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  %72 = load i32*, i32** %8, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %8, align 8
  br label %62

74:                                               ; preds = %62
  ret void
}

declare dso_local float @R_NoiseGet4f(i32, i32, i32, i32) #1

declare dso_local float @EvalWaveForm(%struct.TYPE_6__*) #1

declare dso_local i32 @myftol(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
