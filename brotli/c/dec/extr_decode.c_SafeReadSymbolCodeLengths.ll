; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_SafeReadSymbolCodeLengths.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_SafeReadSymbolCodeLengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i32, i32, i32, i32, i32, i32, i32* }

@BROTLI_FALSE = common dso_local global i64 0, align 8
@BROTLI_DECODER_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH = common dso_local global i64 0, align 8
@BROTLI_TRUE = common dso_local global i64 0, align 8
@BROTLI_REPEAT_PREVIOUS_CODE_LENGTH = common dso_local global i64 0, align 8
@BROTLI_DECODER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.TYPE_7__*)* @SafeReadSymbolCodeLengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SafeReadSymbolCodeLengths(i64 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_6__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32* %16, i32** %6, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %7, align 8
  %20 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %20, i64* %8, align 8
  br label %21

21:                                               ; preds = %148, %116, %68, %2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* %4, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %30, 0
  br label %32

32:                                               ; preds = %27, %21
  %33 = phi i1 [ false, %21 ], [ %31, %27 ]
  br i1 %33, label %34, label %149

34:                                               ; preds = %32
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 8
  %37 = load i32*, i32** %36, align 8
  store i32* %37, i32** %9, align 8
  store i64 0, i64* %12, align 8
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD(i32* %38)
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %34
  %43 = load i32*, i32** %6, align 8
  %44 = call i32 @BrotliPullByte(i32* %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %48, label %46

46:                                               ; preds = %42
  %47 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %47, i32* %3, align 4
  br label %151

48:                                               ; preds = %42, %34
  %49 = load i64, i64* @BROTLI_FALSE, align 8
  store i64 %49, i64* %8, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = call i64 @BrotliGetAvailableBits(i32* %50)
  store i64 %51, i64* %11, align 8
  %52 = load i64, i64* %11, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load i32*, i32** %6, align 8
  %56 = call i64 @BrotliGetBitsUnmasked(i32* %55)
  store i64 %56, i64* %12, align 8
  br label %57

57:                                               ; preds = %54, %48
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* @BROTLI_HUFFMAN_MAX_CODE_LENGTH_CODE_LENGTH, align 8
  %61 = call i64 @BitMask(i64 %60)
  %62 = and i64 %59, %61
  %63 = call i32 @BROTLI_HC_ADJUST_TABLE_INDEX(i32* %58, i64 %62)
  %64 = load i32*, i32** %9, align 8
  %65 = call i64 @BROTLI_HC_FAST_LOAD_BITS(i32* %64)
  %66 = load i64, i64* %11, align 8
  %67 = icmp sgt i64 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %57
  %69 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %69, i64* %8, align 8
  br label %21

70:                                               ; preds = %57
  %71 = load i32*, i32** %9, align 8
  %72 = call i64 @BROTLI_HC_FAST_LOAD_VALUE(i32* %71)
  store i64 %72, i64* %10, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @BROTLI_REPEAT_PREVIOUS_CODE_LENGTH, align 8
  %75 = icmp slt i64 %73, %74
  br i1 %75, label %76, label %100

76:                                               ; preds = %70
  %77 = load i32*, i32** %6, align 8
  %78 = load i32*, i32** %9, align 8
  %79 = call i64 @BROTLI_HC_FAST_LOAD_BITS(i32* %78)
  %80 = call i32 @BrotliDropBits(i32* %77, i64 %79)
  %81 = load i64, i64* %10, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 7
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 6
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @ProcessSingleCodeLength(i64 %81, i64* %83, i32* %85, i64* %87, i32* %89, i32 %92, i32 %95, i32 %98)
  br label %148

100:                                              ; preds = %70
  %101 = load i64, i64* %10, align 8
  %102 = sub nsw i64 %101, 14
  store i64 %102, i64* %13, align 8
  %103 = load i64, i64* %12, align 8
  %104 = load i32*, i32** %9, align 8
  %105 = call i64 @BROTLI_HC_FAST_LOAD_BITS(i32* %104)
  %106 = ashr i64 %103, %105
  %107 = load i64, i64* %13, align 8
  %108 = call i64 @BitMask(i64 %107)
  %109 = and i64 %106, %108
  store i64 %109, i64* %14, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load i32*, i32** %9, align 8
  %112 = call i64 @BROTLI_HC_FAST_LOAD_BITS(i32* %111)
  %113 = load i64, i64* %13, align 8
  %114 = add nsw i64 %112, %113
  %115 = icmp slt i64 %110, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %100
  %117 = load i64, i64* @BROTLI_TRUE, align 8
  store i64 %117, i64* %8, align 8
  br label %21

118:                                              ; preds = %100
  %119 = load i32*, i32** %6, align 8
  %120 = load i32*, i32** %9, align 8
  %121 = call i64 @BROTLI_HC_FAST_LOAD_BITS(i32* %120)
  %122 = load i64, i64* %13, align 8
  %123 = add nsw i64 %121, %122
  %124 = call i32 @BrotliDropBits(i32* %119, i64 %123)
  %125 = load i64, i64* %10, align 8
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %4, align 8
  %128 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 7
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 6
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 5
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 4
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 3
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %145 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 8
  %147 = call i32 @ProcessRepeatedCodeLength(i64 %125, i64 %126, i64 %127, i64* %129, i32* %131, i64* %133, i32* %135, i32* %137, i32 %140, i32 %143, i32 %146)
  br label %148

148:                                              ; preds = %118, %76
  br label %21

149:                                              ; preds = %32
  %150 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %150, i32* %3, align 4
  br label %151

151:                                              ; preds = %149, %46
  %152 = load i32, i32* %3, align 4
  ret i32 %152
}

declare dso_local i32 @BROTLI_HC_MARK_TABLE_FOR_FAST_LOAD(i32*) #1

declare dso_local i32 @BrotliPullByte(i32*) #1

declare dso_local i64 @BrotliGetAvailableBits(i32*) #1

declare dso_local i64 @BrotliGetBitsUnmasked(i32*) #1

declare dso_local i32 @BROTLI_HC_ADJUST_TABLE_INDEX(i32*, i64) #1

declare dso_local i64 @BitMask(i64) #1

declare dso_local i64 @BROTLI_HC_FAST_LOAD_BITS(i32*) #1

declare dso_local i64 @BROTLI_HC_FAST_LOAD_VALUE(i32*) #1

declare dso_local i32 @BrotliDropBits(i32*, i64) #1

declare dso_local i32 @ProcessSingleCodeLength(i64, i64*, i32*, i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @ProcessRepeatedCodeLength(i64, i64, i64, i64*, i32*, i64*, i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
