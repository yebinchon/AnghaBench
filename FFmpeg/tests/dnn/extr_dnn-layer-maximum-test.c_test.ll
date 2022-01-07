; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-maximum-test.c_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-maximum-test.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { double }
%struct.TYPE_7__ = type { float*, i32* }

@__const.test.input = private unnamed_addr constant [6 x float] [float -3.000000e+00, float 2.500000e+00, float 2.000000e+00, float 0xC000CCCCC0000000, float 0x401F333340000000, float 1.000000e+02], align 16
@EPSON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"at index %d, output: %f, expected_output: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_8__, align 8
  %3 = alloca [2 x %struct.TYPE_7__], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [6 x float], align 16
  %6 = alloca float*, align 8
  %7 = alloca i32, align 4
  %8 = alloca float, align 4
  %9 = bitcast [6 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([6 x float]* @__const.test.input to i8*), i64 24, i1 false)
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store double 2.300000e+00, double* %11, align 8
  %12 = getelementptr inbounds [6 x float], [6 x float]* %5, i64 0, i64 0
  %13 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 0
  store float* %12, float** %14, align 16
  %15 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 2
  store i32 2, i32* %26, align 4
  %27 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 3, i32* %30, align 4
  %31 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  store float* null, float** %32, align 16
  %33 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %33, align 8
  %34 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 0
  %35 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %36 = call i32 @dnn_execute_layer_maximum(%struct.TYPE_7__* %34, i64* %35, i32 1, %struct.TYPE_8__* %2)
  %37 = getelementptr inbounds [2 x %struct.TYPE_7__], [2 x %struct.TYPE_7__]* %3, i64 0, i64 1
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 16
  store float* %39, float** %6, align 8
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %88, %0
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 6
  br i1 %43, label %44, label %91

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [6 x float], [6 x float]* %5, i64 0, i64 %46
  %48 = load float, float* %47, align 4
  %49 = fpext float %48 to double
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load double, double* %51, align 8
  %53 = fcmp ogt double %49, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [6 x float], [6 x float]* %5, i64 0, i64 %56
  %58 = load float, float* %57, align 4
  %59 = fpext float %58 to double
  br label %64

60:                                               ; preds = %44
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %2, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = load double, double* %62, align 8
  br label %64

64:                                               ; preds = %60, %54
  %65 = phi double [ %59, %54 ], [ %63, %60 ]
  %66 = fptrunc double %65 to float
  store float %66, float* %8, align 4
  %67 = load float*, float** %6, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds float, float* %67, i64 %69
  %71 = load float, float* %70, align 4
  %72 = load float, float* %8, align 4
  %73 = fsub float %71, %72
  %74 = call i64 @fabs(float %73)
  %75 = load i64, i64* @EPSON, align 8
  %76 = icmp sgt i64 %74, %75
  br i1 %76, label %77, label %87

77:                                               ; preds = %64
  %78 = load i32, i32* %7, align 4
  %79 = load float*, float** %6, align 8
  %80 = load i32, i32* %7, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds float, float* %79, i64 %81
  %83 = load float, float* %82, align 4
  %84 = load float, float* %8, align 4
  %85 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %78, float %83, float %84)
  %86 = call i32 @av_freep(float** %6)
  store i32 1, i32* %1, align 4
  br label %93

87:                                               ; preds = %64
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %7, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %7, align 4
  br label %40

91:                                               ; preds = %40
  %92 = call i32 @av_freep(float** %6)
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %91, %77
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dnn_execute_layer_maximum(%struct.TYPE_7__*, i64*, i32, %struct.TYPE_8__*) #2

declare dso_local i64 @fabs(float) #2

declare dso_local i32 @printf(i8*, i32, float, float) #2

declare dso_local i32 @av_freep(float**) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
