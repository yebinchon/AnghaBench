; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_flac_codec.c_cdfl_codec_decompress.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_flac_codec.c_cdfl_codec_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32, i32 }

@CD_FRAME_SIZE = common dso_local global i32 0, align 4
@CD_MAX_SECTOR_DATA = common dso_local global i32 0, align 4
@CHDERR_DECOMPRESSION_ERROR = common dso_local global i64 0, align 8
@CHDERR_NONE = common dso_local global i64 0, align 8
@CD_MAX_SUBCODE_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @cdfl_codec_decompress(i8* %0, i32* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_2__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load i8*, i8** %7, align 8
  %17 = bitcast i8* %16 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %17, %struct.TYPE_2__** %14, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @CD_FRAME_SIZE, align 4
  %20 = sdiv i32 %18, %19
  store i32 %20, i32* %15, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %15, align 4
  %24 = load i32, i32* @CD_MAX_SECTOR_DATA, align 4
  %25 = mul nsw i32 %23, %24
  %26 = call i32 @cdfl_codec_blocksize(i32 %25)
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @flac_decoder_reset(i32* %22, i32 44100, i32 2, i32 %26, i32* %27, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %5
  %32 = load i64, i64* @CHDERR_DECOMPRESSION_ERROR, align 8
  store i64 %32, i64* %6, align 8
  br label %82

33:                                               ; preds = %5
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32* %37, i32** %13, align 8
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load i32*, i32** %13, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load i32, i32* @CD_MAX_SECTOR_DATA, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sdiv i32 %43, 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @flac_decoder_decode_interleaved(i32* %39, i32* %40, i32 %44, i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %33
  %51 = load i64, i64* @CHDERR_DECOMPRESSION_ERROR, align 8
  store i64 %51, i64* %6, align 8
  br label %82

52:                                               ; preds = %33
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = call i32 @flac_decoder_finish(i32* %54)
  store i32 0, i32* %12, align 4
  br label %56

56:                                               ; preds = %77, %52
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %15, align 4
  %59 = icmp slt i32 %57, %58
  br i1 %59, label %60, label %80

60:                                               ; preds = %56
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* @CD_FRAME_SIZE, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %61, i64 %65
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = load i32, i32* @CD_MAX_SECTOR_DATA, align 4
  %72 = mul nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %69, i64 %73
  %75 = load i32, i32* @CD_MAX_SECTOR_DATA, align 4
  %76 = call i32 @memcpy(i32* %66, i32* %74, i32 %75)
  br label %77

77:                                               ; preds = %60
  %78 = load i32, i32* %12, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %12, align 4
  br label %56

80:                                               ; preds = %56
  %81 = load i64, i64* @CHDERR_NONE, align 8
  store i64 %81, i64* %6, align 8
  br label %82

82:                                               ; preds = %80, %50, %31
  %83 = load i64, i64* %6, align 8
  ret i64 %83
}

declare dso_local i32 @flac_decoder_reset(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @cdfl_codec_blocksize(i32) #1

declare dso_local i32 @flac_decoder_decode_interleaved(i32*, i32*, i32, i32) #1

declare dso_local i32 @flac_decoder_finish(i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
