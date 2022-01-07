; ModuleID = '/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-conv2d-test.c_test_with_same_dilate.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/tests/dnn/extr_dnn-layer-conv2d-test.c_test_with_same_dilate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, float*, i32, i32, float*, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { float*, i32* }

@__const.test_with_same_dilate.input = private unnamed_addr constant [90 x float] [float 0x3FE670AFA0000000, float 0x3FDB18BC80000000, float 0x3FC8FAF860000000, float 0x3FC4EB4D20000000, float 0x3FE26D2B00000000, float 0x3FEE6F3880000000, float 0x3FBC3230E0000000, float 0x3FED00A1A0000000, float 0x3FEA09A980000000, float 0x3FDD09B5C0000000, float 0x3FE2758240000000, float 0x3FC90411C0000000, float 0x3FC407A4C0000000, float 0x3FCADFA480000000, float 0x3FC69A6DA0000000, float 0x3FAE614080000000, float 0x3FC624D660000000, float 0x3FEA14E6E0000000, float 0x3FDC632E60000000, float 0x3FD80395E0000000, float 0x3FE7FF7B20000000, float 0x3FE5D5CE80000000, float 0x3FBB966A20000000, float 0x3FD5EB1B80000000, float 0x3FE0792200000000, float 0x3FED00FDC0000000, float 0x3FBFCDEF20000000, float 0x3FE3685800000000, float 0x3FE2DA7720000000, float 0x3FEF9217E0000000, float 0x3FECCE92A0000000, float 0x3F70410940000000, float 0x3FEB9C5D60000000, float 0x3FC0FCE420000000, float 0x3FEB0A1380000000, float 0x3FC8CD5D00000000, float 0x3FDA935C00000000, float 0x3F94E08E80000000, float 0x3FDFDDFF60000000, float 0x3FEC6C0820000000, float 0x3FEEFD1160000000, float 0x3FDA631400000000, float 0x3FEAFE6400000000, float 0x3FEEAEE2A0000000, float 0x3FE09BEF80000000, float 0x3FDB6A3980000000, float 0x3FB90A66C0000000, float 0x3FEE674480000000, float 0x3FEBBACFE0000000, float 0x3FD444B1A0000000, float 0x3FB242BB60000000, float 0x3FE367F0A0000000, float 0x3FE66C4360000000, float 0x3FDEE63060000000, float 0x3FE0894F80000000, float 0x3FE46EA0A0000000, float 0x3FCD8777C0000000, float 0x3FADD0C7E0000000, float 0x3FB0306D20000000, float 0x3FCFC3DB80000000, float 0x3FEBAB1B00000000, float 0x3FCFAB8500000000, float 0x3FB993D980000000, float 0x3FE405BD40000000, float 0x3FE89242E0000000, float 0x3FE3E40300000000, float 0x3FE1FE5D60000000, float 0x3FB2EA8940000000, float 0x3FE88255E0000000, float 0x3FDF1BA1A0000000, float 0x3FEFD4F4A0000000, float 0x3FED1A8D40000000, float 0x3FE87641A0000000, float 0x3FAB915460000000, float 0x3FC15D1BC0000000, float 0x3FEF64DDE0000000, float 0x3F7E4130C0000000, float 0x3FCCF38E80000000, float 0x3FD0B29EE0000000, float 0x3FCEF43880000000, float 0x3FC0FA9AA0000000, float 0x3FCA0EF6A0000000, float 0x3F768B8F40000000, float 0x3FE6726060000000, float 0x3FEE995240000000, float 0x3FE22530C0000000, float 0x3FEF6428C0000000, float 0x3FE60949C0000000, float 0x3FE26D1420000000, float 0x3FE6D74E00000000], align 16
@__const.test_with_same_dilate.expected_output = private unnamed_addr constant [60 x float] [float 0xBFEE568D80000000, float 0xBFE6F0F720000000, float 0xBFEE186840000000, float 0xBFE1D0CD40000000, float 0xBFECC58760000000, float 0xBFEA94BB80000000, float 0xBFEE3C6960000000, float 0xBFEC958A00000000, float 0xBFEC3C8500000000, float 0xBFE75D78E0000000, float 0xBFECB82AC0000000, float 0xBFE67C4660000000, float 0xBFEC594880000000, float 0xBFE10668E0000000, float 0xBFEDB8D980000000, float 0xBFE2134120000000, float 0xBFEC638260000000, float 0xBFE6667AC0000000, float 0xBFED5C8560000000, float 0xBFE97FC740000000, float 0xBFE855BAC0000000, float 0xBFBE308D00000000, float 0xBFEC41C360000000, float 0xBFECB88E80000000, float 0xBFE698C900000000, float 0x3FC89DEF20000000, float 0xBFEA9EBDC0000000, float 0xBFD8B73D20000000, float 0xBFE9D2D1E0000000, float 0xBFEB619620000000, float 0xBFE77A3360000000, float 0xBFE3BD5520000000, float 0xBFE881A020000000, float 0xBFE44DCAA0000000, float 0xBFE775E300000000, float 0xBFEC003380000000, float 0xBFE29C60A0000000, float 0xBFDAC77D60000000, float 0xBFE0D68AE0000000, float 0xBFC16CC6A0000000, float 0xBFE04C56C0000000, float 0xBFCAEA5D20000000, float 0xBFD94067A0000000, float 0xBFDC7C29E0000000, float 0xBFCC812FA0000000, float 0xBFE77D0020000000, float 0xBFE8D98160000000, float 0xBFE7CF9440000000, float 0xBFE2571BC0000000, float 0xBFC3A077A0000000, float 0xBFE7E0ED60000000, float 0xBFD64F2C60000000, float 0xBFDB417160000000, float 0xBFE0C50200000000, float 0x3FC4EB66E0000000, float 0xBFCF553760000000, float 0xBFE2896880000000, float 0xBFE41307C0000000, float 0xBFEA54F460000000, float 0xBFEB1DF2C0000000], align 16
@__const.test_with_same_dilate.kernel = private unnamed_addr constant [54 x float] [float 0x3FD0A80540000000, float 0x3FC52AAE00000000, float 0xBFCF2B6B40000000, float 0x3FD5B0F180000000, float 0xBFD5C36940000000, float 0x3FD6879FC0000000, float 0x3FD5CBCEC0000000, float 0x3F8D234000000000, float 0x3FC1A9C500000000, float 0x3FD2DF8140000000, float 0x3FD1CD9340000000, float 0x3FC6DBDF80000000, float 0x3FCC510380000000, float 0x3FA6964F00000000, float 0x3FC0CFE480000000, float 0x3FD44A9B80000000, float 0x3FCCD5CC80000000, float 0xBF95D5CE00000000, float 0x3FBD797880000000, float 0xBFC7512620000000, float 0xBFCB220480000000, float 0xBF9C847000000000, float 0xBF91745200000000, float 0xBFBFBF7300000000, float 0xBFCDF8BB40000000, float 0xBFC034FFA0000000, float 0xBFD69DCD60000000, float 0x3FC9A9C380000000, float 0xBFB37ECD80000000, float 0xBFCE433520000000, float 0xBFD4014280000000, float 0xBF9A78E200000000, float 0xBFD3343A40000000, float 0x3FA9FD9300000000, float 0x3FD47B7400000000, float 0x3FD388C400000000, float 0xBF5C7C0000000000, float 0x3FD0375380000000, float 0xBFD06CDF80000000, float 0x3FD1D26280000000, float 0xBFD3EBC7C0000000, float 0x3FCA721500000000, float 0x3FD428EF40000000, float 0x3FBCF93E00000000, float 0x3FB830BC00000000, float 0xBFBE481B00000000, float 0xBFC03808A0000000, float 0xBFD734B5C0000000, float 0x3FD1587300000000, float 0xBFC92FA960000000, float 0x3F982DE800000000, float 0xBFD09EC920000000, float 0xBFD65E15E0000000, float 0xBFBBB7A180000000], align 16
@__const.test_with_same_dilate.bias = private unnamed_addr constant [2 x float] [float 0xBFFA850F40000000, float 0xBFE7553AA0000000], align 4
@TANH = common dso_local global i32 0, align 4
@SAME = common dso_local global i32 0, align 4
@EPSON = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [46 x i8] c"at index %d, output: %f, expected_output: %f\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @test_with_same_dilate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_with_same_dilate() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca [2 x %struct.TYPE_5__], align 16
  %4 = alloca [1 x i64], align 8
  %5 = alloca [90 x float], align 16
  %6 = alloca [60 x float], align 16
  %7 = alloca float*, align 8
  %8 = alloca [54 x float], align 16
  %9 = alloca [2 x float], align 4
  %10 = alloca i32, align 4
  %11 = bitcast [90 x float]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %11, i8* align 16 bitcast ([90 x float]* @__const.test_with_same_dilate.input to i8*), i64 360, i1 false)
  %12 = bitcast [60 x float]* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %12, i8* align 16 bitcast ([60 x float]* @__const.test_with_same_dilate.expected_output to i8*), i64 240, i1 false)
  %13 = bitcast [54 x float]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %13, i8* align 16 bitcast ([54 x float]* @__const.test_with_same_dilate.kernel to i8*), i64 216, i1 false)
  %14 = bitcast [2 x float]* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %14, i8* align 4 bitcast ([2 x float]* @__const.test_with_same_dilate.bias to i8*), i64 8, i1 false)
  %15 = load i32, i32* @TANH, align 4
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 8
  store i32 %15, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 0
  store i32 1, i32* %17, align 8
  %18 = getelementptr inbounds [2 x float], [2 x float]* %9, i64 0, i64 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 1
  store float* %18, float** %19, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 2
  store i32 2, i32* %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 3
  store i32 3, i32* %21, align 4
  %22 = getelementptr inbounds [54 x float], [54 x float]* %8, i64 0, i64 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 4
  store float* %22, float** %23, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 5
  store i32 3, i32* %24, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %2, i32 0, i32 6
  store i32 2, i32* %25, align 4
  %26 = load i32, i32* @SAME, align 4
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
  %59 = icmp ult i64 %58, 60
  br i1 %59, label %60, label %91

60:                                               ; preds = %56
  %61 = load float*, float** %7, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds float, float* %61, i64 %63
  %65 = load float, float* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [60 x float], [60 x float]* %6, i64 0, i64 %67
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
  %83 = getelementptr inbounds [60 x float], [60 x float]* %6, i64 0, i64 %82
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
