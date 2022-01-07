; ModuleID = '/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decompressBlock_internal.c'
source_filename = "/home/carl/AnghaBench/borg/src/borg/algorithms/zstd/lib/decompress/extr_zstd_decompress_block.c_ZSTD_decompressBlock_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }

@STREAM_ACCUMULATOR_MIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"ZSTD_decompressBlock_internal (size : %u)\00", align 1
@ZSTD_BLOCKSIZE_MAX = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"ZSTD_decodeLiteralsBlock : %u\00", align 1
@ADVANCED_SEQS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decompressBlock_internal(%struct.TYPE_9__* %0, i8* %1, i64 %2, i8* %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i64 %2, i64* %10, align 8
  store i8* %3, i8** %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %22 = load i8*, i8** %11, align 8
  %23 = bitcast i8* %22 to i32*
  store i32* %23, i32** %14, align 8
  %24 = call i64 (...) @MEM_32bits()
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %39

26:                                               ; preds = %6
  %27 = load i32, i32* %13, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %26
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @STREAM_ACCUMULATOR_MIN, align 8
  %35 = shl i64 1, %34
  %36 = icmp ugt i64 %33, %35
  br label %37

37:                                               ; preds = %29, %26
  %38 = phi i1 [ true, %26 ], [ %36, %29 ]
  br label %39

39:                                               ; preds = %37, %6
  %40 = phi i1 [ false, %6 ], [ %38, %37 ]
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %15, align 4
  %42 = load i64, i64* %12, align 8
  %43 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %42)
  %44 = load i64, i64* %12, align 8
  %45 = load i64, i64* @ZSTD_BLOCKSIZE_MAX, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @srcSize_wrong, align 4
  %49 = call i64 @ERROR(i32 %48)
  store i64 %49, i64* %7, align 8
  br label %140

50:                                               ; preds = %39
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %52 = load i8*, i8** %11, align 8
  %53 = load i64, i64* %12, align 8
  %54 = call i64 @ZSTD_decodeLiteralsBlock(%struct.TYPE_9__* %51, i8* %52, i64 %53)
  store i64 %54, i64* %16, align 8
  %55 = load i64, i64* %16, align 8
  %56 = call i32 @DEBUGLOG(i32 5, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i64 %55)
  %57 = load i64, i64* %16, align 8
  %58 = call i64 @ZSTD_isError(i64 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %62

60:                                               ; preds = %50
  %61 = load i64, i64* %16, align 8
  store i64 %61, i64* %7, align 8
  br label %140

62:                                               ; preds = %50
  %63 = load i64, i64* %16, align 8
  %64 = load i32*, i32** %14, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 %63
  store i32* %65, i32** %14, align 8
  %66 = load i64, i64* %16, align 8
  %67 = load i64, i64* %12, align 8
  %68 = sub i64 %67, %66
  store i64 %68, i64* %12, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  store i32 %71, i32* %17, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %73 = load i32*, i32** %14, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_9__* %72, i32* %18, i32* %73, i64 %74)
  store i64 %75, i64* %19, align 8
  %76 = load i64, i64* %19, align 8
  %77 = call i64 @ZSTD_isError(i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %62
  %80 = load i64, i64* %19, align 8
  store i64 %80, i64* %7, align 8
  br label %140

81:                                               ; preds = %62
  %82 = load i64, i64* %19, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %14, align 8
  %85 = load i64, i64* %19, align 8
  %86 = load i64, i64* %12, align 8
  %87 = sub i64 %86, %85
  store i64 %87, i64* %12, align 8
  %88 = load i32, i32* %17, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %117, label %90

90:                                               ; preds = %81
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp ugt i64 %97, 16777216
  br i1 %98, label %99, label %117

99:                                               ; preds = %93, %90
  %100 = load i32, i32* %18, align 4
  %101 = load i32, i32* @ADVANCED_SEQS, align 4
  %102 = icmp sgt i32 %100, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %99
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @ZSTD_getLongOffsetsShare(i32 %106)
  store i64 %107, i64* %20, align 8
  %108 = call i64 (...) @MEM_64bits()
  %109 = icmp ne i64 %108, 0
  %110 = zext i1 %109 to i64
  %111 = select i1 %109, i32 7, i32 20
  %112 = sext i32 %111 to i64
  store i64 %112, i64* %21, align 8
  %113 = load i64, i64* %20, align 8
  %114 = load i64, i64* %21, align 8
  %115 = icmp sge i64 %113, %114
  %116 = zext i1 %115 to i32
  store i32 %116, i32* %17, align 4
  br label %117

117:                                              ; preds = %103, %99, %93, %81
  %118 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  store i32 0, i32* %119, align 8
  %120 = load i32, i32* %17, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %131

122:                                              ; preds = %117
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %124 = load i8*, i8** %9, align 8
  %125 = load i64, i64* %10, align 8
  %126 = load i32*, i32** %14, align 8
  %127 = load i64, i64* %12, align 8
  %128 = load i32, i32* %18, align 4
  %129 = load i32, i32* %15, align 4
  %130 = call i64 @ZSTD_decompressSequencesLong(%struct.TYPE_9__* %123, i8* %124, i64 %125, i32* %126, i64 %127, i32 %128, i32 %129)
  store i64 %130, i64* %7, align 8
  br label %140

131:                                              ; preds = %117
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i64, i64* %10, align 8
  %135 = load i32*, i32** %14, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i32, i32* %18, align 4
  %138 = load i32, i32* %15, align 4
  %139 = call i64 @ZSTD_decompressSequences(%struct.TYPE_9__* %132, i8* %133, i64 %134, i32* %135, i64 %136, i32 %137, i32 %138)
  store i64 %139, i64* %7, align 8
  br label %140

140:                                              ; preds = %131, %122, %79, %60, %47
  %141 = load i64, i64* %7, align 8
  ret i64 %141
}

declare dso_local i64 @MEM_32bits(...) #1

declare dso_local i32 @DEBUGLOG(i32, i8*, i64) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @ZSTD_decodeLiteralsBlock(%struct.TYPE_9__*, i8*, i64) #1

declare dso_local i64 @ZSTD_isError(i64) #1

declare dso_local i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_9__*, i32*, i32*, i64) #1

declare dso_local i64 @ZSTD_getLongOffsetsShare(i32) #1

declare dso_local i64 @MEM_64bits(...) #1

declare dso_local i64 @ZSTD_decompressSequencesLong(%struct.TYPE_9__*, i8*, i64, i32*, i64, i32, i32) #1

declare dso_local i64 @ZSTD_decompressSequences(%struct.TYPE_9__*, i8*, i64, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
