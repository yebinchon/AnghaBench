; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-pad-test.c_test_with_mode_symmetric.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-pad-test.c_test_with_mode_symmetric.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32**, i32 }
%struct.TYPE_6__ = type { float*, i32* }

@__const.test_with_mode_symmetric.input = private unnamed_addr constant [48 x float] [float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01], align 16
@__const.test_with_mode_symmetric.expected_output = private unnamed_addr constant [243 x float] [float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.600000e+01, float 3.700000e+01, float 3.800000e+01, float 3.900000e+01, float 4.000000e+01, float 4.100000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.500000e+01, float 4.600000e+01, float 4.700000e+01, float 4.200000e+01, float 4.300000e+01, float 4.400000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.400000e+01, float 2.500000e+01, float 2.600000e+01, float 2.700000e+01, float 2.800000e+01, float 2.900000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.300000e+01, float 3.400000e+01, float 3.500000e+01, float 3.000000e+01, float 3.100000e+01, float 3.200000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.200000e+01, float 1.300000e+01, float 1.400000e+01, float 1.500000e+01, float 1.600000e+01, float 1.700000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 2.100000e+01, float 2.200000e+01, float 2.300000e+01, float 1.800000e+01, float 1.900000e+01, float 2.000000e+01], align 16
@LPMP_SYMMETRIC = common dso_local global i32 0, align 4
@EPSON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"at index %d, output: %f, expected_output: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_with_mode_symmetric to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_with_mode_symmetric() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca [2 x %struct.TYPE_6__], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [48 x float], align 16
  %6 = alloca [243 x float], align 16
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast [48 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([48 x float]* @__const.test_with_mode_symmetric.input to i8*), i64 192, i1 false)
  %10 = bitcast [243 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([243 x float]* @__const.test_with_mode_symmetric.expected_output to i8*), i64 972, i1 false)
  %11 = load i32, i32* @LPMP_SYMMETRIC, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %14 = load i32**, i32*** %13, align 8
  %15 = getelementptr inbounds i32*, i32** %14, i64 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %19 = load i32**, i32*** %18, align 8
  %20 = getelementptr inbounds i32*, i32** %19, i64 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %24 = load i32**, i32*** %23, align 8
  %25 = getelementptr inbounds i32*, i32** %24, i64 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 2, i32* %27, align 4
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %29 = load i32**, i32*** %28, align 8
  %30 = getelementptr inbounds i32*, i32** %29, i64 1
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 3, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %34 = load i32**, i32*** %33, align 8
  %35 = getelementptr inbounds i32*, i32** %34, i64 2
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 3, i32* %37, align 4
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = getelementptr inbounds i32*, i32** %39, i64 2
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  store i32 2, i32* %42, align 4
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %44 = load i32**, i32*** %43, align 8
  %45 = getelementptr inbounds i32*, i32** %44, i64 3
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 0, i32* %47, align 4
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  %49 = load i32**, i32*** %48, align 8
  %50 = getelementptr inbounds i32*, i32** %49, i64 3
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds [48 x float], [48 x float]* %5, i64 0, i64 0
  %54 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store float* %53, float** %55, align 16
  %56 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 1, i32* %59, align 4
  %60 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 4, i32* %63, align 4
  %64 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  store i32 4, i32* %67, align 4
  %68 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 3
  store i32 3, i32* %71, align 4
  %72 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 1
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  store float* null, float** %73, align 16
  %74 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %74, align 8
  %75 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %76 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %77 = call i32 @dnn_execute_layer_pad(%struct.TYPE_6__* %75, i64* %76, i32 1, %struct.TYPE_5__* %2)
  %78 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 1
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load float*, float** %79, align 16
  store float* %80, float** %7, align 8
  store i32 0, i32* %8, align 4
  br label %81

81:                                               ; preds = %113, %0
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = icmp ult i64 %83, 243
  br i1 %84, label %85, label %116

85:                                               ; preds = %81
  %86 = load float*, float** %7, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds float, float* %86, i64 %88
  %90 = load float, float* %89, align 4
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [243 x float], [243 x float]* %6, i64 0, i64 %92
  %94 = load float, float* %93, align 4
  %95 = fsub float %90, %94
  %96 = call i64 @fabs(float %95)
  %97 = load i64, i64* @EPSON, align 8
  %98 = icmp sgt i64 %96, %97
  br i1 %98, label %99, label %112

99:                                               ; preds = %85
  %100 = load i32, i32* %8, align 4
  %101 = load float*, float** %7, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds float, float* %101, i64 %103
  %105 = load float, float* %104, align 4
  %106 = load i32, i32* %8, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds [243 x float], [243 x float]* %6, i64 0, i64 %107
  %109 = load float, float* %108, align 4
  %110 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %100, float %105, float %109)
  %111 = call i32 @av_freep(float** %7)
  store i32 1, i32* %1, align 4
  br label %118

112:                                              ; preds = %85
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %8, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %8, align 4
  br label %81

116:                                              ; preds = %81
  %117 = call i32 @av_freep(float** %7)
  store i32 0, i32* %1, align 4
  br label %118

118:                                              ; preds = %116, %99
  %119 = load i32, i32* %1, align 4
  ret i32 %119
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dnn_execute_layer_pad(%struct.TYPE_6__*, i64*, i32, %struct.TYPE_5__*) #2

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
