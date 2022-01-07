; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BuildAndStoreBlockSplitCode.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BuildAndStoreBlockSplitCode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32*, i32* }

@BROTLI_MAX_BLOCK_TYPE_SYMBOLS = common dso_local global i32 0, align 4
@BROTLI_NUM_BLOCK_LEN_SYMBOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i64, i64, i32*, %struct.TYPE_4__*, i64*, i32*)* @BuildAndStoreBlockSplitCode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildAndStoreBlockSplitCode(i32* %0, i32* %1, i64 %2, i64 %3, i32* %4, %struct.TYPE_4__* %5, i64* %6, i32* %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_4__*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i32, align 4
  %22 = alloca i64, align 8
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i64 %2, i64* %11, align 8
  store i64 %3, i64* %12, align 8
  store i32* %4, i32** %13, align 8
  store %struct.TYPE_4__* %5, %struct.TYPE_4__** %14, align 8
  store i64* %6, i64** %15, align 8
  store i32* %7, i32** %16, align 8
  %23 = load i32, i32* @BROTLI_MAX_BLOCK_TYPE_SYMBOLS, align 4
  %24 = zext i32 %23 to i64
  %25 = call i8* @llvm.stacksave()
  store i8* %25, i8** %17, align 8
  %26 = alloca i32, i64 %24, align 16
  store i64 %24, i64* %18, align 8
  %27 = load i32, i32* @BROTLI_NUM_BLOCK_LEN_SYMBOLS, align 4
  %28 = zext i32 %27 to i64
  %29 = alloca i32, i64 %28, align 16
  store i64 %28, i64* %19, align 8
  %30 = load i64, i64* %12, align 8
  %31 = add i64 %30, 2
  %32 = mul i64 %31, 4
  %33 = call i32 @memset(i32* %26, i32 0, i64 %32)
  %34 = mul nuw i64 4, %28
  %35 = call i32 @memset(i32* %29, i32 0, i64 %34)
  %36 = call i32 @InitBlockTypeCodeCalculator(i32* %21)
  store i64 0, i64* %20, align 8
  br label %37

37:                                               ; preds = %63, %8
  %38 = load i64, i64* %20, align 8
  %39 = load i64, i64* %11, align 8
  %40 = icmp ult i64 %38, %39
  br i1 %40, label %41, label %66

41:                                               ; preds = %37
  %42 = load i32*, i32** %9, align 8
  %43 = load i64, i64* %20, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @NextBlockTypeCode(i32* %21, i32 %45)
  store i64 %46, i64* %22, align 8
  %47 = load i64, i64* %20, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load i64, i64* %22, align 8
  %51 = getelementptr inbounds i32, i32* %26, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %51, align 4
  br label %54

54:                                               ; preds = %49, %41
  %55 = load i32*, i32** %10, align 8
  %56 = load i64, i64* %20, align 8
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @BlockLengthPrefixCode(i32 %58)
  %60 = getelementptr inbounds i32, i32* %29, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %60, align 4
  br label %63

63:                                               ; preds = %54
  %64 = load i64, i64* %20, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %20, align 8
  br label %37

66:                                               ; preds = %37
  %67 = load i64, i64* %12, align 8
  %68 = sub i64 %67, 1
  %69 = load i64*, i64** %15, align 8
  %70 = load i32*, i32** %16, align 8
  %71 = call i32 @StoreVarLenUint8(i64 %68, i64* %69, i32* %70)
  %72 = load i64, i64* %12, align 8
  %73 = icmp ugt i64 %72, 1
  br i1 %73, label %74, label %119

74:                                               ; preds = %66
  %75 = getelementptr inbounds i32, i32* %26, i64 0
  %76 = load i64, i64* %12, align 8
  %77 = add i64 %76, 2
  %78 = load i64, i64* %12, align 8
  %79 = add i64 %78, 2
  %80 = load i32*, i32** %13, align 8
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 2
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i64*, i64** %15, align 8
  %90 = load i32*, i32** %16, align 8
  %91 = call i32 @BuildAndStoreHuffmanTree(i32* %75, i64 %77, i64 %79, i32* %80, i32* %84, i32* %88, i64* %89, i32* %90)
  %92 = getelementptr inbounds i32, i32* %29, i64 0
  %93 = load i32, i32* @BROTLI_NUM_BLOCK_LEN_SYMBOLS, align 4
  %94 = sext i32 %93 to i64
  %95 = load i32, i32* @BROTLI_NUM_BLOCK_LEN_SYMBOLS, align 4
  %96 = sext i32 %95 to i64
  %97 = load i32*, i32** %13, align 8
  %98 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 0
  %106 = load i64*, i64** %15, align 8
  %107 = load i32*, i32** %16, align 8
  %108 = call i32 @BuildAndStoreHuffmanTree(i32* %92, i64 %94, i64 %96, i32* %97, i32* %101, i32* %105, i64* %106, i32* %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32*, i32** %9, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 0
  %115 = load i32, i32* %114, align 4
  %116 = load i64*, i64** %15, align 8
  %117 = load i32*, i32** %16, align 8
  %118 = call i32 @StoreBlockSwitch(%struct.TYPE_4__* %109, i32 %112, i32 %115, i32 1, i64* %116, i32* %117)
  br label %119

119:                                              ; preds = %74, %66
  %120 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %120)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memset(i32*, i32, i64) #2

declare dso_local i32 @InitBlockTypeCodeCalculator(i32*) #2

declare dso_local i64 @NextBlockTypeCode(i32*, i32) #2

declare dso_local i64 @BlockLengthPrefixCode(i32) #2

declare dso_local i32 @StoreVarLenUint8(i64, i64*, i32*) #2

declare dso_local i32 @BuildAndStoreHuffmanTree(i32*, i64, i64, i32*, i32*, i32*, i64*, i32*) #2

declare dso_local i32 @StoreBlockSwitch(%struct.TYPE_4__*, i32, i32, i32, i64*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
