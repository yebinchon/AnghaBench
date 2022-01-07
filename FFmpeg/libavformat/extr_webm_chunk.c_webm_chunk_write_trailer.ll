; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_webm_chunk_write_trailer.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webm_chunk.c_webm_chunk_write_trailer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i64, i32*, %struct.TYPE_9__*, i32, %struct.TYPE_10__* }
%struct.TYPE_9__ = type { {}* }
%struct.TYPE_10__ = type { %struct.TYPE_11__* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*)* @webm_chunk_write_trailer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webm_chunk_write_trailer(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %7 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %6, i32 0, i32 4
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  store %struct.TYPE_10__* %8, %struct.TYPE_10__** %3, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  store %struct.TYPE_11__* %11, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %23, label %16

16:                                               ; preds = %1
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %18 = call i32 @chunk_start(%struct.TYPE_11__* %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  br label %34

22:                                               ; preds = %16
  br label %23

23:                                               ; preds = %22, %1
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 2
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = bitcast {}** %27 to i32 (%struct.TYPE_11__*)**
  %29 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %28, align 8
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %31 = call i32 %29(%struct.TYPE_11__* %30)
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %33 = call i32 @chunk_end(%struct.TYPE_11__* %32, i32 0)
  store i32 %33, i32* %5, align 4
  br label %34

34:                                               ; preds = %23, %21
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 0
  store i64 0, i64* %38, align 8
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = call i32 @avformat_free_context(%struct.TYPE_11__* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @chunk_start(%struct.TYPE_11__*) #1

declare dso_local i32 @chunk_end(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @avformat_free_context(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
