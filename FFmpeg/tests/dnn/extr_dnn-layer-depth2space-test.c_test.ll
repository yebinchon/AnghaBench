; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-depth2space-test.c_test.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-depth2space-test.c_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { float*, i32* }

@__const.test.input = private unnamed_addr constant [60 x float] [float 0x3FB90390C0000000, float 0x3FE4471CE0000000, float 0x3FE074AAE0000000, float 0x3FE9AFE340000000, float 0x3FCB9321C0000000, float 0x3FBF024BC0000000, float 0x3FED3EF800000000, float 0x3FD8E25600000000, float 0x3FE2B8AFC0000000, float 0x3FEDCBFB00000000, float 0x3FD7209F40000000, float 0x3FE158A7C0000000, float 0x3FE334F220000000, float 0x3FDCAC2420000000, float 0x3FE744AAE0000000, float 0x3FD8C37360000000, float 0x3FE0764BE0000000, float 0x3FE61D5D40000000, float 0x3FE3A79C40000000, float 0x3FE3FFFE40000000, float 0x3FDD397CE0000000, float 0x3FC8FD7400000000, float 0x3FCFCB3AE0000000, float 0x3FE495A620000000, float 0x3FE18E07E0000000, float 0x3FDD153A80000000, float 0x3FE0F0A3C0000000, float 0x3FD37B43E0000000, float 0x3FBE9EFC60000000, float 0x3FD29F28E0000000, float 0x3FEF6525A0000000, float 0x3FEC702C00000000, float 0x3FE38F2500000000, float 0x3FEC53F420000000, float 0x3FED279F80000000, float 0x3FCB30D580000000, float 0x3FE6B99440000000, float 0x3FEF123360000000, float 0x3FD14C0CA0000000, float 0x3FE8B2D400000000, float 0x3FD9532840000000, float 0x3FCF360000000000, float 0x3FA48DAEC0000000, float 0x3FD0DE80E0000000, float 0x3F8AE40880000000, float 0x3FD34E5100000000, float 0x3FA2577200000000, float 0x3FE6FA10A0000000, float 0x3FB9337F60000000, float 0x3FA6B36D80000000, float 0x3FE3E8FA00000000, float 0x3FE3CF2FE0000000, float 0x3FECAEF0E0000000, float 0x3FE20E4B80000000, float 0x3FCFC83C40000000, float 0x3FC6D0DDC0000000, float 0x3F98FCCEA0000000, float 0x3FCBD4AE60000000, float 0x3FE5BE3D00000000, float 0x3FDED09E40000000], align 16
@__const.test.expected_output = private unnamed_addr constant [60 x float] [float 0x3FB90390C0000000, float 0x3FE4471CE0000000, float 0x3FCB9321C0000000, float 0x3FBF024BC0000000, float 0x3FE2B8AFC0000000, float 0x3FEDCBFB00000000, float 0x3FE074AAE0000000, float 0x3FE9AFE340000000, float 0x3FED3EF800000000, float 0x3FD8E25600000000, float 0x3FD7209F40000000, float 0x3FE158A7C0000000, float 0x3FE334F220000000, float 0x3FDCAC2420000000, float 0x3FE0764BE0000000, float 0x3FE61D5D40000000, float 0x3FDD397CE0000000, float 0x3FC8FD7400000000, float 0x3FE744AAE0000000, float 0x3FD8C37360000000, float 0x3FE3A79C40000000, float 0x3FE3FFFE40000000, float 0x3FCFCB3AE0000000, float 0x3FE495A620000000, float 0x3FE18E07E0000000, float 0x3FDD153A80000000, float 0x3FBE9EFC60000000, float 0x3FD29F28E0000000, float 0x3FE38F2500000000, float 0x3FEC53F420000000, float 0x3FE0F0A3C0000000, float 0x3FD37B43E0000000, float 0x3FEF6525A0000000, float 0x3FEC702C00000000, float 0x3FED279F80000000, float 0x3FCB30D580000000, float 0x3FE6B99440000000, float 0x3FEF123360000000, float 0x3FD9532840000000, float 0x3FCF360000000000, float 0x3F8AE40880000000, float 0x3FD34E5100000000, float 0x3FD14C0CA0000000, float 0x3FE8B2D400000000, float 0x3FA48DAEC0000000, float 0x3FD0DE80E0000000, float 0x3FA2577200000000, float 0x3FE6FA10A0000000, float 0x3FB9337F60000000, float 0x3FA6B36D80000000, float 0x3FECAEF0E0000000, float 0x3FE20E4B80000000, float 0x3F98FCCEA0000000, float 0x3FCBD4AE60000000, float 0x3FE3E8FA00000000, float 0x3FE3CF2FE0000000, float 0x3FCFC83C40000000, float 0x3FC6D0DDC0000000, float 0x3FE5BE3D00000000, float 0x3FDED09E40000000], align 16
@EPSON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"at index %d, output: %f, expected_output: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 4
  %3 = alloca [2 x %struct.TYPE_5__], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [60 x float], align 16
  %6 = alloca [60 x float], align 16
  %7 = alloca float*, align 8
  %8 = alloca i32, align 4
  %9 = bitcast [60 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %9, i8* align 16 bitcast ([60 x float]* @__const.test.input to i8*), i64 240, i1 false)
  %10 = bitcast [60 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([60 x float]* @__const.test.expected_output to i8*), i64 240, i1 false)
  %11 = getelementptr inbounds [60 x float], [60 x float]* %5, i64 0, i64 0
  %12 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store float* %11, float** %13, align 16
  %14 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 1, i32* %17, align 4
  %18 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 5, i32* %21, align 4
  %22 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 2
  store i32 3, i32* %25, align 4
  %26 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 3
  store i32 4, i32* %29, align 4
  %30 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  store float* null, float** %31, align 16
  %32 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %32, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 2, i32* %33, align 4
  %34 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %35 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %36 = call i32 @dnn_execute_layer_depth2space(%struct.TYPE_5__* %34, i64* %35, i32 1, %struct.TYPE_6__* %2)
  %37 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 1
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load float*, float** %38, align 16
  store float* %39, float** %7, align 8
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %72, %0
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = icmp ult i64 %42, 60
  br i1 %43, label %44, label %75

44:                                               ; preds = %40
  %45 = load float*, float** %7, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds float, float* %45, i64 %47
  %49 = load float, float* %48, align 4
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [60 x float], [60 x float]* %6, i64 0, i64 %51
  %53 = load float, float* %52, align 4
  %54 = fsub float %49, %53
  %55 = call i64 @fabs(float %54)
  %56 = load i64, i64* @EPSON, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %71

58:                                               ; preds = %44
  %59 = load i32, i32* %8, align 4
  %60 = load float*, float** %7, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds float, float* %60, i64 %62
  %64 = load float, float* %63, align 4
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [60 x float], [60 x float]* %6, i64 0, i64 %66
  %68 = load float, float* %67, align 4
  %69 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %59, float %64, float %68)
  %70 = call i32 @av_freep(float** %7)
  store i32 1, i32* %1, align 4
  br label %77

71:                                               ; preds = %44
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %40

75:                                               ; preds = %40
  %76 = call i32 @av_freep(float** %7)
  store i32 0, i32* %1, align 4
  br label %77

77:                                               ; preds = %75, %58
  %78 = load i32, i32* %1, align 4
  ret i32 %78
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dnn_execute_layer_depth2space(%struct.TYPE_5__*, i64*, i32, %struct.TYPE_6__*) #2

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
