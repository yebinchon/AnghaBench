; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rkmppdec.c_rkmpp_write_data.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_rkmppdec.c_rkmpp_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32, i32)* }

@MPP_OK = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Failed to init MPP packet (code = %d)\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@MPP_ERR_BUFFER_FULL = common dso_local global i32 0, align 4
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Buffer full writing %d bytes to decoder\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Wrote %d bytes to decoder\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32*, i32, i32)* @rkmpp_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rkmpp_write_data(%struct.TYPE_12__* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  store %struct.TYPE_11__* %16, %struct.TYPE_11__** %10, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %22, %struct.TYPE_10__** %11, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = load i32, i32* %8, align 4
  %25 = call i32 @mpp_packet_init(i32* %13, i32* %23, i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* @MPP_OK, align 4
  %28 = icmp ne i32 %26, %27
  br i1 %28, label %29, label %35

29:                                               ; preds = %4
  %30 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %31 = load i32, i32* @AV_LOG_ERROR, align 4
  %32 = load i32, i32* %12, align 4
  %33 = call i32 @av_log(%struct.TYPE_12__* %30, i32 %31, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %34, i32* %5, align 4
  br label %80

35:                                               ; preds = %4
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @mpp_packet_set_pts(i32 %36, i32 %37)
  %39 = load i32*, i32** %7, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %13, align 4
  %43 = call i32 @mpp_packet_set_eos(i32 %42)
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %46 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i32 (i32, i32)*, i32 (i32, i32)** %48, align 8
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %51 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %13, align 4
  %54 = call i32 %49(i32 %52, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* @MPP_OK, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %44
  %59 = load i32, i32* %12, align 4
  %60 = load i32, i32* @MPP_ERR_BUFFER_FULL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %58
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %64 = load i32, i32* @AV_LOG_DEBUG, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @av_log(%struct.TYPE_12__* %63, i32 %64, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EAGAIN, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %12, align 4
  br label %71

69:                                               ; preds = %58
  %70 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %69, %62
  br label %77

72:                                               ; preds = %44
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %74 = load i32, i32* @AV_LOG_DEBUG, align 4
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @av_log(%struct.TYPE_12__* %73, i32 %74, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %72, %71
  %78 = call i32 @mpp_packet_deinit(i32* %13)
  %79 = load i32, i32* %12, align 4
  store i32 %79, i32* %5, align 4
  br label %80

80:                                               ; preds = %77, %29
  %81 = load i32, i32* %5, align 4
  ret i32 %81
}

declare dso_local i32 @mpp_packet_init(i32*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_12__*, i32, i8*, i32) #1

declare dso_local i32 @mpp_packet_set_pts(i32, i32) #1

declare dso_local i32 @mpp_packet_set_eos(i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @mpp_packet_deinit(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
