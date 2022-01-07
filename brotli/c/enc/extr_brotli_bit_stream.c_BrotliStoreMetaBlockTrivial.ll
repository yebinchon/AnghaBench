; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlockTrivial.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BrotliStoreMetaBlockTrivial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32 }

@BROTLI_NUM_LITERAL_SYMBOLS = common dso_local global i32 0, align 4
@BROTLI_NUM_COMMAND_SYMBOLS = common dso_local global i32 0, align 4
@MAX_SIMPLE_DISTANCE_ALPHABET_SIZE = common dso_local global i32 0, align 4
@HuffmanTree = common dso_local global i32 0, align 4
@tree = common dso_local global i32 0, align 4
@MAX_HUFFMAN_TREE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BrotliStoreMetaBlockTrivial(i32* %0, i32* %1, i64 %2, i64 %3, i64 %4, i64 %5, %struct.TYPE_17__* %6, i32* %7, i64 %8, i64* %9, i32* %10) #0 {
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.TYPE_17__*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_14__, align 4
  %24 = alloca %struct.TYPE_16__, align 4
  %25 = alloca %struct.TYPE_15__, align 4
  %26 = alloca i8*, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  store i32* %0, i32** %12, align 8
  store i32* %1, i32** %13, align 8
  store i64 %2, i64* %14, align 8
  store i64 %3, i64* %15, align 8
  store i64 %4, i64* %16, align 8
  store i64 %5, i64* %17, align 8
  store %struct.TYPE_17__* %6, %struct.TYPE_17__** %18, align 8
  store i32* %7, i32** %19, align 8
  store i64 %8, i64* %20, align 8
  store i64* %9, i64** %21, align 8
  store i32* %10, i32** %22, align 8
  %35 = load i32, i32* @BROTLI_NUM_LITERAL_SYMBOLS, align 4
  %36 = zext i32 %35 to i64
  %37 = call i8* @llvm.stacksave()
  store i8* %37, i8** %26, align 8
  %38 = alloca i32, i64 %36, align 16
  store i64 %36, i64* %27, align 8
  %39 = load i32, i32* @BROTLI_NUM_LITERAL_SYMBOLS, align 4
  %40 = zext i32 %39 to i64
  %41 = alloca i32, i64 %40, align 16
  store i64 %40, i64* %28, align 8
  %42 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %29, align 8
  %45 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %30, align 8
  %48 = load i32, i32* @MAX_SIMPLE_DISTANCE_ALPHABET_SIZE, align 4
  %49 = zext i32 %48 to i64
  %50 = alloca i32, i64 %49, align 16
  store i64 %49, i64* %31, align 8
  %51 = load i32, i32* @MAX_SIMPLE_DISTANCE_ALPHABET_SIZE, align 4
  %52 = zext i32 %51 to i64
  %53 = alloca i32, i64 %52, align 16
  store i64 %52, i64* %32, align 8
  %54 = load i32, i32* @HuffmanTree, align 4
  %55 = load i32, i32* @tree, align 4
  %56 = mul nsw i32 %54, %55
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %18, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  store i32 %60, i32* %33, align 4
  %61 = load i64, i64* %17, align 8
  %62 = load i64, i64* %15, align 8
  %63 = load i64*, i64** %21, align 8
  %64 = load i32*, i32** %22, align 8
  %65 = call i32 @StoreCompressedMetaBlockHeader(i64 %61, i64 %62, i64* %63, i32* %64)
  %66 = call i32 @HistogramClearLiteral(%struct.TYPE_14__* %23)
  %67 = call i32 @HistogramClearCommand(%struct.TYPE_16__* %24)
  %68 = call i32 @HistogramClearDistance(%struct.TYPE_15__* %25)
  %69 = load i32*, i32** %13, align 8
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %16, align 8
  %72 = load i32*, i32** %19, align 8
  %73 = load i64, i64* %20, align 8
  %74 = call i32 @BuildHistograms(i32* %69, i64 %70, i64 %71, i32* %72, i64 %73, %struct.TYPE_14__* %23, %struct.TYPE_16__* %24, %struct.TYPE_15__* %25)
  %75 = load i64*, i64** %21, align 8
  %76 = load i32*, i32** %22, align 8
  %77 = call i32 @BrotliWriteBits(i32 13, i32 0, i64* %75, i32* %76)
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* @HuffmanTree, align 4
  %80 = load i32, i32* @MAX_HUFFMAN_TREE_SIZE, align 4
  %81 = call i32 @BROTLI_ALLOC(i32* %78, i32 %79, i32 %80)
  store i32 %81, i32* @tree, align 4
  %82 = load i32*, i32** %12, align 8
  %83 = call i64 @BROTLI_IS_OOM(i32* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %89, label %85

85:                                               ; preds = %11
  %86 = load i32, i32* @tree, align 4
  %87 = call i64 @BROTLI_IS_NULL(i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %85, %11
  store i32 1, i32* %34, align 4
  br label %133

90:                                               ; preds = %85
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load i32, i32* @BROTLI_NUM_LITERAL_SYMBOLS, align 4
  %94 = load i32, i32* @BROTLI_NUM_LITERAL_SYMBOLS, align 4
  %95 = load i32, i32* @tree, align 4
  %96 = load i64*, i64** %21, align 8
  %97 = load i32*, i32** %22, align 8
  %98 = call i32 @BuildAndStoreHuffmanTree(i32 %92, i32 %93, i32 %94, i32 %95, i32* %38, i32* %41, i64* %96, i32* %97)
  %99 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %24, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %102 = load i32, i32* @BROTLI_NUM_COMMAND_SYMBOLS, align 4
  %103 = load i32, i32* @tree, align 4
  %104 = load i64*, i64** %21, align 8
  %105 = load i32*, i32** %22, align 8
  %106 = call i32 @BuildAndStoreHuffmanTree(i32 %100, i32 %101, i32 %102, i32 %103, i32* %44, i32* %47, i64* %104, i32* %105)
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* @MAX_SIMPLE_DISTANCE_ALPHABET_SIZE, align 4
  %110 = load i32, i32* %33, align 4
  %111 = load i32, i32* @tree, align 4
  %112 = load i64*, i64** %21, align 8
  %113 = load i32*, i32** %22, align 8
  %114 = call i32 @BuildAndStoreHuffmanTree(i32 %108, i32 %109, i32 %110, i32 %111, i32* %50, i32* %53, i64* %112, i32* %113)
  %115 = load i32*, i32** %12, align 8
  %116 = load i32, i32* @tree, align 4
  %117 = call i32 @BROTLI_FREE(i32* %115, i32 %116)
  %118 = load i32*, i32** %13, align 8
  %119 = load i64, i64* %14, align 8
  %120 = load i64, i64* %16, align 8
  %121 = load i32*, i32** %19, align 8
  %122 = load i64, i64* %20, align 8
  %123 = load i64*, i64** %21, align 8
  %124 = load i32*, i32** %22, align 8
  %125 = call i32 @StoreDataWithHuffmanCodes(i32* %118, i64 %119, i64 %120, i32* %121, i64 %122, i32* %38, i32* %41, i32* %44, i32* %47, i32* %50, i32* %53, i64* %123, i32* %124)
  %126 = load i64, i64* %17, align 8
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %90
  %129 = load i64*, i64** %21, align 8
  %130 = load i32*, i32** %22, align 8
  %131 = call i32 @JumpToByteBoundary(i64* %129, i32* %130)
  br label %132

132:                                              ; preds = %128, %90
  store i32 0, i32* %34, align 4
  br label %133

133:                                              ; preds = %132, %89
  %134 = load i8*, i8** %26, align 8
  call void @llvm.stackrestore(i8* %134)
  %135 = load i32, i32* %34, align 4
  switch i32 %135, label %137 [
    i32 0, label %136
    i32 1, label %136
  ]

136:                                              ; preds = %133, %133
  ret void

137:                                              ; preds = %133
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @StoreCompressedMetaBlockHeader(i64, i64, i64*, i32*) #2

declare dso_local i32 @HistogramClearLiteral(%struct.TYPE_14__*) #2

declare dso_local i32 @HistogramClearCommand(%struct.TYPE_16__*) #2

declare dso_local i32 @HistogramClearDistance(%struct.TYPE_15__*) #2

declare dso_local i32 @BuildHistograms(i32*, i64, i64, i32*, i64, %struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_15__*) #2

declare dso_local i32 @BrotliWriteBits(i32, i32, i64*, i32*) #2

declare dso_local i32 @BROTLI_ALLOC(i32*, i32, i32) #2

declare dso_local i64 @BROTLI_IS_OOM(i32*) #2

declare dso_local i64 @BROTLI_IS_NULL(i32) #2

declare dso_local i32 @BuildAndStoreHuffmanTree(i32, i32, i32, i32, i32*, i32*, i64*, i32*) #2

declare dso_local i32 @BROTLI_FREE(i32*, i32) #2

declare dso_local i32 @StoreDataWithHuffmanCodes(i32*, i64, i64, i32*, i64, i32*, i32*, i32*, i32*, i32*, i32*, i64*, i32*) #2

declare dso_local i32 @JumpToByteBoundary(i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
