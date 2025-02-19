; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_avio_close_dir.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avio.c_avio_close_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_10__*)* }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avio_close_dir(%struct.TYPE_11__** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_11__**, align 8
  %4 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__** %0, %struct.TYPE_11__*** %3, align 8
  %5 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %6 = call i32 @av_assert0(%struct.TYPE_11__** %5)
  %7 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %9 = icmp ne %struct.TYPE_11__* %8, null
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = icmp ne %struct.TYPE_10__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* @EINVAL, align 4
  %18 = call i32 @AVERROR(i32 %17)
  store i32 %18, i32* %2, align 4
  br label %36

19:                                               ; preds = %10
  %20 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %4, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_10__*)*, i32 (%struct.TYPE_10__*)** %27, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %30 = call i32 %28(%struct.TYPE_10__* %29)
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %32 = call i32 @ffurl_close(%struct.TYPE_10__* %31)
  %33 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  %34 = call i32 @av_freep(%struct.TYPE_11__** %33)
  %35 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %3, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %35, align 8
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %19, %16
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @av_assert0(%struct.TYPE_11__**) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ffurl_close(%struct.TYPE_10__*) #1

declare dso_local i32 @av_freep(%struct.TYPE_11__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
