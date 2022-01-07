; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_StoreTrivialContextMap.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_brotli_bit_stream.c_StoreTrivialContextMap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BROTLI_MAX_CONTEXT_MAP_SYMBOLS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32*, i64*, i32*)* @StoreTrivialContextMap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StoreTrivialContextMap(i64 %0, i64 %1, i32* %2, i64* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i64* %3, i64** %9, align 8
  store i32* %4, i32** %10, align 8
  %20 = load i64, i64* %6, align 8
  %21 = sub i64 %20, 1
  %22 = load i64*, i64** %9, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = call i32 @StoreVarLenUint8(i64 %21, i64* %22, i32* %23)
  %25 = load i64, i64* %6, align 8
  %26 = icmp ugt i64 %25, 1
  br i1 %26, label %27, label %131

27:                                               ; preds = %5
  %28 = load i64, i64* %7, align 8
  %29 = sub i64 %28, 1
  store i64 %29, i64* %11, align 8
  %30 = load i64, i64* %11, align 8
  %31 = trunc i64 %30 to i32
  %32 = shl i32 1, %31
  %33 = sub i32 %32, 1
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %11, align 8
  %37 = add i64 %35, %36
  store i64 %37, i64* %13, align 8
  %38 = load i32, i32* @BROTLI_MAX_CONTEXT_MAP_SYMBOLS, align 4
  %39 = zext i32 %38 to i64
  %40 = call i8* @llvm.stacksave()
  store i8* %40, i8** %14, align 8
  %41 = alloca i32, i64 %39, align 16
  store i64 %39, i64* %15, align 8
  %42 = load i32, i32* @BROTLI_MAX_CONTEXT_MAP_SYMBOLS, align 4
  %43 = zext i32 %42 to i64
  %44 = alloca i32, i64 %43, align 16
  store i64 %43, i64* %16, align 8
  %45 = load i32, i32* @BROTLI_MAX_CONTEXT_MAP_SYMBOLS, align 4
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %17, align 8
  %48 = load i64, i64* %13, align 8
  %49 = mul i64 %48, 4
  %50 = call i32 @memset(i32* %41, i32 0, i64 %49)
  %51 = load i64*, i64** %9, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = call i32 @BrotliWriteBits(i32 1, i32 1, i64* %51, i32* %52)
  %54 = load i64, i64* %11, align 8
  %55 = sub i64 %54, 1
  %56 = trunc i64 %55 to i32
  %57 = load i64*, i64** %9, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @BrotliWriteBits(i32 4, i32 %56, i64* %57, i32* %58)
  %60 = load i64, i64* %6, align 8
  %61 = trunc i64 %60 to i32
  %62 = load i64, i64* %11, align 8
  %63 = getelementptr inbounds i32, i32* %41, i64 %62
  store i32 %61, i32* %63, align 4
  %64 = getelementptr inbounds i32, i32* %41, i64 0
  store i32 1, i32* %64, align 16
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %18, align 8
  br label %66

66:                                               ; preds = %73, %27
  %67 = load i64, i64* %18, align 8
  %68 = load i64, i64* %13, align 8
  %69 = icmp ult i64 %67, %68
  br i1 %69, label %70, label %76

70:                                               ; preds = %66
  %71 = load i64, i64* %18, align 8
  %72 = getelementptr inbounds i32, i32* %41, i64 %71
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70
  %74 = load i64, i64* %18, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %18, align 8
  br label %66

76:                                               ; preds = %66
  %77 = load i64, i64* %13, align 8
  %78 = load i64, i64* %13, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = load i64*, i64** %9, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = call i32 @BuildAndStoreHuffmanTree(i32* %41, i64 %77, i64 %78, i32* %79, i32* %44, i32* %47, i64* %80, i32* %81)
  store i64 0, i64* %18, align 8
  br label %83

83:                                               ; preds = %123, %76
  %84 = load i64, i64* %18, align 8
  %85 = load i64, i64* %6, align 8
  %86 = icmp ult i64 %84, %85
  br i1 %86, label %87, label %126

87:                                               ; preds = %83
  %88 = load i64, i64* %18, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %87
  br label %96

91:                                               ; preds = %87
  %92 = load i64, i64* %18, align 8
  %93 = load i64, i64* %7, align 8
  %94 = add i64 %92, %93
  %95 = sub i64 %94, 1
  br label %96

96:                                               ; preds = %91, %90
  %97 = phi i64 [ 0, %90 ], [ %95, %91 ]
  store i64 %97, i64* %19, align 8
  %98 = load i64, i64* %19, align 8
  %99 = getelementptr inbounds i32, i32* %44, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i64, i64* %19, align 8
  %102 = getelementptr inbounds i32, i32* %47, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = load i64*, i64** %9, align 8
  %105 = load i32*, i32** %10, align 8
  %106 = call i32 @BrotliWriteBits(i32 %100, i32 %103, i64* %104, i32* %105)
  %107 = load i64, i64* %11, align 8
  %108 = getelementptr inbounds i32, i32* %44, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = load i64, i64* %11, align 8
  %111 = getelementptr inbounds i32, i32* %47, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = load i64*, i64** %9, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = call i32 @BrotliWriteBits(i32 %109, i32 %112, i64* %113, i32* %114)
  %116 = load i64, i64* %11, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i64, i64* %12, align 8
  %119 = trunc i64 %118 to i32
  %120 = load i64*, i64** %9, align 8
  %121 = load i32*, i32** %10, align 8
  %122 = call i32 @BrotliWriteBits(i32 %117, i32 %119, i64* %120, i32* %121)
  br label %123

123:                                              ; preds = %96
  %124 = load i64, i64* %18, align 8
  %125 = add i64 %124, 1
  store i64 %125, i64* %18, align 8
  br label %83

126:                                              ; preds = %83
  %127 = load i64*, i64** %9, align 8
  %128 = load i32*, i32** %10, align 8
  %129 = call i32 @BrotliWriteBits(i32 1, i32 1, i64* %127, i32* %128)
  %130 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %130)
  br label %131

131:                                              ; preds = %126, %5
  ret void
}

declare dso_local i32 @StoreVarLenUint8(i64, i64*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @BrotliWriteBits(i32, i32, i64*, i32*) #1

declare dso_local i32 @BuildAndStoreHuffmanTree(i32*, i64, i64, i32*, i32*, i32*, i64*, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
