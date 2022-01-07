; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aresample.c_flush_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aresample.c_flush_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_12__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__**, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@INT64_MIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32, %struct.TYPE_10__**)* @flush_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_frame(%struct.TYPE_11__* %0, i32 %1, %struct.TYPE_10__** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_10__**, align 8
  %8 = alloca %struct.TYPE_12__*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_10__** %2, %struct.TYPE_10__*** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 1
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  store %struct.TYPE_12__* %16, %struct.TYPE_12__** %8, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %8, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  store %struct.TYPE_13__* %19, %struct.TYPE_13__** %9, align 8
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %24, i64 0
  %26 = load %struct.TYPE_11__*, %struct.TYPE_11__** %25, align 8
  store %struct.TYPE_11__* %26, %struct.TYPE_11__** %10, align 8
  store i32 4096, i32* %12, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %28 = load i32, i32* %12, align 4
  %29 = call %struct.TYPE_10__* @ff_get_audio_buffer(%struct.TYPE_11__* %27, i32 %28)
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %11, align 8
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %31 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %7, align 8
  store %struct.TYPE_10__* %30, %struct.TYPE_10__** %31, align 8
  %32 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %33 = icmp ne %struct.TYPE_10__* %32, null
  br i1 %33, label %37, label %34

34:                                               ; preds = %3
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = call i32 @AVERROR(i32 %35)
  store i32 %36, i32* %4, align 4
  br label %90

37:                                               ; preds = %3
  %38 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %39 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @INT64_MIN, align 4
  %42 = call i32 @swr_next_pts(i32 %40, i32 %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @ROUNDED_DIV(i32 %43, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %37
  br label %63

58:                                               ; preds = %37
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = inttoptr i64 %61 to i8*
  br label %63

63:                                               ; preds = %58, %57
  %64 = phi i8* [ null, %57 ], [ %62, %58 ]
  %65 = call i32 @swr_convert(i32 %50, i64 %53, i32 %54, i8* %64, i32 0)
  store i32 %65, i32* %12, align 4
  %66 = load i32, i32* %12, align 4
  %67 = icmp sle i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %63
  %69 = call i32 @av_frame_free(%struct.TYPE_10__** %11)
  %70 = load i32, i32* %12, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %68
  %73 = load i32, i32* @AVERROR_EOF, align 4
  br label %76

74:                                               ; preds = %68
  %75 = load i32, i32* %12, align 4
  br label %76

76:                                               ; preds = %74, %72
  %77 = phi i32 [ %73, %72 ], [ %75, %74 ]
  store i32 %77, i32* %4, align 4
  br label %90

78:                                               ; preds = %63
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %83 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* %12, align 4
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %86 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %85, i32 0, i32 0
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* %13, align 4
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 4
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %78, %76, %34
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local %struct.TYPE_10__* @ff_get_audio_buffer(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @swr_next_pts(i32, i32) #1

declare dso_local i32 @ROUNDED_DIV(i32, i32) #1

declare dso_local i32 @swr_convert(i32, i64, i32, i8*, i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
