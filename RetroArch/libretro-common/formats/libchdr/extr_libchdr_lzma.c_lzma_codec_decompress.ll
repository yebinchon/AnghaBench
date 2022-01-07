; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_lzma.c_lzma_codec_decompress.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_lzma.c_lzma_codec_decompress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@LZMA_FINISH_END = common dso_local global i32 0, align 4
@SZ_OK = common dso_local global i64 0, align 8
@LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK = common dso_local global i64 0, align 8
@CHDERR_DECOMPRESSION_ERROR = common dso_local global i32 0, align 4
@CHDERR_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_codec_decompress(i8* %0, i32* %1, i64 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_2__*, align 8
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i64 %2, i64* %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load i8*, i8** %7, align 8
  %18 = bitcast i8* %17 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %18, %struct.TYPE_2__** %16, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @LzmaDec_Init(i32* %20)
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %11, align 8
  store i64 %23, i64* %15, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %10, align 8
  %27 = load i32*, i32** %8, align 8
  %28 = load i32, i32* @LZMA_FINISH_END, align 4
  %29 = call i64 @LzmaDec_DecodeToBuf(i32* %25, i32* %26, i64* %15, i32* %27, i64* %14, i32 %28, i32* %12)
  store i64 %29, i64* %13, align 8
  %30 = load i64, i64* %13, align 8
  %31 = load i64, i64* @SZ_OK, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %5
  %34 = load i64, i64* %13, align 8
  %35 = load i64, i64* @LZMA_STATUS_MAYBE_FINISHED_WITHOUT_MARK, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %45, label %37

37:                                               ; preds = %33, %5
  %38 = load i64, i64* %14, align 8
  %39 = load i64, i64* %9, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %45, label %41

41:                                               ; preds = %37
  %42 = load i64, i64* %15, align 8
  %43 = load i64, i64* %11, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %41, %37, %33
  %46 = load i32, i32* @CHDERR_DECOMPRESSION_ERROR, align 4
  store i32 %46, i32* %6, align 4
  br label %49

47:                                               ; preds = %41
  %48 = load i32, i32* @CHDERR_NONE, align 4
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %47, %45
  %50 = load i32, i32* %6, align 4
  ret i32 %50
}

declare dso_local i32 @LzmaDec_Init(i32*) #1

declare dso_local i64 @LzmaDec_DecodeToBuf(i32*, i32*, i64*, i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
