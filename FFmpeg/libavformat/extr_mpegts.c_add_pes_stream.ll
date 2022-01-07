; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_add_pes_stream.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegts.c_add_pes_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i8*, i8*, i32, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@MPEGTS_SKIP = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i8* null, align 8
@mpegts_push_data = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_9__* (%struct.TYPE_10__*, i32, i32)* @add_pes_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_9__* @add_pes_stream(%struct.TYPE_10__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_10__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_9__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = call %struct.TYPE_9__* @av_mallocz(i32 40)
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %9, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %12 = icmp ne %struct.TYPE_9__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %50

14:                                               ; preds = %3
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 6
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %17, align 8
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 5
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @MPEGTS_SKIP, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 3
  store i8* %32, i8** %34, align 8
  %35 = load i8*, i8** @AV_NOPTS_VALUE, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  store i8* %35, i8** %37, align 8
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** %5, align 8
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @mpegts_push_data, align 4
  %41 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %42 = call i32* @mpegts_open_pes_filter(%struct.TYPE_10__* %38, i32 %39, i32 %40, %struct.TYPE_9__* %41)
  store i32* %42, i32** %8, align 8
  %43 = load i32*, i32** %8, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %14
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  %47 = call i32 @av_free(%struct.TYPE_9__* %46)
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %50

48:                                               ; preds = %14
  %49 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %49, %struct.TYPE_9__** %4, align 8
  br label %50

50:                                               ; preds = %48, %45, %13
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %51
}

declare dso_local %struct.TYPE_9__* @av_mallocz(i32) #1

declare dso_local i32* @mpegts_open_pes_filter(%struct.TYPE_10__*, i32, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @av_free(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
