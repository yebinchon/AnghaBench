; ModuleID = '/home/carl/AnghaBench/brotli/c/enc/extr_compress_fragment_two_pass.c_StoreCommands.c'
source_filename = "/home/carl/AnghaBench/brotli/c/enc/extr_compress_fragment_two_pass.c_StoreCommands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@StoreCommands.kNumExtraBits = internal constant [128 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 12, i32 14, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 24, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 1, i32 1, i32 2, i32 2, i32 3, i32 3, i32 4, i32 4, i32 5, i32 5, i32 6, i32 6, i32 7, i32 7, i32 8, i32 8, i32 9, i32 9, i32 10, i32 10, i32 11, i32 11, i32 12, i32 12, i32 13, i32 13, i32 14, i32 14, i32 15, i32 15, i32 16, i32 16, i32 17, i32 17, i32 18, i32 18, i32 19, i32 19, i32 20, i32 20, i32 21, i32 21, i32 22, i32 22, i32 23, i32 23, i32 24, i32 24], align 16
@StoreCommands.kInsertOffset = internal constant [24 x i32] [i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 8, i32 10, i32 14, i32 18, i32 26, i32 34, i32 50, i32 66, i32 98, i32 130, i32 194, i32 322, i32 578, i32 1090, i32 2114, i32 6210, i32 22594], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64*, i64, i32*, i64, i64*, i64*)* @StoreCommands to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @StoreCommands(i32* %0, i64* %1, i64 %2, i32* %3, i64 %4, i64* %5, i64* %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64*, align 8
  %15 = alloca [256 x i64], align 16
  %16 = alloca [256 x i32], align 16
  %17 = alloca [256 x i32], align 16
  %18 = alloca [128 x i64], align 16
  %19 = alloca [128 x i32], align 16
  %20 = alloca [128 x i32], align 16
  %21 = alloca i64, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  store i32* %0, i32** %8, align 8
  store i64* %1, i64** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32* %3, i32** %11, align 8
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  store i64* %6, i64** %14, align 8
  %29 = bitcast [256 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %29, i8 0, i64 1024, i1 false)
  %30 = bitcast [128 x i64]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %30, i8 0, i64 1024, i1 false)
  %31 = bitcast [128 x i32]* %19 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %31, i8 0, i64 512, i1 false)
  %32 = bitcast [128 x i32]* %20 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %32, i8 0, i64 512, i1 false)
  store i64 0, i64* %21, align 8
  br label %33

33:                                               ; preds = %45, %7
  %34 = load i64, i64* %21, align 8
  %35 = load i64, i64* %10, align 8
  %36 = icmp ult i64 %34, %35
  br i1 %36, label %37, label %48

37:                                               ; preds = %33
  %38 = load i64*, i64** %9, align 8
  %39 = load i64, i64* %21, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %37
  %46 = load i64, i64* %21, align 8
  %47 = add i64 %46, 1
  store i64 %47, i64* %21, align 8
  br label %33

48:                                               ; preds = %33
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds [256 x i32], [256 x i32]* %17, i64 0, i64 0
  %51 = load i64, i64* %10, align 8
  %52 = getelementptr inbounds [256 x i64], [256 x i64]* %15, i64 0, i64 0
  %53 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 0
  %54 = load i64*, i64** %13, align 8
  %55 = load i64*, i64** %14, align 8
  %56 = call i32 @BrotliBuildAndStoreHuffmanTreeFast(i32* %49, i32* %50, i64 %51, i32 8, i64* %52, i32* %53, i64* %54, i64* %55)
  %57 = load i32*, i32** %8, align 8
  %58 = call i64 @BROTLI_IS_OOM(i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %48
  br label %176

61:                                               ; preds = %48
  store i64 0, i64* %21, align 8
  br label %62

62:                                               ; preds = %81, %61
  %63 = load i64, i64* %21, align 8
  %64 = load i64, i64* %12, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %84

66:                                               ; preds = %62
  %67 = load i32*, i32** %11, align 8
  %68 = load i64, i64* %21, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 255
  store i32 %71, i32* %22, align 4
  %72 = load i32, i32* %22, align 4
  %73 = icmp slt i32 %72, 128
  %74 = zext i1 %73 to i32
  %75 = call i32 @BROTLI_DCHECK(i32 %74)
  %76 = load i32, i32* %22, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %78, align 4
  br label %81

81:                                               ; preds = %66
  %82 = load i64, i64* %21, align 8
  %83 = add i64 %82, 1
  store i64 %83, i64* %21, align 8
  br label %62

84:                                               ; preds = %62
  %85 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 1
  %86 = load i32, i32* %85, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %85, align 4
  %88 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 2
  %89 = load i32, i32* %88, align 8
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %88, align 8
  %91 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 64
  %92 = load i32, i32* %91, align 16
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 16
  %94 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 84
  %95 = load i32, i32* %94, align 16
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %94, align 16
  %97 = getelementptr inbounds [128 x i32], [128 x i32]* %20, i64 0, i64 0
  %98 = getelementptr inbounds [128 x i64], [128 x i64]* %18, i64 0, i64 0
  %99 = getelementptr inbounds [128 x i32], [128 x i32]* %19, i64 0, i64 0
  %100 = load i64*, i64** %13, align 8
  %101 = load i64*, i64** %14, align 8
  %102 = call i32 @BuildAndStoreCommandPrefixCode(i32* %97, i64* %98, i32* %99, i64* %100, i64* %101)
  store i64 0, i64* %21, align 8
  br label %103

103:                                              ; preds = %173, %84
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %12, align 8
  %106 = icmp ult i64 %104, %105
  br i1 %106, label %107, label %176

107:                                              ; preds = %103
  %108 = load i32*, i32** %11, align 8
  %109 = load i64, i64* %21, align 8
  %110 = getelementptr inbounds i32, i32* %108, i64 %109
  %111 = load i32, i32* %110, align 4
  store i32 %111, i32* %23, align 4
  %112 = load i32, i32* %23, align 4
  %113 = and i32 %112, 255
  store i32 %113, i32* %24, align 4
  %114 = load i32, i32* %23, align 4
  %115 = ashr i32 %114, 8
  store i32 %115, i32* %25, align 4
  %116 = load i32, i32* %24, align 4
  %117 = icmp slt i32 %116, 128
  %118 = zext i1 %117 to i32
  %119 = call i32 @BROTLI_DCHECK(i32 %118)
  %120 = load i32, i32* %24, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [128 x i64], [128 x i64]* %18, i64 0, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = load i32, i32* %24, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [128 x i32], [128 x i32]* %19, i64 0, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = load i64*, i64** %13, align 8
  %130 = load i64*, i64** %14, align 8
  %131 = call i32 @BrotliWriteBits(i32 %124, i32 %128, i64* %129, i64* %130)
  %132 = load i32, i32* %24, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds [128 x i32], [128 x i32]* @StoreCommands.kNumExtraBits, i64 0, i64 %133
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* %25, align 4
  %137 = load i64*, i64** %13, align 8
  %138 = load i64*, i64** %14, align 8
  %139 = call i32 @BrotliWriteBits(i32 %135, i32 %136, i64* %137, i64* %138)
  %140 = load i32, i32* %24, align 4
  %141 = icmp slt i32 %140, 24
  br i1 %141, label %142, label %172

142:                                              ; preds = %107
  %143 = load i32, i32* %24, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [24 x i32], [24 x i32]* @StoreCommands.kInsertOffset, i64 0, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* %25, align 4
  %148 = add nsw i32 %146, %147
  store i32 %148, i32* %26, align 4
  store i32 0, i32* %27, align 4
  br label %149

149:                                              ; preds = %168, %142
  %150 = load i32, i32* %27, align 4
  %151 = load i32, i32* %26, align 4
  %152 = icmp slt i32 %150, %151
  br i1 %152, label %153, label %171

153:                                              ; preds = %149
  %154 = load i64*, i64** %9, align 8
  %155 = load i64, i64* %154, align 8
  store i64 %155, i64* %28, align 8
  %156 = load i64, i64* %28, align 8
  %157 = getelementptr inbounds [256 x i64], [256 x i64]* %15, i64 0, i64 %156
  %158 = load i64, i64* %157, align 8
  %159 = trunc i64 %158 to i32
  %160 = load i64, i64* %28, align 8
  %161 = getelementptr inbounds [256 x i32], [256 x i32]* %16, i64 0, i64 %160
  %162 = load i32, i32* %161, align 4
  %163 = load i64*, i64** %13, align 8
  %164 = load i64*, i64** %14, align 8
  %165 = call i32 @BrotliWriteBits(i32 %159, i32 %162, i64* %163, i64* %164)
  %166 = load i64*, i64** %9, align 8
  %167 = getelementptr inbounds i64, i64* %166, i32 1
  store i64* %167, i64** %9, align 8
  br label %168

168:                                              ; preds = %153
  %169 = load i32, i32* %27, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %27, align 4
  br label %149

171:                                              ; preds = %149
  br label %172

172:                                              ; preds = %171, %107
  br label %173

173:                                              ; preds = %172
  %174 = load i64, i64* %21, align 8
  %175 = add i64 %174, 1
  store i64 %175, i64* %21, align 8
  br label %103

176:                                              ; preds = %60, %103
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @BrotliBuildAndStoreHuffmanTreeFast(i32*, i32*, i64, i32, i64*, i32*, i64*, i64*) #2

declare dso_local i64 @BROTLI_IS_OOM(i32*) #2

declare dso_local i32 @BROTLI_DCHECK(i32) #2

declare dso_local i32 @BuildAndStoreCommandPrefixCode(i32*, i64*, i32*, i64*, i64*) #2

declare dso_local i32 @BrotliWriteBits(i32, i32, i64*, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
