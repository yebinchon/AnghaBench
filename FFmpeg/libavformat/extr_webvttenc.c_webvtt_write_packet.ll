; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_webvttenc.c_webvtt_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_webvttenc.c_webvtt_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32, i64, i64 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@AV_PKT_DATA_WEBVTT_IDENTIFIER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c" --> \00", align 1
@AV_PKT_DATA_WEBVTT_SETTINGS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [6 x i8] c" %.*s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, %struct.TYPE_6__*)* @webvtt_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @webvtt_write_packet(%struct.TYPE_7__* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %5, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32 (i32*, i8*, ...) @avio_printf(i32* %13, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = load i32, i32* @AV_PKT_DATA_WEBVTT_IDENTIFIER, align 4
  %17 = call i32* @av_packet_get_side_data(%struct.TYPE_6__* %15, i32 %16, i32* %6)
  store i32* %17, i32** %8, align 8
  %18 = load i32*, i32** %8, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 (i32*, i8*, ...) @avio_printf(i32* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32* %26)
  br label %28

28:                                               ; preds = %23, %20, %2
  %29 = load i32*, i32** %5, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @webvtt_write_time(i32* %29, i64 %32)
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 (i32*, i8*, ...) @avio_printf(i32* %34, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32*, i32** %5, align 8
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 3
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = call i32 @webvtt_write_time(i32* %36, i64 %43)
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = load i32, i32* @AV_PKT_DATA_WEBVTT_SETTINGS, align 4
  %47 = call i32* @av_packet_get_side_data(%struct.TYPE_6__* %45, i32 %46, i32* %7)
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %28
  %51 = load i32, i32* %7, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %50
  %54 = load i32*, i32** %5, align 8
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 (i32*, i8*, ...) @avio_printf(i32* %54, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %53, %50, %28
  %59 = load i32*, i32** %5, align 8
  %60 = call i32 (i32*, i8*, ...) @avio_printf(i32* %59, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @avio_write(i32* %61, i32 %64, i32 %67)
  %69 = load i32*, i32** %5, align 8
  %70 = call i32 (i32*, i8*, ...) @avio_printf(i32* %69, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @avio_printf(i32*, i8*, ...) #1

declare dso_local i32* @av_packet_get_side_data(%struct.TYPE_6__*, i32, i32*) #1

declare dso_local i32 @webvtt_write_time(i32*, i64) #1

declare dso_local i32 @avio_write(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
