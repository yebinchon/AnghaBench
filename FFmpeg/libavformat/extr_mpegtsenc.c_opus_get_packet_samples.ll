; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_opus_get_packet_samples.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_mpegtsenc.c_opus_get_packet_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32* }

@opus_get_packet_samples.durations = internal constant [32 x i32] [i32 480, i32 960, i32 1920, i32 2880, i32 480, i32 960, i32 1920, i32 2880, i32 480, i32 960, i32 1920, i32 2880, i32 480, i32 960, i32 480, i32 960, i32 120, i32 240, i32 480, i32 960, i32 120, i32 240, i32 480, i32 960, i32 120, i32 240, i32 480, i32 960, i32 120, i32 240, i32 480, i32 960], align 16
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Opus packet duration > 120 ms, invalid\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*)* @opus_get_packet_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opus_get_packet_samples(i32* %0, %struct.TYPE_3__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %5, align 8
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp slt i32 %12, 1
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %56

15:                                               ; preds = %2
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = ashr i32 %21, 3
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [32 x i32], [32 x i32]* @opus_get_packet_samples.durations, i64 0, i64 %23
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %6, align 4
  %27 = and i32 %26, 3
  switch i32 %27, label %44 [
    i32 0, label %28
    i32 1, label %29
    i32 2, label %30
    i32 3, label %31
  ]

28:                                               ; preds = %15
  store i32 1, i32* %8, align 4
  br label %44

29:                                               ; preds = %15
  store i32 2, i32* %8, align 4
  br label %44

30:                                               ; preds = %15
  store i32 2, i32* %8, align 4
  br label %44

31:                                               ; preds = %15
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %34, 2
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %56

37:                                               ; preds = %31
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 63
  store i32 %43, i32* %8, align 4
  br label %44

44:                                               ; preds = %15, %37, %30, %29, %28
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %7, align 4
  %47 = mul nsw i32 %45, %46
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp sgt i32 %48, 5760
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32*, i32** %4, align 8
  %52 = load i32, i32* @AV_LOG_WARNING, align 4
  %53 = call i32 @av_log(i32* %51, i32 %52, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %56

54:                                               ; preds = %44
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %54, %50, %36, %14
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @av_log(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
