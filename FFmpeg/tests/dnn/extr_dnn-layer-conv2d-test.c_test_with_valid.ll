; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-conv2d-test.c_test_with_valid.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-conv2d-test.c_test_with_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float*, i32, i32, float*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { float*, i32* }

@__const.test_with_valid.input = private unnamed_addr constant [90 x float] [float 0x3FD0B89780000000, float 0x3FDB5E2960000000, float 0x3FE7E45F20000000, float 0x3FE9AE7DE0000000, float 0x3FD7BD5B00000000, float 0x3FE2F183A0000000, float 0x3FDF8922E0000000, float 0x3FE6F1C5C0000000, float 0x3FB7578720000000, float 0x3FE06DF2C0000000, float 0x3FE571B9E0000000, float 0x3FDFA07CA0000000, float 0x3FA3E74780000000, float 0x3FDBF44980000000, float 0x3FC31330E0000000, float 0x3FE48606C0000000, float 0x3FEB81D560000000, float 0x3FED396BA0000000, float 0x3FE6A4A020000000, float 0x3FC6B9F500000000, float 0x3FE0AE1600000000, float 0x3FD6A49D80000000, float 0x3FD0219AE0000000, float 0x3FD924EF20000000, float 0x3FB8484840000000, float 0x3FEBCAD8C0000000, float 0x3FE4C3D3C0000000, float 0x3FE04BCEA0000000, float 0x3FECC74660000000, float 0x3FC7FCBDE0000000, float 0x3FD5E97DC0000000, float 0x3FD8C6F740000000, float 0x3FC30D9FA0000000, float 0x3FE0993140000000, float 0x3FEA09E940000000, float 0x3FE0B245E0000000, float 0x3FDD953240000000, float 0x3FD295A740000000, float 0x3FC4BAC000000000, float 0x3FE0902DE0000000, float 0x3FEC53BF40000000, float 0x3F9659A4C0000000, float 0x3FB5B6FF20000000, float 0x3FD62AD340000000, float 0x3FD25244C0000000, float 0x3FEE920EE0000000, float 0x3FDEBDE040000000, float 0x3FEAEEAE00000000, float 0x3FD6C381E0000000, float 0x3FB15A6020000000, float 0x3FD20B3BA0000000, float 0x3FEAE13EC0000000, float 0x3FA0ECA200000000, float 0x3FE5333B60000000, float 0x3FEDC30320000000, float 0x3FEB5D69A0000000, float 0x3FE3A054C0000000, float 0x3FCC7883A0000000, float 0x3FC0D66080000000, float 0x3FE3CE25C0000000, float 0x3FE11B9840000000, float 0x3FEAB768E0000000, float 0x3FE4F18740000000, float 0x3FD233B620000000, float 0x3FD26B51C0000000, float 0x3FE130F720000000, float 0x3FE4002F60000000, float 0x3FD1FF08C0000000, float 0x3FDFC79BC0000000, float 0x3FE4A50F40000000, float 0x3FE78F6D20000000, float 0x3FDCAE95A0000000, float 0x3FE4A7BD60000000, float 0x3FE5BDB220000000, float 0x3FA73BE6A0000000, float 0x3FECD3AC00000000, float 0x3FE9707000000000, float 0x3FDAC06540000000, float 0x3FD263AF00000000, float 0x3FEFE69FC0000000, float 0x3FE235F200000000, float 0x3FEE701400000000, float 0x3F99EE7AC0000000, float 0x3FE1E6E640000000, float 0x3FBF125160000000, float 0x3FE6F3D060000000, float 0x3FE5A13E00000000, float 0x3FB290C2E0000000, float 0x3FC67951A0000000, float 0x3FE32A1A60000000], align 16
@__const.test_with_valid.expected_output = private unnamed_addr constant [24 x float] [float 0xBFE1D28280000000, float 0xBFDAF8DAC0000000, float 0xBFB791F520000000, float 0x3FD18A0060000000, float 0xBFDACEB6E0000000, float 0x3FB6170420000000, float 0xBFD0002AA0000000, float 0xBFD5EF2400000000, float 0x3F953A6680000000, float 0x3FA4910E60000000, float 0xBFE6594860000000, float 0xBFAF6B8020000000, float 0x3FC2289880000000, float 0xBFBDD69D80000000, float 0xBFCE10E820000000, float 0xBFD89D01A0000000, float 0xBFC857BE40000000, float 0x3FC46D6560000000, float 0xBFC76F6880000000, float 0xBFD3A7DE60000000, float 0xBFE2B73E60000000, float 0xBFCCCFC220000000, float 0xBFE34634C0000000, float 0xBFC27E7AC0000000], align 16
@__const.test_with_valid.kernel = private unnamed_addr constant [54 x float] [float 0xBFD02FB940000000, float 0x3FCCACB400000000, float 0x3F9D545C00000000, float 0xBFC2B547C0000000, float 0xBFD1831D00000000, float 0xBFD645ED60000000, float 0xBFD1A89680000000, float 0x3FC914DD80000000, float 0xBFD004D1A0000000, float 0x3FD625E4C0000000, float 0x3FBA907480000000, float 0xBFB9FE7C80000000, float 0x3FCE3A8580000000, float 0x3FCB516480000000, float 0x3FD6951EC0000000, float 0x3FAE2D1100000000, float 0x3F64429000000000, float 0xBFC5F16FC0000000, float 0x3FD6E2A880000000, float 0x3FCBFBC280000000, float 0xBFD22A8E20000000, float 0xBFCB24F340000000, float 0xBFCAB73400000000, float 0x3FD15338C0000000, float 0x3FD08FFC80000000, float 0x3FBC824E80000000, float 0xBFD5978820000000, float 0x3FB5627100000000, float 0xBFD5F22EC0000000, float 0x3FA5678800000000, float 0xBFB8EE3F00000000, float 0x3FD5060A00000000, float 0xBFC58D9BC0000000, float 0xBFA0A31D00000000, float 0xBFD2AF0D80000000, float 0x3FA1075F00000000, float 0xBFB7BCEA00000000, float 0xBFD1EFDD00000000, float 0xBFD255C280000000, float 0x3FD6ACA6C0000000, float 0x3FCF219800000000, float 0xBFCF6D1B00000000, float 0x3FD1CCF5C0000000, float 0x3FCAE92700000000, float 0xBF8C09C400000000, float 0xBFC147EEA0000000, float 0xBFB4091180000000, float 0xBFD61EF000000000, float 0x3FD49CC540000000, float 0xBFB3623500000000, float 0x3FC8DBBC00000000, float 0x3FCA9A5280000000, float 0x3FC7FC2D80000000, float 0x3FC5573E00000000], align 16
@__const.test_with_valid.bias = private unnamed_addr constant [2 x float] [float 0xBFDE8D4420000000, float 0xBFC91D3480000000], align 4
@TANH = common dso_local global i32 0, align 4
@VALID = common dso_local global i32 0, align 4
@EPSON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"at index %d, output: %f, expected_output: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_with_valid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_with_valid() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca [2 x %struct.TYPE_5__], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [90 x float], align 16
  %6 = alloca [24 x float], align 16
  %7 = alloca float*, align 8
  %8 = alloca [54 x float], align 16
  %9 = alloca [2 x float], align 4
  %10 = alloca i32, align 4
  %11 = bitcast [90 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([90 x float]* @__const.test_with_valid.input to i8*), i64 360, i1 false)
  %12 = bitcast [24 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([24 x float]* @__const.test_with_valid.expected_output to i8*), i64 96, i1 false)
  %13 = bitcast [54 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([54 x float]* @__const.test_with_valid.kernel to i8*), i64 216, i1 false)
  %14 = bitcast [2 x float]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x float]* @__const.test_with_valid.bias to i8*), i64 8, i1 false)
  %15 = load i32, i32* @TANH, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 8
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store float* %18, float** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 1, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i32 3, i32* %21, align 4
  %22 = getelementptr inbounds [54 x float], [54 x float]* %8, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  store float* %22, float** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  store i32 3, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* @VALID, align 4
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 7
  store i32 %26, i32* %27, align 8
  %28 = getelementptr inbounds [90 x float], [90 x float]* %5, i64 0, i64 0
  %29 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store float* %28, float** %30, align 16
  %31 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  store i32 1, i32* %34, align 4
  %35 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  store i32 5, i32* %38, align 4
  %39 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  store i32 6, i32* %42, align 4
  %43 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 3
  store i32 3, i32* %46, align 4
  %47 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 1
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  store float* null, float** %48, align 16
  %49 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  store i64 0, i64* %49, align 8
  %50 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 0
  %51 = getelementptr inbounds [1 x i64], [1 x i64]* %4, i64 0, i64 0
  %52 = call i32 @dnn_execute_layer_conv2d(%struct.TYPE_5__* %50, i64* %51, i32 1, %struct.TYPE_6__* %2)
  %53 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %3, i64 0, i64 1
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load float*, float** %54, align 16
  store float* %55, float** %7, align 8
  store i32 0, i32* %10, align 4
  br label %56

56:                                               ; preds = %88, %0
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp ult i64 %58, 24
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load float*, float** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [24 x float], [24 x float]* %6, i64 0, i64 %67
  %69 = load float, float* %68, align 4
  %70 = fsub float %65, %69
  %71 = call i64 @fabs(float %70)
  %72 = load i64, i64* @EPSON, align 8
  %73 = icmp sgt i64 %71, %72
  br i1 %73, label %74, label %87

74:                                               ; preds = %60
  %75 = load i32, i32* %10, align 4
  %76 = load float*, float** %7, align 8
  %77 = load i32, i32* %10, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds float, float* %76, i64 %78
  %80 = load float, float* %79, align 4
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [24 x float], [24 x float]* %6, i64 0, i64 %82
  %84 = load float, float* %83, align 4
  %85 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %75, float %80, float %84)
  %86 = call i32 @av_freep(float** %7)
  store i32 1, i32* %1, align 4
  br label %93

87:                                               ; preds = %60
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %56

91:                                               ; preds = %56
  %92 = call i32 @av_freep(float** %7)
  store i32 0, i32* %1, align 4
  br label %93

93:                                               ; preds = %91, %74
  %94 = load i32, i32* %1, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @dnn_execute_layer_conv2d(%struct.TYPE_5__*, i64*, i32, %struct.TYPE_6__*) #2

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
