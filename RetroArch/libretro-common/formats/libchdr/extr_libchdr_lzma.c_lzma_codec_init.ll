; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_lzma.c_lzma_codec_init.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_lzma.c_lzma_codec_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }

@LZMA_PROPS_SIZE = common dso_local global i32 0, align 4
@CHDERR_DECOMPRESSION_ERROR = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@CHDERR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_codec_init(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %14 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %8, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %9, align 8
  %18 = load i8*, i8** %4, align 8
  %19 = bitcast i8* %18 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %12, align 8
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = call i32 @LzmaDec_Construct(i32* %21)
  %23 = call i32 @LzmaEncProps_Init(%struct.TYPE_7__* %6)
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  store i32 9, i32* %24, align 4
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = call i32 @LzmaEncProps_Normalize(%struct.TYPE_7__* %6)
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32* %29, i32** %10, align 8
  %30 = load i32*, i32** %10, align 8
  %31 = call i32 @lzma_allocator_init(i32* %30)
  %32 = load i32*, i32** %10, align 8
  %33 = call i32 @LzmaEnc_Create(i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %38, label %36

36:                                               ; preds = %2
  %37 = load i32, i32* @CHDERR_DECOMPRESSION_ERROR, align 4
  store i32 %37, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %77

38:                                               ; preds = %2
  %39 = load i32, i32* %7, align 4
  %40 = call i64 @LzmaEnc_SetProps(i32 %39, %struct.TYPE_7__* %6)
  %41 = load i64, i64* @SZ_OK, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load i32, i32* %7, align 4
  %45 = bitcast i32** %10 to i32*
  %46 = bitcast i32** %10 to i32*
  %47 = call i32 @LzmaEnc_Destroy(i32 %44, i32* %45, i32* %46)
  %48 = load i32, i32* @CHDERR_DECOMPRESSION_ERROR, align 4
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %77

49:                                               ; preds = %38
  %50 = mul nuw i64 4, %15
  store i64 %50, i64* %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @LzmaEnc_WriteProperties(i32 %51, i32* %17, i64* %11)
  %53 = load i64, i64* @SZ_OK, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %61

55:                                               ; preds = %49
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @LzmaEnc_Destroy(i32 %56, i32* %57, i32* %58)
  %60 = load i32, i32* @CHDERR_DECOMPRESSION_ERROR, align 4
  store i32 %60, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %77

61:                                               ; preds = %49
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %10, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @LzmaEnc_Destroy(i32 %62, i32* %63, i32* %64)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load i32, i32* @LZMA_PROPS_SIZE, align 4
  %69 = load i32*, i32** %10, align 8
  %70 = call i64 @LzmaDec_Allocate(i32* %67, i32* %17, i32 %68, i32* %69)
  %71 = load i64, i64* @SZ_OK, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* @CHDERR_DECOMPRESSION_ERROR, align 4
  store i32 %74, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %77

75:                                               ; preds = %61
  %76 = load i32, i32* @CHDERR_NONE, align 4
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %77

77:                                               ; preds = %75, %73, %55, %43, %36
  %78 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %78)
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @LzmaDec_Construct(i32*) #2

declare dso_local i32 @LzmaEncProps_Init(%struct.TYPE_7__*) #2

declare dso_local i32 @LzmaEncProps_Normalize(%struct.TYPE_7__*) #2

declare dso_local i32 @lzma_allocator_init(i32*) #2

declare dso_local i32 @LzmaEnc_Create(i32*) #2

declare dso_local i64 @LzmaEnc_SetProps(i32, %struct.TYPE_7__*) #2

declare dso_local i32 @LzmaEnc_Destroy(i32, i32*, i32*) #2

declare dso_local i64 @LzmaEnc_WriteProperties(i32, i32*, i64*) #2

declare dso_local i64 @LzmaDec_Allocate(i32*, i32*, i32, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
