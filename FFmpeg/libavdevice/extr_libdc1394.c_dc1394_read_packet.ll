; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_libdc1394.c_dc1394_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_libdc1394.c_dc1394_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.dc1394_data* }
%struct.dc1394_data = type { i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32* }

@DC1394_SUCCESS = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"failed to release %d frame\0A\00", align 1
@DC1394_CAPTURE_POLICY_WAIT = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"DMA capture failed\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.TYPE_8__*)* @dc1394_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dc1394_read_packet(%struct.TYPE_9__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.dc1394_data*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %4, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %5, align 8
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 0
  %10 = load %struct.dc1394_data*, %struct.dc1394_data** %9, align 8
  store %struct.dc1394_data* %10, %struct.dc1394_data** %6, align 8
  %11 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %12 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = add nsw i32 %13, 1
  store i32 %14, i32* %12, align 8
  %15 = icmp ne i32 %13, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %2
  %17 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %18 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %21 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %20, i32 0, i32 3
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** %21, align 8
  %23 = call i32 @dc1394_capture_enqueue(i32 %19, %struct.TYPE_10__* %22)
  %24 = load i32, i32* @DC1394_SUCCESS, align 4
  %25 = icmp ne i32 %23, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %16
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %28 = load i32, i32* @AV_LOG_ERROR, align 4
  %29 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %30 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %27, i32 %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %31)
  br label %33

33:                                               ; preds = %26, %16
  br label %34

34:                                               ; preds = %33, %2
  %35 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %36 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @DC1394_CAPTURE_POLICY_WAIT, align 4
  %39 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %40 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %39, i32 0, i32 3
  %41 = call i32 @dc1394_capture_dequeue(i32 %37, i32 %38, %struct.TYPE_10__** %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @DC1394_SUCCESS, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %81

45:                                               ; preds = %34
  %46 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %47 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %46, i32 0, i32 3
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = inttoptr i64 %50 to i32*
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 4
  store i32* %51, i32** %53, align 8
  %54 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %55 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %54, i32 0, i32 3
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %62 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = mul nsw i32 %63, 1000000
  %65 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %66 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = or i32 %74, %71
  store i32 %75, i32* %73, align 4
  %76 = load %struct.dc1394_data*, %struct.dc1394_data** %6, align 8
  %77 = getelementptr inbounds %struct.dc1394_data, %struct.dc1394_data* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  br label %86

81:                                               ; preds = %34
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %83 = load i32, i32* @AV_LOG_ERROR, align 4
  %84 = call i32 (%struct.TYPE_9__*, i32, i8*, ...) @av_log(%struct.TYPE_9__* %82, i32 %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %85 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %85, i32* %3, align 4
  br label %90

86:                                               ; preds = %45
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  store i32 %89, i32* %3, align 4
  br label %90

90:                                               ; preds = %86, %81
  %91 = load i32, i32* %3, align 4
  ret i32 %91
}

declare dso_local i32 @dc1394_capture_enqueue(i32, %struct.TYPE_10__*) #1

declare dso_local i32 @av_log(%struct.TYPE_9__*, i32, i8*, ...) #1

declare dso_local i32 @dc1394_capture_dequeue(i32, i32, %struct.TYPE_10__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
