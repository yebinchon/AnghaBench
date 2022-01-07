; ModuleID = '/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadCodeLengthCodeLengths.c'
source_filename = "/home/carl/AnghaBench/brotli/c/dec/extr_decode.c_ReadCodeLengthCodeLengths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32, i64, i64*, i32*, i32 }

@BROTLI_CODE_LENGTH_CODES = common dso_local global i64 0, align 8
@kCodeLengthCodeOrder = common dso_local global i64* null, align 8
@kCodeLengthPrefixLength = common dso_local global i64* null, align 8
@BROTLI_STATE_HUFFMAN_COMPLEX = common dso_local global i32 0, align 4
@BROTLI_DECODER_NEEDS_MORE_INPUT = common dso_local global i32 0, align 4
@kCodeLengthPrefixValue = common dso_local global i64* null, align 8
@BROTLI_DECODER_ERROR_FORMAT_CL_SPACE = common dso_local global i32 0, align 4
@BROTLI_DECODER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*)* @ReadCodeLengthCodeLengths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ReadCodeLengthCodeLengths(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 1
  store i32* %14, i32** %4, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %6, align 8
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  br label %27

27:                                               ; preds = %121, %1
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @BROTLI_CODE_LENGTH_CODES, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %124

31:                                               ; preds = %27
  %32 = load i64*, i64** @kCodeLengthCodeOrder, align 8
  %33 = load i64, i64* %8, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %9, align 8
  %36 = load i32*, i32** %4, align 8
  %37 = call i32 @BrotliSafeGetBits(i32* %36, i32 4, i64* %10)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  %40 = zext i1 %39 to i32
  %41 = call i64 @BROTLI_PREDICT_FALSE(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %76

43:                                               ; preds = %31
  %44 = load i32*, i32** %4, align 8
  %45 = call i64 @BrotliGetAvailableBits(i32* %44)
  store i64 %45, i64* %12, align 8
  %46 = load i64, i64* %12, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @BrotliGetBitsUnmasked(i32* %49)
  %51 = and i32 %50, 15
  %52 = sext i32 %51 to i64
  store i64 %52, i64* %10, align 8
  br label %54

53:                                               ; preds = %43
  store i64 0, i64* %10, align 8
  br label %54

54:                                               ; preds = %53, %48
  %55 = load i64*, i64** @kCodeLengthPrefixLength, align 8
  %56 = load i64, i64* %10, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %12, align 8
  %60 = icmp ugt i64 %58, %59
  br i1 %60, label %61, label %75

61:                                               ; preds = %54
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  store i64 %62, i64* %64, align 8
  %65 = load i64, i64* %6, align 8
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load i32, i32* %7, align 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 8
  %71 = load i32, i32* @BROTLI_STATE_HUFFMAN_COMPLEX, align 4
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 5
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @BROTLI_DECODER_NEEDS_MORE_INPUT, align 4
  store i32 %74, i32* %2, align 4
  br label %135

75:                                               ; preds = %54
  br label %76

76:                                               ; preds = %75, %31
  %77 = load i64*, i64** @kCodeLengthPrefixValue, align 8
  %78 = load i64, i64* %10, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  store i64 %80, i64* %11, align 8
  %81 = load i32*, i32** %4, align 8
  %82 = load i64*, i64** @kCodeLengthPrefixLength, align 8
  %83 = load i64, i64* %10, align 8
  %84 = getelementptr inbounds i64, i64* %82, i64 %83
  %85 = load i64, i64* %84, align 8
  %86 = call i32 @BrotliDropBits(i32* %81, i64 %85)
  %87 = load i64, i64* %11, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 3
  %90 = load i64*, i64** %89, align 8
  %91 = load i64, i64* %9, align 8
  %92 = getelementptr inbounds i64, i64* %90, i64 %91
  store i64 %87, i64* %92, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %9, align 8
  %97 = call i32 @BROTLI_LOG_ARRAY_INDEX(i64* %95, i64 %96)
  %98 = load i64, i64* %11, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %100, label %120

100:                                              ; preds = %76
  %101 = load i32, i32* %7, align 4
  %102 = load i64, i64* %11, align 8
  %103 = trunc i64 %102 to i32
  %104 = lshr i32 32, %103
  %105 = sub i32 %101, %104
  store i32 %105, i32* %7, align 4
  %106 = load i64, i64* %6, align 8
  %107 = add i64 %106, 1
  store i64 %107, i64* %6, align 8
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 4
  %110 = load i32*, i32** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = getelementptr inbounds i32, i32* %110, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %112, align 4
  %115 = load i32, i32* %7, align 4
  %116 = sub i32 %115, 1
  %117 = icmp uge i32 %116, 32
  br i1 %117, label %118, label %119

118:                                              ; preds = %100
  br label %124

119:                                              ; preds = %100
  br label %120

120:                                              ; preds = %119, %76
  br label %121

121:                                              ; preds = %120
  %122 = load i64, i64* %8, align 8
  %123 = add i64 %122, 1
  store i64 %123, i64* %8, align 8
  br label %27

124:                                              ; preds = %118, %27
  %125 = load i64, i64* %6, align 8
  %126 = icmp eq i64 %125, 1
  br i1 %126, label %133, label %127

127:                                              ; preds = %124
  %128 = load i32, i32* %7, align 4
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %127
  %131 = load i32, i32* @BROTLI_DECODER_ERROR_FORMAT_CL_SPACE, align 4
  %132 = call i32 @BROTLI_FAILURE(i32 %131)
  store i32 %132, i32* %2, align 4
  br label %135

133:                                              ; preds = %127, %124
  %134 = load i32, i32* @BROTLI_DECODER_SUCCESS, align 4
  store i32 %134, i32* %2, align 4
  br label %135

135:                                              ; preds = %133, %130, %61
  %136 = load i32, i32* %2, align 4
  ret i32 %136
}

declare dso_local i64 @BROTLI_PREDICT_FALSE(i32) #1

declare dso_local i32 @BrotliSafeGetBits(i32*, i32, i64*) #1

declare dso_local i64 @BrotliGetAvailableBits(i32*) #1

declare dso_local i32 @BrotliGetBitsUnmasked(i32*) #1

declare dso_local i32 @BrotliDropBits(i32*, i64) #1

declare dso_local i32 @BROTLI_LOG_ARRAY_INDEX(i64*, i64) #1

declare dso_local i32 @BROTLI_FAILURE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
