; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_addons.c__ccv_cnnp_convolution_init_states.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_addons.c__ccv_cnnp_convolution_init_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_5__, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@ccv_nnc_no_hint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32 (i8*, i32, i32, i32, i32, i64)*, i8*)* @_ccv_cnnp_convolution_init_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_convolution_init_states(i32* %0, i32* %1, i32 (i8*, i32, i32, i32, i32, i64)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i8*, i32, i32, i32, i32, i64)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 (i8*, i32, i32, i32, i32, i64)* %2, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  store i8* %3, i8** %8, align 8
  %15 = load i32*, i32** %5, align 8
  %16 = bitcast i32* %15 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %16, %struct.TYPE_6__** %9, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 2
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @ccv_nnc_tensor_symbol_params(i32* %17, i64 %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @ccv_nnc_tensor_get_n(i32 %23)
  %25 = call i32 @ccv_max(i32 %24, i32 1)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @ccv_nnc_tensor_count(i32 %26)
  store i32 %27, i32* %12, align 4
  %28 = call float @sqrtf(i32 2)
  %29 = load i32, i32* %12, align 4
  %30 = load i32, i32* %11, align 4
  %31 = sdiv i32 %29, %30
  %32 = call float @sqrtf(i32 %31)
  %33 = fdiv float %28, %32
  store float %33, float* %13, align 4
  %34 = call float @sqrtf(i32 3)
  %35 = load float, float* %13, align 4
  %36 = fmul float %34, %35
  store float %36, float* %14, align 4
  %37 = load i32 (i8*, i32, i32, i32, i32, i64)*, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  %38 = load i8*, i8** %8, align 8
  %39 = load float, float* %14, align 4
  %40 = fneg float %39
  %41 = load float, float* %14, align 4
  %42 = call i32 @CMD_RANDOM_UNIFORM_FORWARD(float %40, float %41)
  %43 = load i32, i32* @ccv_nnc_no_hint, align 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 2
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = call i32 %37(i8* %38, i32 %42, i32 %43, i32 0, i32 0, i64 %47)
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %64

54:                                               ; preds = %4
  %55 = load i32 (i8*, i32, i32, i32, i32, i64)*, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  %56 = load i8*, i8** %8, align 8
  %57 = call i32 @CMD_SET_FORWARD(i32 0)
  %58 = load i32, i32* @ccv_nnc_no_hint, align 4
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 %55(i8* %56, i32 %57, i32 %58, i32 0, i32 0, i64 %62)
  br label %64

64:                                               ; preds = %54, %4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %80

70:                                               ; preds = %64
  %71 = load i32 (i8*, i32, i32, i32, i32, i64)*, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  %72 = load i8*, i8** %8, align 8
  %73 = call i32 @CMD_RANDOM_UNIFORM_FORWARD(float 0.000000e+00, float 1.000000e+00)
  %74 = load i32, i32* @ccv_nnc_no_hint, align 4
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 %71(i8* %72, i32 %73, i32 %74, i32 0, i32 0, i64 %78)
  br label %80

80:                                               ; preds = %70, %64
  ret void
}

declare dso_local i32 @ccv_nnc_tensor_symbol_params(i32*, i64) #1

declare dso_local i32 @ccv_max(i32, i32) #1

declare dso_local i32 @ccv_nnc_tensor_get_n(i32) #1

declare dso_local i32 @ccv_nnc_tensor_count(i32) #1

declare dso_local float @sqrtf(i32) #1

declare dso_local i32 @CMD_RANDOM_UNIFORM_FORWARD(float, float) #1

declare dso_local i32 @CMD_SET_FORWARD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
