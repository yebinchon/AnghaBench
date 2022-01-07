; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadSymbolCodeLengths.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadSymbolCodeLengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64, i32*, i32*, i32*, i32* }

@BROTLI_DECODER_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@BROTLI_SHORT_FILL_BIT_WINDOW_READ = common dso_local global i32 0, align 4
@BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH = common dso_local global i64 0, align 8
@BROTLI_REPEAT_PREVIOUS_CODE_LENGTH = common dso_local global i64 0, align 8
@BROTLI_DECODER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_7__*)* @ReadSymbolCodeLengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadSymbolCodeLengths(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 1
  store i32* %21, i32** %6, align 8
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %7, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %8, align 8
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %10, align 8
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %11, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 4
  %39 = load i64, i64* %38, align 8
  store i64 %39, i64* %12, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 8
  %42 = load i32*, i32** %41, align 8
  store i32* %42, i32** %13, align 8
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 7
  %45 = load i32*, i32** %44, align 8
  store i32* %45, i32** %14, align 8
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 5
  %48 = load i32*, i32** %47, align 8
  store i32* %48, i32** %15, align 8
  %49 = load i32*, i32** %6, align 8
  %50 = call i32 @BrotliWarmupBitReader(i32* %49)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %54, label %52

52:                                               ; preds = %2
  %53 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %53, i32* %3, align 4
  br label %144

54:                                               ; preds = %2
  br label %55

55:                                               ; preds = %138, %54
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %4, align 8
  %58 = icmp slt i64 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load i64, i64* %10, align 8
  %61 = icmp sgt i64 %60, 0
  br label %62

62:                                               ; preds = %59, %55
  %63 = phi i1 [ false, %55 ], [ %61, %59 ]
  br i1 %63, label %64, label %139

64:                                               ; preds = %62
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 6
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %16, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = call i32 @BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD(i32* %68)
  %70 = load i32*, i32** %6, align 8
  %71 = load i32, i32* @BROTLI_SHORT_FILL_BIT_WINDOW_READ, align 4
  %72 = call i32 @BrotliCheckInputAmount(i32* %70, i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %64
  %75 = load i64, i64* %8, align 8
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  %78 = load i64, i64* %9, align 8
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load i64, i64* %11, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 3
  store i64 %81, i64* %83, align 8
  %84 = load i64, i64* %12, align 8
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 4
  store i64 %84, i64* %86, align 8
  %87 = load i64, i64* %10, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 2
  store i64 %87, i64* %89, align 8
  %90 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %90, i32* %3, align 4
  br label %144

91:                                               ; preds = %64
  %92 = load i32*, i32** %6, align 8
  %93 = call i32 @BrotliFillBitWindow16(i32* %92)
  %94 = load i32*, i32** %16, align 8
  %95 = load i32*, i32** %6, align 8
  %96 = call i64 @BrotliGetBitsUnmasked(i32* %95)
  %97 = load i64, i64* @BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH, align 8
  %98 = call i64 @BitMask(i64 %97)
  %99 = and i64 %96, %98
  %100 = call i32 @BROTLI_HC_ADJUST_TABLE_INDEX(i32* %94, i64 %99)
  %101 = load i32*, i32** %6, align 8
  %102 = load i32*, i32** %16, align 8
  %103 = call i64 @BROTLI_HC_FAST_LOAD_BITS(i32* %102)
  %104 = call i32 @BrotliDropBits(i32* %101, i64 %103)
  %105 = load i32*, i32** %16, align 8
  %106 = call i64 @BROTLI_HC_FAST_LOAD_VALUE(i32* %105)
  store i64 %106, i64* %17, align 8
  %107 = load i64, i64* %17, align 8
  %108 = load i64, i64* @BROTLI_REPEAT_PREVIOUS_CODE_LENGTH, align 8
  %109 = icmp slt i64 %107, %108
  br i1 %109, label %110, label %116

110:                                              ; preds = %91
  %111 = load i64, i64* %17, align 8
  %112 = load i32*, i32** %13, align 8
  %113 = load i32*, i32** %14, align 8
  %114 = load i32*, i32** %15, align 8
  %115 = call i32 @ProcessSingleCodeLength(i64 %111, i64* %8, i64* %9, i64* %10, i64* %11, i32* %112, i32* %113, i32* %114)
  br label %138

116:                                              ; preds = %91
  %117 = load i64, i64* %17, align 8
  %118 = load i64, i64* @BROTLI_REPEAT_PREVIOUS_CODE_LENGTH, align 8
  %119 = icmp eq i64 %117, %118
  %120 = zext i1 %119 to i64
  %121 = select i1 %119, i32 2, i32 3
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %18, align 8
  %123 = load i32*, i32** %6, align 8
  %124 = call i64 @BrotliGetBitsUnmasked(i32* %123)
  %125 = load i64, i64* %18, align 8
  %126 = call i64 @BitMask(i64 %125)
  %127 = and i64 %124, %126
  store i64 %127, i64* %19, align 8
  %128 = load i32*, i32** %6, align 8
  %129 = load i64, i64* %18, align 8
  %130 = call i32 @BrotliDropBits(i32* %128, i64 %129)
  %131 = load i64, i64* %17, align 8
  %132 = load i64, i64* %19, align 8
  %133 = load i64, i64* %4, align 8
  %134 = load i32*, i32** %13, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i32*, i32** %15, align 8
  %137 = call i32 @ProcessRepeatedCodeLength(i64 %131, i64 %132, i64 %133, i64* %8, i64* %9, i64* %10, i64* %11, i64* %12, i32* %134, i32* %135, i32* %136)
  br label %138

138:                                              ; preds = %116, %110
  br label %55

139:                                              ; preds = %62
  %140 = load i64, i64* %10, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 2
  store i64 %140, i64* %142, align 8
  %143 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %143, i32* %3, align 4
  br label %144

144:                                              ; preds = %139, %74, %52
  %145 = load i32, i32* %3, align 4
  ret i32 %145
}

declare dso_local i32 @BrotliWarmupBitReader(i32*) #1

declare dso_local i32 @BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD(i32*) #1

declare dso_local i32 @BrotliCheckInputAmount(i32*, i32) #1

declare dso_local i32 @BrotliFillBitWindow16(i32*) #1

declare dso_local i32 @BROTLI_HC_ADJUST_TABLE_INDEX(i32*, i64) #1

declare dso_local i64 @BrotliGetBitsUnmasked(i32*) #1

declare dso_local i64 @BitMask(i64) #1

declare dso_local i32 @BrotliDropBits(i32*, i64) #1

declare dso_local i64 @BROTLI_HC_FAST_LOAD_BITS(i32*) #1

declare dso_local i64 @BROTLI_HC_FAST_LOAD_VALUE(i32*) #1

declare dso_local i32 @ProcessSingleCodeLength(i64, i64*, i64*, i64*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @ProcessRepeatedCodeLength(i64, i64, i64, i64*, i64*, i64*, i64*, i64*, i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
