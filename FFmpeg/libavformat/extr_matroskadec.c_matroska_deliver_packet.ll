; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_deliver_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_matroskadec.c_matroska_deliver_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_12__ = type { i64 }

@AV_PKT_DATA_PALETTE = common dso_local global i32 0, align 4
@AVPALETTE_SIZE = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"Cannot append palette to packet\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @matroska_deliver_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @matroska_deliver_packet(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %57

13:                                               ; preds = %2
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  store %struct.TYPE_10__* %17, %struct.TYPE_10__** %6, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 2
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = call i32 @ff_packet_list_get(i64* %19, i32* %21, %struct.TYPE_12__* %22)
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i64 %27
  store %struct.TYPE_10__* %28, %struct.TYPE_10__** %7, align 8
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %56

33:                                               ; preds = %13
  %34 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %35 = load i32, i32* @AV_PKT_DATA_PALETTE, align 4
  %36 = load i32, i32* @AVPALETTE_SIZE, align 4
  %37 = call i32* @av_packet_new_side_data(%struct.TYPE_12__* %34, i32 %35, i32 %36)
  store i32* %37, i32** %8, align 8
  %38 = load i32*, i32** %8, align 8
  %39 = icmp ne i32* %38, null
  br i1 %39, label %46, label %40

40:                                               ; preds = %33
  %41 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @AV_LOG_ERROR, align 4
  %45 = call i32 @av_log(i32 %43, i32 %44, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  br label %53

46:                                               ; preds = %33
  %47 = load i32*, i32** %8, align 8
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @AVPALETTE_SIZE, align 4
  %52 = call i32 @memcpy(i32* %47, i32 %50, i32 %51)
  br label %53

53:                                               ; preds = %46, %40
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %13
  store i32 0, i32* %3, align 4
  br label %58

57:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %56
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @ff_packet_list_get(i64*, i32*, %struct.TYPE_12__*) #1

declare dso_local i32* @av_packet_new_side_data(%struct.TYPE_12__*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
