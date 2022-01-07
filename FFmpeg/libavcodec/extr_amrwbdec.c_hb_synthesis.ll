; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_hb_synthesis.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_amrwbdec.c_hb_synthesis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, float**, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32 (float*, float*, float*, i32, i32)* }
%struct.TYPE_5__ = type { i32 (float*, float*, float*, i64, i64, i32)* }

@LP_ORDER_16k = common dso_local global i32 0, align 4
@MODE_6k60 = common dso_local global i32 0, align 4
@isfp_inter = common dso_local global i64* null, align 8
@LP_ORDER = common dso_local global i32 0, align 4
@AMRWB_SFR_SIZE_16k = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, float*, float*, float*, float*)* @hb_synthesis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hb_synthesis(%struct.TYPE_7__* %0, i32 %1, float* %2, float* %3, float* %4, float* %5) #0 {
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float*, align 8
  %12 = alloca float*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store i32 %1, i32* %8, align 4
  store float* %2, float** %9, align 8
  store float* %3, float** %10, align 8
  store float* %4, float** %11, align 8
  store float* %5, float** %12, align 8
  %19 = load i32, i32* @LP_ORDER_16k, align 4
  %20 = zext i32 %19 to i64
  %21 = call i8* @llvm.stacksave()
  store i8* %21, i8** %13, align 8
  %22 = alloca float, i64 %20, align 16
  store i64 %20, i64* %14, align 8
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %15, align 4
  %27 = load i32, i32* @MODE_6k60, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %74

29:                                               ; preds = %6
  %30 = load i32, i32* @LP_ORDER_16k, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %16, align 8
  %33 = alloca float, i64 %31, align 16
  store i64 %31, i64* %17, align 8
  %34 = load i32, i32* @LP_ORDER_16k, align 4
  %35 = zext i32 %34 to i64
  %36 = alloca double, i64 %35, align 16
  store i64 %35, i64* %18, align 8
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32 (float*, float*, float*, i64, i64, i32)*, i32 (float*, float*, float*, i64, i64, i32)** %39, align 8
  %41 = load float*, float** %12, align 8
  %42 = load float*, float** %11, align 8
  %43 = load i64*, i64** @isfp_inter, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %43, i64 %45
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** @isfp_inter, align 8
  %49 = load i32, i32* %8, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = fsub double 1.000000e+00, %53
  %55 = fptosi double %54 to i64
  %56 = load i32, i32* @LP_ORDER, align 4
  %57 = call i32 %40(float* %33, float* %41, float* %42, i64 %47, i64 %55, i32 %56)
  %58 = call i32 @extrapolate_isf(float* %33)
  %59 = load i32, i32* @LP_ORDER_16k, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds float, float* %33, i64 %61
  %63 = load float, float* %62, align 4
  %64 = fpext float %63 to double
  %65 = fmul double %64, 2.000000e+00
  %66 = fptrunc double %65 to float
  store float %66, float* %62, align 4
  %67 = load i32, i32* @LP_ORDER_16k, align 4
  %68 = call i32 @ff_acelp_lsf2lspd(double* %36, float* %33, i32 %67)
  %69 = load i32, i32* @LP_ORDER_16k, align 4
  %70 = call i32 @ff_amrwb_lsp2lpc(double* %36, float* %22, i32 %69)
  %71 = load i32, i32* @LP_ORDER_16k, align 4
  %72 = call i32 @lpc_weighting(float* %22, float* %22, double 9.000000e-01, i32 %71)
  %73 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %73)
  br label %84

74:                                               ; preds = %6
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 1
  %77 = load float**, float*** %76, align 8
  %78 = load i32, i32* %8, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds float*, float** %77, i64 %79
  %81 = load float*, float** %80, align 8
  %82 = load i32, i32* @LP_ORDER, align 4
  %83 = call i32 @lpc_weighting(float* %22, float* %81, double 6.000000e-01, i32 %82)
  br label %84

84:                                               ; preds = %74, %29
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32 (float*, float*, float*, i32, i32)*, i32 (float*, float*, float*, i32, i32)** %87, align 8
  %89 = load float*, float** %9, align 8
  %90 = load float*, float** %10, align 8
  %91 = load i32, i32* @AMRWB_SFR_SIZE_16k, align 4
  %92 = load i32, i32* %15, align 4
  %93 = load i32, i32* @MODE_6k60, align 4
  %94 = icmp eq i32 %92, %93
  br i1 %94, label %95, label %97

95:                                               ; preds = %84
  %96 = load i32, i32* @LP_ORDER_16k, align 4
  br label %99

97:                                               ; preds = %84
  %98 = load i32, i32* @LP_ORDER, align 4
  br label %99

99:                                               ; preds = %97, %95
  %100 = phi i32 [ %96, %95 ], [ %98, %97 ]
  %101 = call i32 %88(float* %89, float* %22, float* %90, i32 %91, i32 %100)
  %102 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %102)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @extrapolate_isf(float*) #2

declare dso_local i32 @ff_acelp_lsf2lspd(double*, float*, i32) #2

declare dso_local i32 @ff_amrwb_lsp2lpc(double*, float*, i32) #2

declare dso_local i32 @lpc_weighting(float*, float*, double, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
