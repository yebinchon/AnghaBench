; ModuleID = '/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_muxer_pre.c'
source_filename = "/home/carl/AnghaBench/RetroArch/record/drivers/extr_record_ffmpeg.c_ffmpeg_init_muxer_pre.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32, i8* }
%struct.TYPE_12__ = type { %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_11__ }
%struct.TYPE_10__ = type { %struct.TYPE_13__* }
%struct.TYPE_9__ = type { i64* }
%struct.TYPE_11__ = type { i32 }

@ctx = common dso_local global %struct.TYPE_13__* null, align 8
@AVIO_FLAG_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @ffmpeg_init_muxer_pre to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmpeg_init_muxer_pre(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %4 = call %struct.TYPE_13__* (...) @avformat_alloc_context()
  store %struct.TYPE_13__* %4, %struct.TYPE_13__** @ctx, align 8
  %5 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %6 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call i32 @av_strlcpy(i32* %7, i32 %11, i32 8)
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %1
  %20 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %21, i32 0, i32 0
  %23 = load i64*, i64** %22, align 8
  %24 = call i8* @av_guess_format(i64* %23, i32* null, i32* null)
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 2
  store i8* %24, i8** %26, align 8
  br label %34

27:                                               ; preds = %1
  %28 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %29 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = call i8* @av_guess_format(i64* null, i32* %30, i32* null)
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %27, %19
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 2
  %37 = load i8*, i8** %36, align 8
  %38 = icmp ne i8* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %34
  store i32 0, i32* %2, align 4
  br label %57

40:                                               ; preds = %34
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %42 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %41, i32 0, i32 1
  %43 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* @AVIO_FLAG_WRITE, align 4
  %47 = call i64 @avio_open(i32* %42, i32* %45, i32 %46)
  %48 = icmp slt i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %40
  %50 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %51 = call i32 @av_free(%struct.TYPE_13__* %50)
  store i32 0, i32* %2, align 4
  br label %57

52:                                               ; preds = %40
  %53 = load %struct.TYPE_13__*, %struct.TYPE_13__** @ctx, align 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  store %struct.TYPE_13__* %53, %struct.TYPE_13__** %56, align 8
  store i32 1, i32* %2, align 4
  br label %57

57:                                               ; preds = %52, %49, %39
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local %struct.TYPE_13__* @avformat_alloc_context(...) #1

declare dso_local i32 @av_strlcpy(i32*, i32, i32) #1

declare dso_local i8* @av_guess_format(i64*, i32*, i32*) #1

declare dso_local i64 @avio_open(i32*, i32*, i32) #1

declare dso_local i32 @av_free(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
