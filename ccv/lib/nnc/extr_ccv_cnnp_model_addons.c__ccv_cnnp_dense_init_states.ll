; ModuleID = '/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_addons.c__ccv_cnnp_dense_init_states.c'
source_filename = "/home/carl/AnghaBench/ccv/lib/nnc/extr_ccv_cnnp_model_addons.c__ccv_cnnp_dense_init_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_8__, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { i32* }

@ccv_nnc_no_hint = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32 (i8*, i32, i32, i32, i32, i64)*, i8*)* @_ccv_cnnp_dense_init_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ccv_cnnp_dense_init_states(i32* %0, i32* %1, i32 (i8*, i32, i32, i32, i32, i64)* %2, i8* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32 (i8*, i32, i32, i32, i32, i64)*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  %10 = alloca %struct.TYPE_7__, align 8
  %11 = alloca i32, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 (i8*, i32, i32, i32, i32, i64)* %2, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  store i8* %3, i8** %8, align 8
  %14 = load i32*, i32** %5, align 8
  %15 = bitcast i32* %14 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %15, %struct.TYPE_9__** %9, align 8
  %16 = load i32*, i32** %6, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i32* @ccv_nnc_tensor_symbol_params(i32* %16, i64 %20)
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  store i32* %21, i32** %22, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %11, align 4
  %27 = call float @sqrtf(i32 2)
  %28 = load i32, i32* %11, align 4
  %29 = call float @sqrtf(i32 %28)
  %30 = fdiv float %27, %29
  store float %30, float* %12, align 4
  %31 = call float @sqrtf(i32 3)
  %32 = load float, float* %12, align 4
  %33 = fmul float %31, %32
  store float %33, float* %13, align 4
  %34 = load i32 (i8*, i32, i32, i32, i32, i64)*, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = load float, float* %13, align 4
  %37 = fneg float %36
  %38 = load float, float* %13, align 4
  %39 = call i32 @CMD_RANDOM_UNIFORM_FORWARD(float %37, float %38)
  %40 = load i32, i32* @ccv_nnc_no_hint, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 %34(i8* %35, i32 %39, i32 %40, i32 0, i32 0, i64 %44)
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %4
  %52 = load i32 (i8*, i32, i32, i32, i32, i64)*, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = call i32 @CMD_SET_FORWARD(i32 0)
  %55 = load i32, i32* @ccv_nnc_no_hint, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = call i32 %52(i8* %53, i32 %54, i32 %55, i32 0, i32 0, i64 %59)
  br label %61

61:                                               ; preds = %51, %4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %77

67:                                               ; preds = %61
  %68 = load i32 (i8*, i32, i32, i32, i32, i64)*, i32 (i8*, i32, i32, i32, i32, i64)** %7, align 8
  %69 = load i8*, i8** %8, align 8
  %70 = call i32 @CMD_RANDOM_UNIFORM_FORWARD(float 0.000000e+00, float 1.000000e+00)
  %71 = load i32, i32* @ccv_nnc_no_hint, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32 %68(i8* %69, i32 %70, i32 %71, i32 0, i32 0, i64 %75)
  br label %77

77:                                               ; preds = %67, %61
  ret void
}

declare dso_local i32* @ccv_nnc_tensor_symbol_params(i32*, i64) #1

declare dso_local float @sqrtf(i32) #1

declare dso_local i32 @CMD_RANDOM_UNIFORM_FORWARD(float, float) #1

declare dso_local i32 @CMD_SET_FORWARD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
