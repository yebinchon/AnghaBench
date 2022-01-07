; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_huf_compress.c_HUF_compressWeights.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/compress/extr_huf_compress.c_HUF_compressWeights.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@MAX_FSE_TABLELOG_FOR_HUFF_HEADER = common dso_local global i32 0, align 4
@hSize = common dso_local global i64 0, align 8
@cSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64)* @HUF_compressWeights to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compressWeights(i8* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %22 = load i8*, i8** %6, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %10, align 8
  %24 = load i32*, i32** %10, align 8
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  %26 = load i64, i64* %7, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32* %27, i32** %12, align 8
  %28 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  store i32 %28, i32* %13, align 4
  %29 = load i32, i32* @MAX_FSE_TABLELOG_FOR_HUFF_HEADER, align 4
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* @MAX_FSE_TABLELOG_FOR_HUFF_HEADER, align 4
  %31 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %32 = call i32 @FSE_CTABLE_SIZE_U32(i32 %30, i32 %31)
  %33 = zext i32 %32 to i64
  %34 = call i8* @llvm.stacksave()
  store i8* %34, i8** %15, align 8
  %35 = alloca i32, i64 %33, align 16
  store i64 %33, i64* %16, align 8
  %36 = load i32, i32* @MAX_FSE_TABLELOG_FOR_HUFF_HEADER, align 4
  %37 = shl i32 1, %36
  %38 = zext i32 %37 to i64
  %39 = alloca i32, i64 %38, align 16
  store i64 %38, i64* %17, align 8
  %40 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %41 = add nsw i32 %40, 1
  %42 = zext i32 %41 to i64
  %43 = alloca i32, i64 %42, align 16
  store i64 %42, i64* %18, align 8
  %44 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %45 = add nsw i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = alloca i32, i64 %46, align 16
  store i64 %46, i64* %19, align 8
  %48 = load i64, i64* %9, align 8
  %49 = icmp ule i64 %48, 1
  br i1 %49, label %50, label %51

50:                                               ; preds = %4
  store i64 0, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %122

51:                                               ; preds = %4
  %52 = load i8*, i8** %8, align 8
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @HIST_count_simple(i32* %43, i32* %13, i8* %52, i64 %53)
  store i32 %54, i32* %21, align 4
  %55 = load i32, i32* %21, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %9, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %51
  store i64 1, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %122

60:                                               ; preds = %51
  %61 = load i32, i32* %21, align 4
  %62 = icmp eq i32 %61, 1
  br i1 %62, label %63, label %64

63:                                               ; preds = %60
  store i64 0, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %122

64:                                               ; preds = %60
  %65 = load i32, i32* %14, align 4
  %66 = load i64, i64* %9, align 8
  %67 = load i32, i32* %13, align 4
  %68 = call i32 @FSE_optimalTableLog(i32 %65, i64 %66, i32 %67)
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load i64, i64* %9, align 8
  %71 = load i32, i32* %13, align 4
  %72 = call i32 @FSE_normalizeCount(i32* %47, i32 %69, i32* %43, i64 %70, i32 %71)
  %73 = call i32 @CHECK_F(i32 %72)
  %74 = load i64, i64* @hSize, align 8
  %75 = load i32*, i32** %11, align 8
  %76 = load i32*, i32** %12, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = ptrtoint i32* %76 to i64
  %79 = ptrtoint i32* %77 to i64
  %80 = sub i64 %78, %79
  %81 = sdiv exact i64 %80, 4
  %82 = trunc i64 %81 to i32
  %83 = load i32, i32* %13, align 4
  %84 = load i32, i32* %14, align 4
  %85 = call i32 @FSE_writeNCount(i32* %75, i32 %82, i32* %47, i32 %83, i32 %84)
  %86 = call i32 @CHECK_V_F(i64 %74, i32 %85)
  %87 = load i64, i64* @hSize, align 8
  %88 = load i32*, i32** %11, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 %87
  store i32* %89, i32** %11, align 8
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %14, align 4
  %92 = mul nuw i64 4, %38
  %93 = trunc i64 %92 to i32
  %94 = call i32 @FSE_buildCTable_wksp(i32* %35, i32* %47, i32 %90, i32 %91, i32* %39, i32 %93)
  %95 = call i32 @CHECK_F(i32 %94)
  %96 = load i64, i64* @cSize, align 8
  %97 = load i32*, i32** %11, align 8
  %98 = load i32*, i32** %12, align 8
  %99 = load i32*, i32** %11, align 8
  %100 = ptrtoint i32* %98 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  %104 = trunc i64 %103 to i32
  %105 = load i8*, i8** %8, align 8
  %106 = load i64, i64* %9, align 8
  %107 = call i32 @FSE_compress_usingCTable(i32* %97, i32 %104, i8* %105, i64 %106, i32* %35)
  %108 = call i32 @CHECK_V_F(i64 %96, i32 %107)
  %109 = load i64, i64* @cSize, align 8
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %64
  store i64 0, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %122

112:                                              ; preds = %64
  %113 = load i64, i64* @cSize, align 8
  %114 = load i32*, i32** %11, align 8
  %115 = getelementptr inbounds i32, i32* %114, i64 %113
  store i32* %115, i32** %11, align 8
  %116 = load i32*, i32** %11, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = ptrtoint i32* %116 to i64
  %119 = ptrtoint i32* %117 to i64
  %120 = sub i64 %118, %119
  %121 = sdiv exact i64 %120, 4
  store i64 %121, i64* %5, align 8
  store i32 1, i32* %20, align 4
  br label %122

122:                                              ; preds = %112, %111, %63, %59, %50
  %123 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %123)
  %124 = load i64, i64* %5, align 8
  ret i64 %124
}

declare dso_local i32 @FSE_CTABLE_SIZE_U32(i32, i32) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @HIST_count_simple(i32*, i32*, i8*, i64) #1

declare dso_local i32 @FSE_optimalTableLog(i32, i64, i32) #1

declare dso_local i32 @CHECK_F(i32) #1

declare dso_local i32 @FSE_normalizeCount(i32*, i32, i32*, i64, i32) #1

declare dso_local i32 @CHECK_V_F(i64, i32) #1

declare dso_local i32 @FSE_writeNCount(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @FSE_buildCTable_wksp(i32*, i32*, i32, i32, i32*, i32) #1

declare dso_local i32 @FSE_compress_usingCTable(i32*, i32, i8*, i64, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
