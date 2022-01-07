; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-pad-test.c_test_with_mode_constant.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-pad-test.c_test_with_mode_constant.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32**, i32 }
%struct.TYPE_6__ = type { float*, i32* }

@__const.test_with_mode_constant.input = private unnamed_addr constant [12 x float] [float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01], align 16
@__const.test_with_mode_constant.expected_output = private unnamed_addr constant [36 x float] [float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 0.000000e+00, float 1.000000e+00, float 2.000000e+00, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 3.000000e+00, float 4.000000e+00, float 5.000000e+00, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 6.000000e+00, float 7.000000e+00, float 8.000000e+00, float 7.280000e+02, float 7.280000e+02, float 7.280000e+02, float 9.000000e+00, float 1.000000e+01, float 1.100000e+01, float 7.280000e+02, float 7.280000e+02], align 16
@LPMP_CONSTANT = common dso_local global i32 0, align 4
@EPSON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"at index %d, output: %f, expected_output: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_with_mode_constant to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_with_mode_constant() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_5__, align 8
  %3 = alloca [2 x %struct.TYPE_6__], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [12 x float], align 16
  %6 = alloca [36 x float], align 16
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast [12 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([12 x float]* @__const.test_with_mode_constant.input to i8*), i64 48, i1 false)
  %10 = bitcast [36 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([36 x float]* @__const.test_with_mode_constant.expected_output to i8*), i64 144, i1 false)
  %11 = load i32, i32* @LPMP_CONSTANT, align 4
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 2
  store i32 %11, i32* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 0
  store i32 728, i32* %13, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %15 = load i32**, i32*** %14, align 8
  %16 = getelementptr inbounds i32*, i32** %15, i64 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 0, i32* %23, align 4
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %25 = load i32**, i32*** %24, align 8
  %26 = getelementptr inbounds i32*, i32** %25, i64 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %30 = load i32**, i32*** %29, align 8
  %31 = getelementptr inbounds i32*, i32** %30, i64 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 1
  store i32 0, i32* %33, align 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %35 = load i32**, i32*** %34, align 8
  %36 = getelementptr inbounds i32*, i32** %35, i64 2
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 0
  store i32 0, i32* %38, align 4
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %40 = load i32**, i32*** %39, align 8
  %41 = getelementptr inbounds i32*, i32** %40, i64 2
  %42 = load i32*, i32** %41, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 0, i32* %43, align 4
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %45 = load i32**, i32*** %44, align 8
  %46 = getelementptr inbounds i32*, i32** %45, i64 3
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  store i32 1, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %2, i32 0, i32 1
  %50 = load i32**, i32*** %49, align 8
  %51 = getelementptr inbounds i32*, i32** %50, i64 3
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 2, i32* %53, align 4
  %54 = getelementptr inbounds [12 x float], [12 x float]* %5, i64 0, i64 0
  %55 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  store float* %54, float** %56, align 16
  %57 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  store i32 1, i32* %60, align 4
  %61 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 2, i32* %64, align 4
  %65 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  store i32 2, i32* %68, align 4
  %69 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 3
  store i32 3, i32* %72, align 4
  %73 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store float* null, float** %74, align 16
  %75 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %75, align 8
  %76 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 0
  %77 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %78 = call i32 @dnn_execute_layer_pad(%struct.TYPE_6__* %76, i64* %77, i32 1, %struct.TYPE_5__* %2)
  %79 = getelementptr inbounds [2 x %struct.TYPE_6__], [2 x %struct.TYPE_6__]* %3, i64 0, i64 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load float*, float** %80, align 16
  store float* %81, float** %7, align 8
  store i32 0, i32* %8, align 4
  br label %82

82:                                               ; preds = %114, %0
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = icmp ult i64 %84, 36
  br i1 %85, label %86, label %117

86:                                               ; preds = %82
  %87 = load float*, float** %7, align 8
  %88 = load i32, i32* %8, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds float, float* %87, i64 %89
  %91 = load float, float* %90, align 4
  %92 = load i32, i32* %8, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [36 x float], [36 x float]* %6, i64 0, i64 %93
  %95 = load float, float* %94, align 4
  %96 = fsub float %91, %95
  %97 = call i64 @fabs(float %96)
  %98 = load i64, i64* @EPSON, align 8
  %99 = icmp sgt i64 %97, %98
  br i1 %99, label %100, label %113

100:                                              ; preds = %86
  %101 = load i32, i32* %8, align 4
  %102 = load float*, float** %7, align 8
  %103 = load i32, i32* %8, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds float, float* %102, i64 %104
  %106 = load float, float* %105, align 4
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [36 x float], [36 x float]* %6, i64 0, i64 %108
  %110 = load float, float* %109, align 4
  %111 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %101, float %106, float %110)
  %112 = call i32 @av_freep(float** %7)
  store i32 1, i32* %1, align 4
  br label %119

113:                                              ; preds = %86
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %82

117:                                              ; preds = %82
  %118 = call i32 @av_freep(float** %7)
  store i32 0, i32* %1, align 4
  br label %119

119:                                              ; preds = %117, %100
  %120 = load i32, i32* %1, align 4
  ret i32 %120
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
