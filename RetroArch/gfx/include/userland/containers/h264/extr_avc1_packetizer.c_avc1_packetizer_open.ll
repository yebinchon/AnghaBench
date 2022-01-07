; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/h264/extr_avc1_packetizer.c_avc1_packetizer_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/h264/extr_avc1_packetizer.c_avc1_packetizer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32, %struct.TYPE_9__*, %struct.TYPE_10__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32* }
%struct.TYPE_9__ = type { i64, i64 }
%struct.TYPE_10__ = type { i64, i64, i32 }

@VC_CONTAINER_CODEC_H264 = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i64 0, align 8
@VC_CONTAINER_VARIANT_H264_AVC1 = common dso_local global i64 0, align 8
@VC_CONTAINER_VARIANT_H264_DEFAULT = common dso_local global i64 0, align 8
@VC_CONTAINER_ES_FORMAT_FLAG_FRAMED = common dso_local global i32 0, align 4
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i64 0, align 8
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@MAX_FRAME_SIZE = common dso_local global i32 0, align 4
@avc1_packetizer_close = common dso_local global i32 0, align 4
@avc1_packetizer_packetize = common dso_local global i32 0, align 4
@avc1_packetizer_reset = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"using avc1 video packetizer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @avc1_packetizer_open(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %6 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VC_CONTAINER_CODEC_H264, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_9__*, %struct.TYPE_9__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VC_CONTAINER_CODEC_H264, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %13
  %22 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %22, i64* %2, align 8
  br label %107

23:                                               ; preds = %13, %1
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @VC_CONTAINER_VARIANT_H264_AVC1, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %23
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 2
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @VC_CONTAINER_VARIANT_H264_DEFAULT, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %40, i64* %2, align 8
  br label %107

41:                                               ; preds = %31, %23
  %42 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %42, i32 0, i32 3
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @VC_CONTAINER_ES_FORMAT_FLAG_FRAMED, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %41
  %51 = load i64, i64* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 8
  store i64 %51, i64* %2, align 8
  br label %107

52:                                               ; preds = %41
  %53 = call i32* @malloc(i32 4)
  store i32* %53, i32** %4, align 8
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 3
  store i32* %53, i32** %57, align 8
  %58 = load i32*, i32** %4, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %62, label %60

60:                                               ; preds = %52
  %61 = load i64, i64* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 8
  store i64 %61, i64* %2, align 8
  br label %107

62:                                               ; preds = %52
  %63 = load i32*, i32** %4, align 8
  %64 = call i32 @memset(i32* %63, i32 0, i32 4)
  %65 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %65, i32 0, i32 2
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %66, align 8
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %68, i32 0, i32 3
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = call i32 @vc_container_format_copy(%struct.TYPE_9__* %67, %struct.TYPE_10__* %70, i32 0)
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %73 = call i64 @avc1_packetizer_codecconfig(%struct.TYPE_8__* %72)
  store i64 %73, i64* %5, align 8
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %76 = icmp ne i64 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %62
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @free(i32* %78)
  %80 = load i64, i64* %5, align 8
  store i64 %80, i64* %2, align 8
  br label %107

81:                                               ; preds = %62
  %82 = load i64, i64* @VC_CONTAINER_VARIANT_H264_DEFAULT, align 8
  %83 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 2
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 1
  store i64 %82, i64* %86, align 8
  %87 = load i32, i32* @MAX_FRAME_SIZE, align 4
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  store i32 %87, i32* %89, align 8
  %90 = load i32, i32* @avc1_packetizer_close, align 4
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  store i32 %90, i32* %94, align 8
  %95 = load i32, i32* @avc1_packetizer_packetize, align 4
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 1
  store i32 %95, i32* %99, align 4
  %100 = load i32, i32* @avc1_packetizer_reset, align 4
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  store i32 %100, i32* %104, align 8
  %105 = call i32 @LOG_DEBUG(i32 0, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %106 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %106, i64* %2, align 8
  br label %107

107:                                              ; preds = %81, %77, %60, %50, %39, %21
  %108 = load i64, i64* %2, align 8
  ret i64 %108
}

declare dso_local i32* @malloc(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @vc_container_format_copy(%struct.TYPE_9__*, %struct.TYPE_10__*, i32) #1

declare dso_local i64 @avc1_packetizer_codecconfig(%struct.TYPE_8__*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @LOG_DEBUG(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
