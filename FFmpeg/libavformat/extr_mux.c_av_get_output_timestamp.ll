; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_get_output_timestamp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mux.c_av_get_output_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.AVFormatContext = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av_get_output_timestamp(%struct.AVFormatContext* %0, i32 %1, i32* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.AVFormatContext*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.AVFormatContext* %0, %struct.AVFormatContext** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  %10 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %11 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %4
  %15 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %16 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = bitcast {}** %18 to i32 (%struct.AVFormatContext*, i32, i32*, i32*)**
  %20 = load i32 (%struct.AVFormatContext*, i32, i32*, i32*)*, i32 (%struct.AVFormatContext*, i32, i32*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.AVFormatContext*, i32, i32*, i32*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %14, %4
  %23 = load i32, i32* @ENOSYS, align 4
  %24 = call i32 @AVERROR(i32 %23)
  store i32 %24, i32* %5, align 4
  br label %37

25:                                               ; preds = %14
  %26 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %27 = getelementptr inbounds %struct.AVFormatContext, %struct.AVFormatContext* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = bitcast {}** %29 to i32 (%struct.AVFormatContext*, i32, i32*, i32*)**
  %31 = load i32 (%struct.AVFormatContext*, i32, i32*, i32*)*, i32 (%struct.AVFormatContext*, i32, i32*, i32*)** %30, align 8
  %32 = load %struct.AVFormatContext*, %struct.AVFormatContext** %6, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %8, align 8
  %35 = load i32*, i32** %9, align 8
  %36 = call i32 %31(%struct.AVFormatContext* %32, i32 %33, i32* %34, i32* %35)
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %25, %22
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i32 @AVERROR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
