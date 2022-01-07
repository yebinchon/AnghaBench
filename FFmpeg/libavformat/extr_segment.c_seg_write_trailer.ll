; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_seg_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_segment.c_seg_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_12__*, %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, i32, i32, i64, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.AVFormatContext*)* @seg_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @seg_write_trailer(%struct.AVFormatContext* %0) #0 {
  %2 = alloca %struct.AVFormatContext*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %2, align 8
  %8 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %9 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %8, i32 0, i32 0
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %9, align 8
  store %struct.TYPE_11__* %10, %struct.TYPE_11__** %3, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %12, align 8
  store %struct.TYPE_12__* %13, %struct.TYPE_12__** %4, align 8
  store i32 0, i32* %7, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %15 = icmp ne %struct.TYPE_12__* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %1
  br label %43

17:                                               ; preds = %1
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %17
  %23 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %24 = call i32 @segment_end(%struct.AVFormatContext* %23, i32 0, i32 1)
  store i32 %24, i32* %7, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %43

27:                                               ; preds = %22
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %28, i32 0, i32 0
  %30 = call i32 @open_null_ctx(i32* %29)
  store i32 %30, i32* %7, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %43

33:                                               ; preds = %27
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %35 = call i32 @av_write_trailer(%struct.TYPE_12__* %34)
  store i32 %35, i32* %7, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = call i32 @close_null_ctxp(i32* %37)
  br label %42

39:                                               ; preds = %17
  %40 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %41 = call i32 @segment_end(%struct.AVFormatContext* %40, i32 1, i32 1)
  store i32 %41, i32* %7, align 4
  br label %42

42:                                               ; preds = %39, %33
  br label %43

43:                                               ; preds = %42, %32, %26, %16
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %43
  %49 = load %struct.AVFormatContext*, %struct.AVFormatContext** %2, align 8
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 6
  %52 = call i32 @ff_format_io_close(%struct.AVFormatContext* %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %43
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 5
  %56 = call i32 @av_dict_free(i32* %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = call i32 @av_opt_free(%struct.TYPE_11__* %57)
  %59 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 4
  %61 = call i32 @av_freep(i32* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 3
  %64 = call i32 @av_freep(i32* %63)
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 2
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 0
  %68 = call i32 @av_freep(i32* %67)
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 1
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** %70, align 8
  store %struct.TYPE_10__* %71, %struct.TYPE_10__** %5, align 8
  br label %72

72:                                               ; preds = %75, %53
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %74 = icmp ne %struct.TYPE_10__* %73, null
  br i1 %74, label %75, label %85

75:                                               ; preds = %72
  %76 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %76, i32 0, i32 1
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  store %struct.TYPE_10__* %78, %struct.TYPE_10__** %6, align 8
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = call i32 @av_freep(i32* %80)
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %83 = call i32 @av_free(%struct.TYPE_10__* %82)
  %84 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_10__* %84, %struct.TYPE_10__** %5, align 8
  br label %72

85:                                               ; preds = %72
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %87 = call i32 @avformat_free_context(%struct.TYPE_12__* %86)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 0
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %89, align 8
  %90 = load i32, i32* %7, align 4
  ret i32 %90
}

declare dso_local i32 @segment_end(%struct.AVFormatContext*, i32, i32) #1

declare dso_local i32 @open_null_ctx(i32*) #1

declare dso_local i32 @av_write_trailer(%struct.TYPE_12__*) #1

declare dso_local i32 @close_null_ctxp(i32*) #1

declare dso_local i32 @ff_format_io_close(%struct.AVFormatContext*, i32*) #1

declare dso_local i32 @av_dict_free(i32*) #1

declare dso_local i32 @av_opt_free(%struct.TYPE_11__*) #1

declare dso_local i32 @av_freep(i32*) #1

declare dso_local i32 @av_free(%struct.TYPE_10__*) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
