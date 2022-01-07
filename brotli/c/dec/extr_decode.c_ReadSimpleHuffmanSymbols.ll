; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadSimpleHuffmanSymbols.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadSimpleHuffmanSymbols.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64*, i32 }

@BROTLI_STATE_HUFFMAN_SIMPLE_READ = common dso_local global i32 0, align 4
@BROTLI_DECODER_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_ALPHABET = common dso_local global i32 0, align 4
@BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_SAME = common dso_local global i32 0, align 4
@BROTLI_DECODER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, %struct.TYPE_7__*)* @ReadSimpleHuffmanSymbols to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadSimpleHuffmanSymbols(i64 %0, i64 %1, %struct.TYPE_7__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_6__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %7, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  store i32* %16, i32** %8, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.TYPE_6__* %19, %struct.TYPE_6__** %9, align 8
  %20 = load i64, i64* %5, align 8
  %21 = sub nsw i64 %20, 1
  %22 = call i64 @Log2Floor(i64 %21)
  store i64 %22, i64* %10, align 8
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %11, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %57, %3
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* %12, align 8
  %32 = icmp sle i64 %30, %31
  br i1 %32, label %33, label %73

33:                                               ; preds = %29
  %34 = load i32*, i32** %8, align 8
  %35 = load i64, i64* %10, align 8
  %36 = call i32 @BrotliSafeReadBits(i32* %34, i64 %35, i64* %13)
  %37 = icmp ne i32 %36, 0
  %38 = xor i1 %37, true
  %39 = zext i1 %38 to i32
  %40 = call i64 @BROTLI_PREDICT_FALSE(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %33
  %43 = load i64, i64* %11, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @BROTLI_STATE_HUFFMAN_SIMPLE_READ, align 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 3
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %49, i32* %4, align 4
  br label %112

50:                                               ; preds = %33
  %51 = load i64, i64* %13, align 8
  %52 = load i64, i64* %6, align 8
  %53 = icmp sge i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_ALPHABET, align 4
  %56 = call i32 @BROTLI_FAILURE(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %112

57:                                               ; preds = %50
  %58 = load i64, i64* %13, align 8
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 2
  %61 = load i64*, i64** %60, align 8
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i64, i64* %61, i64 %62
  store i64 %58, i64* %63, align 8
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 2
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* %11, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @BROTLI_LOG_UINT(i64 %69)
  %71 = load i64, i64* %11, align 8
  %72 = add nsw i64 %71, 1
  store i64 %72, i64* %11, align 8
  br label %29

73:                                               ; preds = %29
  store i64 0, i64* %11, align 8
  br label %74

74:                                               ; preds = %107, %73
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %12, align 8
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load i64, i64* %11, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %14, align 8
  br label %81

81:                                               ; preds = %103, %78
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %12, align 8
  %84 = icmp sle i64 %82, %83
  br i1 %84, label %85, label %106

85:                                               ; preds = %81
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 2
  %88 = load i64*, i64** %87, align 8
  %89 = load i64, i64* %11, align 8
  %90 = getelementptr inbounds i64, i64* %88, i64 %89
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 2
  %94 = load i64*, i64** %93, align 8
  %95 = load i64, i64* %14, align 8
  %96 = getelementptr inbounds i64, i64* %94, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp eq i64 %91, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %85
  %100 = load i32, i32* @BROTLI_DECODER_ERROR_FORMAT_SIMPLE_HUFFMAN_SAME, align 4
  %101 = call i32 @BROTLI_FAILURE(i32 %100)
  store i32 %101, i32* %4, align 4
  br label %112

102:                                              ; preds = %85
  br label %103

103:                                              ; preds = %102
  %104 = load i64, i64* %14, align 8
  %105 = add nsw i64 %104, 1
  store i64 %105, i64* %14, align 8
  br label %81

106:                                              ; preds = %81
  br label %107

107:                                              ; preds = %106
  %108 = load i64, i64* %11, align 8
  %109 = add nsw i64 %108, 1
  store i64 %109, i64* %11, align 8
  br label %74

110:                                              ; preds = %74
  %111 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %111, i32* %4, align 4
  br label %112

112:                                              ; preds = %110, %99, %54, %42
  %113 = load i32, i32* %4, align 4
  ret i32 %113
}

declare dso_local i64 @Log2Floor(i64) #1

declare dso_local i64 @BROTLI_PREDICT_FALSE(i32) #1

declare dso_local i32 @BrotliSafeReadBits(i32*, i64, i64*) #1

declare dso_local i32 @BROTLI_FAILURE(i32) #1

declare dso_local i32 @BROTLI_LOG_UINT(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
