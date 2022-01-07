; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_parameter_handler.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_h264.c_h264_parameter_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_9__ = type { i32 }

@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@h264_payload_handler = common dso_local global i32 0, align 4
@H264F_NEXT_PACKET_IS_START = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_FORMAT_FLAG_FRAMED = common dso_local global i32 0, align 4
@H264_TIMESTAMP_CLOCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @h264_parameter_handler(i32* %0, %struct.TYPE_12__* %1, i32* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %10, i64* %9, align 8
  %11 = load i32*, i32** %5, align 8
  %12 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %11)
  %13 = load i32*, i32** %7, align 8
  %14 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %13)
  %15 = call i64 @malloc(i32 4)
  %16 = inttoptr i64 %15 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %8, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %18 = icmp ne %struct.TYPE_13__* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %20, i64* %4, align 8
  br label %86

21:                                               ; preds = %3
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  store %struct.TYPE_13__* %22, %struct.TYPE_13__** %28, align 8
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %30 = call i32 @memset(%struct.TYPE_13__* %29, i32 0, i32 4)
  %31 = load i32*, i32** %5, align 8
  %32 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = call i64 @h264_get_sprop_parameter_sets(i32* %31, %struct.TYPE_12__* %32, i32* %33)
  store i64 %34, i64* %9, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %37 = icmp ne i64 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %21
  %39 = load i64, i64* %9, align 8
  store i64 %39, i64* %4, align 8
  br label %86

40:                                               ; preds = %21
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = call i64 @h264_check_unsupported_features(i32* %41, i32* %42)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i64, i64* %9, align 8
  store i64 %48, i64* %4, align 8
  br label %86

49:                                               ; preds = %40
  %50 = load i32*, i32** %5, align 8
  %51 = load i32*, i32** %7, align 8
  %52 = call i64 @h264_get_packetization_mode(i32* %50, i32* %51)
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %55 = icmp ne i64 %53, %54
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i64, i64* %9, align 8
  store i64 %57, i64* %4, align 8
  br label %86

58:                                               ; preds = %49
  %59 = load i32, i32* @h264_payload_handler, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 1
  store i32 %59, i32* %65, align 4
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* @H264F_NEXT_PACKET_IS_START, align 4
  %70 = call i32 @SET_BIT(i32 %68, i32 %69)
  %71 = load i32, i32* @VC_CONTAINER_ES_FORMAT_FLAG_FRAMED, align 4
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, %71
  store i32 %77, i32* %75, align 4
  %78 = load i32, i32* @H264_TIMESTAMP_CLOCK, align 4
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 0
  store i32 %78, i32* %84, align 8
  %85 = load i64, i64* %9, align 8
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %58, %56, %47, %38, %19
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @h264_get_sprop_parameter_sets(i32*, %struct.TYPE_12__*, i32*) #1

declare dso_local i64 @h264_check_unsupported_features(i32*, i32*) #1

declare dso_local i64 @h264_get_packetization_mode(i32*, i32*) #1

declare dso_local i32 @SET_BIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
