; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BuildAndStoreHuffmanTree.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_BuildAndStoreHuffmanTree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64*, i64, i64, i32*, i64*, i64*, i64*, i64*)* @BuildAndStoreHuffmanTree to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @BuildAndStoreHuffmanTree(i64* %0, i64 %1, i64 %2, i32* %3, i64* %4, i64* %5, i64* %6, i64* %7) #0 {
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca i64*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca [4 x i64], align 16
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store i64* %0, i64** %9, align 8
  store i64 %1, i64* %10, align 8
  store i64 %2, i64* %11, align 8
  store i32* %3, i32** %12, align 8
  store i64* %4, i64** %13, align 8
  store i64* %5, i64** %14, align 8
  store i64* %6, i64** %15, align 8
  store i64* %7, i64** %16, align 8
  store i64 0, i64* %17, align 8
  %22 = bitcast [4 x i64]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %22, i8 0, i64 32, i1 false)
  store i64 0, i64* %20, align 8
  store i64 0, i64* %19, align 8
  br label %23

23:                                               ; preds = %49, %8
  %24 = load i64, i64* %19, align 8
  %25 = load i64, i64* %10, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %52

27:                                               ; preds = %23
  %28 = load i64*, i64** %9, align 8
  %29 = load i64, i64* %19, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %48

33:                                               ; preds = %27
  %34 = load i64, i64* %17, align 8
  %35 = icmp ult i64 %34, 4
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load i64, i64* %19, align 8
  %38 = load i64, i64* %17, align 8
  %39 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 %38
  store i64 %37, i64* %39, align 8
  br label %45

40:                                               ; preds = %33
  %41 = load i64, i64* %17, align 8
  %42 = icmp ugt i64 %41, 4
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  br label %52

44:                                               ; preds = %40
  br label %45

45:                                               ; preds = %44, %36
  %46 = load i64, i64* %17, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %17, align 8
  br label %48

48:                                               ; preds = %45, %27
  br label %49

49:                                               ; preds = %48
  %50 = load i64, i64* %19, align 8
  %51 = add i64 %50, 1
  store i64 %51, i64* %19, align 8
  br label %23

52:                                               ; preds = %43, %23
  %53 = load i64, i64* %11, align 8
  %54 = sub i64 %53, 1
  store i64 %54, i64* %21, align 8
  br label %55

55:                                               ; preds = %58, %52
  %56 = load i64, i64* %21, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load i64, i64* %21, align 8
  %60 = lshr i64 %59, 1
  store i64 %60, i64* %21, align 8
  %61 = load i64, i64* %20, align 8
  %62 = add i64 %61, 1
  store i64 %62, i64* %20, align 8
  br label %55

63:                                               ; preds = %55
  %64 = load i64, i64* %17, align 8
  %65 = icmp ule i64 %64, 1
  br i1 %65, label %66, label %84

66:                                               ; preds = %63
  %67 = load i64*, i64** %15, align 8
  %68 = load i64*, i64** %16, align 8
  %69 = call i32 @BrotliWriteBits(i64 4, i64 1, i64* %67, i64* %68)
  %70 = load i64, i64* %20, align 8
  %71 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %72 = load i64, i64* %71, align 16
  %73 = load i64*, i64** %15, align 8
  %74 = load i64*, i64** %16, align 8
  %75 = call i32 @BrotliWriteBits(i64 %70, i64 %72, i64* %73, i64* %74)
  %76 = load i64*, i64** %13, align 8
  %77 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = getelementptr inbounds i64, i64* %76, i64 %78
  store i64 0, i64* %79, align 8
  %80 = load i64*, i64** %14, align 8
  %81 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %82 = load i64, i64* %81, align 16
  %83 = getelementptr inbounds i64, i64* %80, i64 %82
  store i64 0, i64* %83, align 8
  br label %115

84:                                               ; preds = %63
  %85 = load i64*, i64** %13, align 8
  %86 = load i64, i64* %10, align 8
  %87 = mul i64 %86, 8
  %88 = call i32 @memset(i64* %85, i32 0, i64 %87)
  %89 = load i64*, i64** %9, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i32*, i32** %12, align 8
  %92 = load i64*, i64** %13, align 8
  %93 = call i32 @BrotliCreateHuffmanTree(i64* %89, i64 %90, i32 15, i32* %91, i64* %92)
  %94 = load i64*, i64** %13, align 8
  %95 = load i64, i64* %10, align 8
  %96 = load i64*, i64** %14, align 8
  %97 = call i32 @BrotliConvertBitDepthsToSymbols(i64* %94, i64 %95, i64* %96)
  %98 = load i64, i64* %17, align 8
  %99 = icmp ule i64 %98, 4
  br i1 %99, label %100, label %108

100:                                              ; preds = %84
  %101 = load i64*, i64** %13, align 8
  %102 = getelementptr inbounds [4 x i64], [4 x i64]* %18, i64 0, i64 0
  %103 = load i64, i64* %17, align 8
  %104 = load i64, i64* %20, align 8
  %105 = load i64*, i64** %15, align 8
  %106 = load i64*, i64** %16, align 8
  %107 = call i32 @StoreSimpleHuffmanTree(i64* %101, i64* %102, i64 %103, i64 %104, i64* %105, i64* %106)
  br label %115

108:                                              ; preds = %84
  %109 = load i64*, i64** %13, align 8
  %110 = load i64, i64* %10, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i64*, i64** %15, align 8
  %113 = load i64*, i64** %16, align 8
  %114 = call i32 @BrotliStoreHuffmanTree(i64* %109, i64 %110, i32* %111, i64* %112, i64* %113)
  br label %115

115:                                              ; preds = %66, %108, %100
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BrotliWriteBits(i64, i64, i64*, i64*) #2

declare dso_local i32 @memset(i64*, i32, i64) #2

declare dso_local i32 @BrotliCreateHuffmanTree(i64*, i64, i32, i32*, i64*) #2

declare dso_local i32 @BrotliConvertBitDepthsToSymbols(i64*, i64, i64*) #2

declare dso_local i32 @StoreSimpleHuffmanTree(i64*, i64*, i64, i64, i64*, i64*) #2

declare dso_local i32 @BrotliStoreHuffmanTree(i64*, i64, i32*, i64*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
