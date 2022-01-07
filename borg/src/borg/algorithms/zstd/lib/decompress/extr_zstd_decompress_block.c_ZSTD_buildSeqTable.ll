; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_buildSeqTable.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_buildSeqTable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@srcSize_wrong = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxSeq = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32**, i32, i32, i64, i8*, i64, i64*, i64*, i32*, i64, i32, i32)* @ZSTD_buildSeqTable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ZSTD_buildSeqTable(i32* %0, i32** %1, i32 %2, i32 %3, i64 %4, i8* %5, i64 %6, i64* %7, i64* %8, i32* %9, i64 %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32**, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64*, align 8
  %23 = alloca i64*, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i8*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i32, align 4
  %34 = alloca i8*, align 8
  %35 = alloca i64, align 8
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  store i32* %0, i32** %15, align 8
  store i32** %1, i32*** %16, align 8
  store i32 %2, i32* %17, align 4
  store i32 %3, i32* %18, align 4
  store i64 %4, i64* %19, align 8
  store i8* %5, i8** %20, align 8
  store i64 %6, i64* %21, align 8
  store i64* %7, i64** %22, align 8
  store i64* %8, i64** %23, align 8
  store i32* %9, i32** %24, align 8
  store i64 %10, i64* %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %38 = load i32, i32* %17, align 4
  switch i32 %38, label %135 [
    i32 128, label %39
    i32 131, label %73
    i32 129, label %76
    i32 130, label %100
  ]

39:                                               ; preds = %13
  %40 = load i64, i64* %21, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %45, label %42

42:                                               ; preds = %39
  %43 = load i32, i32* @srcSize_wrong, align 4
  %44 = call i64 @ERROR(i32 %43)
  store i64 %44, i64* %14, align 8
  br label %139

45:                                               ; preds = %39
  %46 = load i8*, i8** %20, align 8
  %47 = bitcast i8* %46 to i32*
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %18, align 4
  %50 = icmp ugt i32 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @corruption_detected, align 4
  %53 = call i64 @ERROR(i32 %52)
  store i64 %53, i64* %14, align 8
  br label %139

54:                                               ; preds = %45
  %55 = load i8*, i8** %20, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %56, align 4
  %58 = zext i32 %57 to i64
  store i64 %58, i64* %28, align 8
  %59 = load i64*, i64** %22, align 8
  %60 = load i64, i64* %28, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %29, align 8
  %63 = load i64*, i64** %23, align 8
  %64 = load i64, i64* %28, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %30, align 8
  %67 = load i32*, i32** %15, align 8
  %68 = load i64, i64* %29, align 8
  %69 = load i64, i64* %30, align 8
  %70 = call i32 @ZSTD_buildSeqTable_rle(i32* %67, i64 %68, i64 %69)
  %71 = load i32*, i32** %15, align 8
  %72 = load i32**, i32*** %16, align 8
  store i32* %71, i32** %72, align 8
  store i64 1, i64* %14, align 8
  br label %139

73:                                               ; preds = %13
  %74 = load i32*, i32** %24, align 8
  %75 = load i32**, i32*** %16, align 8
  store i32* %74, i32** %75, align 8
  store i64 0, i64* %14, align 8
  br label %139

76:                                               ; preds = %13
  %77 = load i64, i64* %25, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %76
  %80 = load i32, i32* @corruption_detected, align 4
  %81 = call i64 @ERROR(i32 %80)
  store i64 %81, i64* %14, align 8
  br label %139

82:                                               ; preds = %76
  %83 = load i32, i32* %26, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %82
  %86 = load i32, i32* %27, align 4
  %87 = icmp sgt i32 %86, 24
  br i1 %87, label %88, label %99

88:                                               ; preds = %85
  %89 = load i32**, i32*** %16, align 8
  %90 = load i32*, i32** %89, align 8
  %91 = bitcast i32* %90 to i8*
  store i8* %91, i8** %31, align 8
  %92 = load i64, i64* %19, align 8
  %93 = call i32 @SEQSYMBOL_TABLE_SIZE(i64 %92)
  %94 = sext i32 %93 to i64
  %95 = mul i64 4, %94
  store i64 %95, i64* %32, align 8
  %96 = load i8*, i8** %31, align 8
  %97 = load i64, i64* %32, align 8
  %98 = call i32 @PREFETCH_AREA(i8* %96, i64 %97)
  br label %99

99:                                               ; preds = %88, %85, %82
  store i64 0, i64* %14, align 8
  br label %139

100:                                              ; preds = %13
  %101 = load i32, i32* @MaxSeq, align 4
  %102 = add nsw i32 %101, 1
  %103 = zext i32 %102 to i64
  %104 = call i8* @llvm.stacksave()
  store i8* %104, i8** %34, align 8
  %105 = alloca i32, i64 %103, align 16
  store i64 %103, i64* %35, align 8
  %106 = load i8*, i8** %20, align 8
  %107 = load i64, i64* %21, align 8
  %108 = call i64 @FSE_readNCount(i32* %105, i32* %18, i32* %33, i8* %106, i64 %107)
  store i64 %108, i64* %36, align 8
  %109 = load i64, i64* %36, align 8
  %110 = call i32 @FSE_isError(i64 %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %100
  %113 = load i32, i32* @corruption_detected, align 4
  %114 = call i64 @ERROR(i32 %113)
  store i64 %114, i64* %14, align 8
  store i32 1, i32* %37, align 4
  br label %133

115:                                              ; preds = %100
  %116 = load i32, i32* %33, align 4
  %117 = zext i32 %116 to i64
  %118 = load i64, i64* %19, align 8
  %119 = icmp ugt i64 %117, %118
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load i32, i32* @corruption_detected, align 4
  %122 = call i64 @ERROR(i32 %121)
  store i64 %122, i64* %14, align 8
  store i32 1, i32* %37, align 4
  br label %133

123:                                              ; preds = %115
  %124 = load i32*, i32** %15, align 8
  %125 = load i32, i32* %18, align 4
  %126 = load i64*, i64** %22, align 8
  %127 = load i64*, i64** %23, align 8
  %128 = load i32, i32* %33, align 4
  %129 = call i32 @ZSTD_buildFSETable(i32* %124, i32* %105, i32 %125, i64* %126, i64* %127, i32 %128)
  %130 = load i32*, i32** %15, align 8
  %131 = load i32**, i32*** %16, align 8
  store i32* %130, i32** %131, align 8
  %132 = load i64, i64* %36, align 8
  store i64 %132, i64* %14, align 8
  store i32 1, i32* %37, align 4
  br label %133

133:                                              ; preds = %123, %120, %112
  %134 = load i8*, i8** %34, align 8
  call void @llvm.stackrestore(i8* %134)
  br label %139

135:                                              ; preds = %13
  %136 = call i32 @assert(i32 0)
  %137 = load i32, i32* @GENERIC, align 4
  %138 = call i64 @ERROR(i32 %137)
  store i64 %138, i64* %14, align 8
  br label %139

139:                                              ; preds = %135, %133, %99, %79, %73, %54, %51, %42
  %140 = load i64, i64* %14, align 8
  ret i64 %140
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_buildSeqTable_rle(i32*, i64, i64) #1

declare dso_local i32 @SEQSYMBOL_TABLE_SIZE(i64) #1

declare dso_local i32 @PREFETCH_AREA(i8*, i64) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @FSE_readNCount(i32*, i32*, i32*, i8*, i64) #1

declare dso_local i32 @FSE_isError(i64) #1

declare dso_local i32 @ZSTD_buildFSETable(i32*, i32*, i32, i64*, i64*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
