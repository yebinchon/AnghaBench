; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_nsvdec.c_nsv_read_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_nsvdec.c_nsv_read_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32* }

@NSV_UNSYNC = common dso_local global i64 0, align 8
@NSV_MAX_RESYNC_TRIES = common dso_local global i32 0, align 4
@NSV_FOUND_NSVF = common dso_local global i64 0, align 8
@NSV_FOUND_NSVS = common dso_local global i64 0, align 8
@AV_LOG_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"parsed header\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @nsv_read_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsv_read_header(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %7 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %8 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  store %struct.TYPE_11__* %9, %struct.TYPE_11__** %4, align 8
  %10 = load i64, i64* @NSV_UNSYNC, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  store i64 %10, i64* %12, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i64 1
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  store i32* null, i32** %17, align 8
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_10__*, %struct.TYPE_10__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %20, i64 0
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  store i32 0, i32* %5, align 4
  br label %23

23:                                               ; preds = %61, %1
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @NSV_MAX_RESYNC_TRIES, align 4
  %26 = icmp slt i32 %24, %25
  br i1 %26, label %27, label %64

27:                                               ; preds = %23
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %29 = call i64 @nsv_resync(%struct.TYPE_12__* %28)
  %30 = icmp slt i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 -1, i32* %2, align 4
  br label %77

32:                                               ; preds = %27
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @NSV_FOUND_NSVF, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %46

38:                                               ; preds = %32
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %40 = call i32 @nsv_parse_NSVf_header(%struct.TYPE_12__* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %6, align 4
  store i32 %44, i32* %2, align 4
  br label %77

45:                                               ; preds = %38
  br label %46

46:                                               ; preds = %45, %32
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @NSV_FOUND_NSVS, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %54 = call i32 @nsv_parse_NSVs_header(%struct.TYPE_12__* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %52
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %77

59:                                               ; preds = %52
  br label %64

60:                                               ; preds = %46
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %5, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %5, align 4
  br label %23

64:                                               ; preds = %59, %23
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp slt i32 %67, 1
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %77

70:                                               ; preds = %64
  %71 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %72 = call i32 @nsv_read_chunk(%struct.TYPE_12__* %71, i32 1)
  store i32 %72, i32* %6, align 4
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %74 = load i32, i32* @AV_LOG_TRACE, align 4
  %75 = call i32 @av_log(%struct.TYPE_12__* %73, i32 %74, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %76 = load i32, i32* %6, align 4
  store i32 %76, i32* %2, align 4
  br label %77

77:                                               ; preds = %70, %69, %57, %43, %31
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i64 @nsv_resync(%struct.TYPE_12__*) #1

declare dso_local i32 @nsv_parse_NSVf_header(%struct.TYPE_12__*) #1

declare dso_local i32 @nsv_parse_NSVs_header(%struct.TYPE_12__*) #1

declare dso_local i32 @nsv_read_chunk(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
