; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_update_streams_from_subdemuxer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_update_streams_from_subdemuxer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.playlist = type { i32, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_9__** }
%struct.TYPE_9__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.playlist*)* @update_streams_from_subdemuxer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @update_streams_from_subdemuxer(i32* %0, %struct.playlist* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.playlist*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.playlist* %1, %struct.playlist** %5, align 8
  br label %10

10:                                               ; preds = %64, %2
  %11 = load %struct.playlist*, %struct.playlist** %5, align 8
  %12 = getelementptr inbounds %struct.playlist, %struct.playlist* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.playlist*, %struct.playlist** %5, align 8
  %15 = getelementptr inbounds %struct.playlist, %struct.playlist* %14, i32 0, i32 3
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %13, %18
  br i1 %19, label %20, label %65

20:                                               ; preds = %10
  %21 = load %struct.playlist*, %struct.playlist** %5, align 8
  %22 = getelementptr inbounds %struct.playlist, %struct.playlist* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %7, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = call %struct.TYPE_9__* @avformat_new_stream(i32* %24, i32* null)
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %8, align 8
  %26 = load %struct.playlist*, %struct.playlist** %5, align 8
  %27 = getelementptr inbounds %struct.playlist, %struct.playlist* %26, i32 0, i32 3
  %28 = load %struct.TYPE_8__*, %struct.TYPE_8__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %28, i32 0, i32 1
  %30 = load %struct.TYPE_9__**, %struct.TYPE_9__*** %29, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_9__*, %struct.TYPE_9__** %30, i64 %32
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  store %struct.TYPE_9__* %34, %struct.TYPE_9__** %9, align 8
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %36 = icmp ne %struct.TYPE_9__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %20
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %3, align 4
  br label %66

40:                                               ; preds = %20
  %41 = load %struct.playlist*, %struct.playlist** %5, align 8
  %42 = getelementptr inbounds %struct.playlist, %struct.playlist* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 4
  %46 = load %struct.playlist*, %struct.playlist** %5, align 8
  %47 = getelementptr inbounds %struct.playlist, %struct.playlist* %46, i32 0, i32 1
  %48 = load %struct.playlist*, %struct.playlist** %5, align 8
  %49 = getelementptr inbounds %struct.playlist, %struct.playlist* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %51 = call i32 @dynarray_add(i32* %47, i32* %49, %struct.TYPE_9__* %50)
  %52 = load i32*, i32** %4, align 8
  %53 = load %struct.playlist*, %struct.playlist** %5, align 8
  %54 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %55 = call i32 @add_stream_to_programs(i32* %52, %struct.playlist* %53, %struct.TYPE_9__* %54)
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %57 = load %struct.playlist*, %struct.playlist** %5, align 8
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %59 = call i32 @set_stream_info_from_input_stream(%struct.TYPE_9__* %56, %struct.playlist* %57, %struct.TYPE_9__* %58)
  store i32 %59, i32* %6, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %40
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %66

64:                                               ; preds = %40
  br label %10

65:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %62, %37
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local %struct.TYPE_9__* @avformat_new_stream(i32*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @dynarray_add(i32*, i32*, %struct.TYPE_9__*) #1

declare dso_local i32 @add_stream_to_programs(i32*, %struct.playlist*, %struct.TYPE_9__*) #1

declare dso_local i32 @set_stream_info_from_input_stream(%struct.TYPE_9__*, %struct.playlist*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
