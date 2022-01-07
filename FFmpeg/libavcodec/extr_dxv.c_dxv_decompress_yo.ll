; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_yo.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dxv.c_dxv_decompress_yo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32*, i32*, i32, i32*, i32)* @dxv_decompress_yo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dxv_decompress_yo(i32* %0, i32* %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca [256 x i32*], align 16
  %19 = alloca [256 x i32*], align 16
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store i32* %0, i32** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i8* @bytestream2_get_le32(i32* %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i32*, i32** %9, align 8
  %30 = call i8* @bytestream2_get_le32(i32* %29)
  %31 = ptrtoint i8* %30 to i32
  store i32 %31, i32* %15, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @bytestream2_tell(i32* %32)
  store i32 %33, i32* %16, align 4
  %34 = bitcast [256 x i32*]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %34, i8 0, i64 2048, i1 false)
  %35 = bitcast [256 x i32*]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %35, i8 0, i64 2048, i1 false)
  store i32 0, i32* %21, align 4
  store i32 0, i32* %23, align 4
  %36 = load i32, i32* %14, align 4
  %37 = icmp slt i32 %36, 8
  br i1 %37, label %44, label %38

38:                                               ; preds = %6
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 %39, 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @bytestream2_get_bytes_left(i32* %41)
  %43 = icmp sgt i32 %40, %42
  br i1 %43, label %44, label %46

44:                                               ; preds = %38, %6
  %45 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %45, i32* %7, align 4
  br label %134

46:                                               ; preds = %38
  %47 = load i32*, i32** %10, align 8
  store i32* %47, i32** %17, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = load i32, i32* %14, align 4
  %50 = sub nsw i32 %49, 8
  %51 = call i32 @bytestream2_skip(i32* %48, i32 %50)
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %13, align 4
  %54 = icmp ugt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %46
  %56 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %56, i32* %7, align 4
  br label %134

57:                                               ; preds = %46
  %58 = load i32*, i32** %9, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %15, align 4
  %61 = call i32 @dxv_decompress_opcodes(i32* %58, i32* %59, i32 %60)
  store i32 %61, i32* %22, align 4
  %62 = load i32, i32* %22, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %57
  %65 = load i32, i32* %22, align 4
  store i32 %65, i32* %7, align 4
  br label %134

66:                                               ; preds = %57
  %67 = load i32*, i32** %9, align 8
  %68 = load i32, i32* %16, align 4
  %69 = load i32, i32* @SEEK_SET, align 4
  %70 = call i32 @bytestream2_seek(i32* %67, i32 %68, i32 %69)
  %71 = load i32*, i32** %9, align 8
  %72 = call i8* @bytestream2_get_le32(i32* %71)
  %73 = ptrtoint i8* %72 to i32
  store i32 %73, i32* %24, align 4
  %74 = load i32*, i32** %17, align 8
  %75 = load i32, i32* %24, align 4
  %76 = call i32 @AV_WL32(i32* %74, i32 %75)
  %77 = load i32*, i32** %9, align 8
  %78 = call i8* @bytestream2_get_le32(i32* %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %25, align 4
  %80 = load i32*, i32** %17, align 8
  %81 = load i32, i32* %24, align 4
  %82 = mul i32 -1640531535, %81
  %83 = lshr i32 %82, 24
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [256 x i32*], [256 x i32*]* %18, i64 0, i64 %84
  store i32* %80, i32** %85, align 8
  %86 = load i32*, i32** %17, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 4
  %88 = load i32, i32* %25, align 4
  %89 = call i32 @AV_WL32(i32* %87, i32 %88)
  %90 = load i32*, i32** %17, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 2
  %92 = load i32*, i32** %17, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = call i32 @AV_RL32(i32* %93)
  %95 = and i32 %94, 16777215
  %96 = mul i32 -1640531535, %95
  %97 = lshr i32 %96, 24
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds [256 x i32*], [256 x i32*]* %19, i64 0, i64 %98
  store i32* %91, i32** %99, align 8
  %100 = load i32*, i32** %17, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 8
  store i32* %101, i32** %17, align 8
  br label %102

102:                                              ; preds = %123, %66
  %103 = load i32*, i32** %17, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds i32, i32* %104, i64 %106
  %108 = icmp ult i32* %103, %107
  br i1 %108, label %109, label %124

109:                                              ; preds = %102
  %110 = load i32*, i32** %8, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %11, align 4
  %114 = load i32*, i32** %12, align 8
  %115 = load i32, i32* %15, align 4
  %116 = getelementptr inbounds [256 x i32*], [256 x i32*]* %18, i64 0, i64 0
  %117 = getelementptr inbounds [256 x i32*], [256 x i32*]* %19, i64 0, i64 0
  %118 = call i32 @dxv_decompress_cgo(i32* %110, i32* %111, i32* %112, i32 %113, i32* %114, i32* %23, i32 %115, i32** %17, i32* %21, i32** %116, i32** %117, i32 0)
  store i32 %118, i32* %20, align 4
  %119 = load i32, i32* %20, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %109
  %122 = load i32, i32* %20, align 4
  store i32 %122, i32* %7, align 4
  br label %134

123:                                              ; preds = %109
  br label %102

124:                                              ; preds = %102
  %125 = load i32*, i32** %9, align 8
  %126 = load i32, i32* %16, align 4
  %127 = load i32, i32* %14, align 4
  %128 = add nsw i32 %126, %127
  %129 = load i32, i32* %22, align 4
  %130 = add nsw i32 %128, %129
  %131 = sub nsw i32 %130, 8
  %132 = load i32, i32* @SEEK_SET, align 4
  %133 = call i32 @bytestream2_seek(i32* %125, i32 %131, i32 %132)
  store i32 0, i32* %7, align 4
  br label %134

134:                                              ; preds = %124, %121, %64, %55, %44
  %135 = load i32, i32* %7, align 4
  ret i32 %135
}

declare dso_local i8* @bytestream2_get_le32(i32*) #1

declare dso_local i32 @bytestream2_tell(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @bytestream2_get_bytes_left(i32*) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @dxv_decompress_opcodes(i32*, i32*, i32) #1

declare dso_local i32 @bytestream2_seek(i32*, i32, i32) #1

declare dso_local i32 @AV_WL32(i32*, i32) #1

declare dso_local i32 @AV_RL32(i32*) #1

declare dso_local i32 @dxv_decompress_cgo(i32*, i32*, i32*, i32, i32*, i32*, i32, i32**, i32*, i32**, i32**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
