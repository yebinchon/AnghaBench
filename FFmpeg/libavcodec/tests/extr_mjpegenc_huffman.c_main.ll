; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_mjpegenc_huffman.c_main.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/tests/extr_mjpegenc_huffman.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }

@__const.main.val_counts = private unnamed_addr constant [5 x %struct.TYPE_10__] [%struct.TYPE_10__ { i32 0, i32 1 }, %struct.TYPE_10__ { i32 1, i32 2 }, %struct.TYPE_10__ { i32 2, i32 5 }, %struct.TYPE_10__ { i32 3, i32 10 }, %struct.TYPE_10__ { i32 4, i32 21 }], align 16
@main.expected = internal constant [5 x %struct.TYPE_11__] [%struct.TYPE_11__ { i32 0, i32 3 }, %struct.TYPE_11__ { i32 1, i32 3 }, %struct.TYPE_11__ { i32 2, i32 3 }, %struct.TYPE_11__ { i32 3, i32 3 }, %struct.TYPE_11__ { i32 4, i32 1 }], align 16
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [109 x i8] c"Built huffman does not equal expectations. Expected: code %d probability %d, Actual: code %d probability %d\0A\00", align 1
@probs_zeroes = common dso_local global %struct.TYPE_11__* null, align 8
@probs_skewed = common dso_local global %struct.TYPE_11__* null, align 8
@probs_sat = common dso_local global %struct.TYPE_11__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x %struct.TYPE_10__], align 16
  %9 = alloca [5 x %struct.TYPE_11__], align 16
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  %10 = bitcast [5 x %struct.TYPE_10__]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 bitcast ([5 x %struct.TYPE_10__]* @__const.main.val_counts to i8*), i64 40, i1 false)
  %11 = getelementptr inbounds [5 x %struct.TYPE_10__], [5 x %struct.TYPE_10__]* %8, i64 0, i64 0
  %12 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %13 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %14 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %13)
  %15 = call i32 @ff_mjpegenc_huffman_compute_bits(%struct.TYPE_10__* %11, %struct.TYPE_11__* %12, i32 %14, i32 3)
  store i32 0, i32* %6, align 4
  br label %16

16:                                               ; preds = %73, %2
  %17 = load i32, i32* %6, align 4
  %18 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %9, i64 0, i64 0
  %19 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %18)
  %20 = icmp slt i32 %17, %19
  br i1 %20, label %21, label %76

21:                                               ; preds = %16
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %9, i64 0, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* @main.expected, i64 0, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %26, %31
  br i1 %32, label %45, label %33

33:                                               ; preds = %21
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %9, i64 0, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %6, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* @main.expected, i64 0, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = icmp ne i32 %38, %43
  br i1 %44, label %45, label %72

45:                                               ; preds = %33, %21
  %46 = load i32, i32* @stderr, align 4
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* @main.expected, i64 0, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* @main.expected, i64 0, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sext i32 %57 to i64
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %9, i64 0, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [5 x %struct.TYPE_11__], [5 x %struct.TYPE_11__]* %9, i64 0, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = call i32 @fprintf(i32 %46, i8* getelementptr inbounds ([109 x i8], [109 x i8]* @.str, i64 0, i64 0), i64 %52, i64 %58, i64 %64, i64 %70)
  store i32 1, i32* %7, align 4
  br label %72

72:                                               ; preds = %45, %33
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %6, align 4
  br label %16

76:                                               ; preds = %16
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** @probs_zeroes, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @probs_zeroes, align 8
  %79 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %78)
  %80 = call i64 @check_lengths(i32 16, i32 18, %struct.TYPE_11__* %77, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %76
  store i32 1, i32* %7, align 4
  br label %83

83:                                               ; preds = %82, %76
  %84 = load %struct.TYPE_11__*, %struct.TYPE_11__** @probs_skewed, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** @probs_skewed, align 8
  %86 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %85)
  %87 = call i64 @check_lengths(i32 16, i32 41282, %struct.TYPE_11__* %84, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %7, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** @probs_sat, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** @probs_sat, align 8
  %93 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__* %92)
  %94 = call i64 @check_lengths(i32 16, i32 669904, %struct.TYPE_11__* %91, i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %90
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %90
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ff_mjpegenc_huffman_compute_bits(%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32) #2

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_11__*) #2

declare dso_local i32 @fprintf(i32, i8*, i64, i64, i64, i64) #2

declare dso_local i64 @check_lengths(i32, i32, %struct.TYPE_11__*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
