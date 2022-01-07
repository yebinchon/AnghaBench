; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo3.c_decode_plane.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_indeo3.c_decode_plane.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32*, i64, i64, i32, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i64, i64, i64, i64 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Read invalid number of motion vectors %d\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@INTRA_NULL = common dso_local global i32 0, align 4
@CELL_STACK_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i32*, i32, i32)* @decode_plane to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_plane(%struct.TYPE_10__* %0, i32* %1, %struct.TYPE_9__* %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_9__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_11__, align 8
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %8, align 8
  store i32* %1, i32** %9, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = call i32 @bytestream_get_le32(i32** %11)
  store i32 %16, i32* %15, align 4
  %17 = load i32, i32* %12, align 4
  %18 = sub nsw i32 %17, 4
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ugt i32 %19, 256
  br i1 %20, label %21, label %29

21:                                               ; preds = %6
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @AV_LOG_ERROR, align 4
  %26 = load i32, i32* %15, align 4
  %27 = call i32 @av_log(i32 %24, i32 %25, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %28, i32* %7, align 4
  br label %93

29:                                               ; preds = %6
  %30 = load i32, i32* %15, align 4
  %31 = mul i32 %30, 2
  %32 = load i32, i32* %12, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %35, i32* %7, align 4
  br label %93

36:                                               ; preds = %29
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32*, i32** %11, align 8
  br label %45

44:                                               ; preds = %36
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32* [ %43, %42 ], [ null, %44 ]
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 5
  store i32* %46, i32** %48, align 8
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %50 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %49, i32 0, i32 4
  %51 = load i32*, i32** %11, align 8
  %52 = load i32, i32* %15, align 4
  %53 = mul i32 %52, 2
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = load i32, i32* %12, align 4
  %57 = load i32, i32* %15, align 4
  %58 = mul i32 %57, 2
  %59 = sub i32 %56, %58
  %60 = shl i32 %59, 3
  %61 = call i32 @init_get_bits(i32* %50, i32* %55, i32 %60)
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 3
  store i64 0, i64* %63, align 8
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 2
  store i64 0, i64* %65, align 8
  %66 = load i32*, i32** %11, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 1
  store i32* %69, i32** %71, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 5
  store i64 0, i64* %73, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = ashr i32 %76, 2
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = ashr i32 %81, 2
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  store i32 %82, i32* %83, align 4
  %84 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  store i64 0, i64* %84, align 8
  %85 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  store i64 0, i64* %85, align 8
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %89 = load i32, i32* @INTRA_NULL, align 4
  %90 = load i32, i32* @CELL_STACK_MAX, align 4
  %91 = load i32, i32* %13, align 4
  %92 = call i32 @parse_bintree(%struct.TYPE_10__* %86, i32* %87, %struct.TYPE_9__* %88, i32 %89, %struct.TYPE_11__* %14, i32 %90, i32 %91)
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %45, %34, %21
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @bytestream_get_le32(i32**) #1

declare dso_local i32 @av_log(i32, i32, i8*, i32) #1

declare dso_local i32 @init_get_bits(i32*, i32*, i32) #1

declare dso_local i32 @parse_bintree(%struct.TYPE_10__*, i32*, %struct.TYPE_9__*, i32, %struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
