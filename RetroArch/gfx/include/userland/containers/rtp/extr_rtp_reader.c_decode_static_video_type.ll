; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_decode_static_video_type.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/rtp/extr_rtp_reader.c_decode_static_video_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i32 (i32*, %struct.TYPE_13__*, i32*)*, i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__*, %struct.TYPE_14__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_14__ = type { i64, i32 }

@static_video_payload_types = common dso_local global %struct.TYPE_12__* null, align 8
@FIRST_STATIC_VIDEO_TYPE = common dso_local global i64 0, align 8
@UNSUPPORTED_CODEC = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VC_CONTAINER_ES_TYPE_VIDEO = common dso_local global i32 0, align 4
@STATIC_VIDEO_TIMESTAMP_CLOCK = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_13__*, i32*, i64)* @decode_static_video_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_static_video_type(i32* %0, %struct.TYPE_13__* %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_13__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca %struct.TYPE_12__*, align 8
  store i32* %0, i32** %6, align 8
  store %struct.TYPE_13__* %1, %struct.TYPE_13__** %7, align 8
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %13 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %13, align 8
  store %struct.TYPE_14__* %14, %struct.TYPE_14__** %10, align 8
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** @static_video_payload_types, align 8
  %16 = load i64, i64* %9, align 8
  %17 = load i64, i64* @FIRST_STATIC_VIDEO_TYPE, align 8
  %18 = sub i64 %16, %17
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %15, i64 %18
  store %struct.TYPE_12__* %19, %struct.TYPE_12__** %11, align 8
  %20 = load i32*, i32** %6, align 8
  %21 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %20)
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @VC_CONTAINER_PARAM_UNUSED(i32* %22)
  %24 = load i64, i64* %9, align 8
  %25 = load i64, i64* @FIRST_STATIC_VIDEO_TYPE, align 8
  %26 = icmp uge i64 %24, %25
  %27 = zext i1 %26 to i32
  %28 = call i32 @vc_container_assert(i32 %27)
  %29 = load i64, i64* %9, align 8
  %30 = load i64, i64* @FIRST_STATIC_VIDEO_TYPE, align 8
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** @static_video_payload_types, align 8
  %32 = call i64 @countof(%struct.TYPE_12__* %31)
  %33 = add i64 %30, %32
  %34 = icmp ult i64 %29, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @vc_container_assert(i32 %35)
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UNSUPPORTED_CODEC, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %4
  %43 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %43, i32* %5, align 4
  br label %83

44:                                               ; preds = %4
  %45 = load i32, i32* @VC_CONTAINER_ES_TYPE_VIDEO, align 4
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 8
  %48 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %52 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load i32, i32* @STATIC_VIDEO_TIMESTAMP_CLOCK, align 4
  %54 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %54, i32 0, i32 0
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 1
  store i32 %53, i32* %59, align 4
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %63, i32 0, i32 0
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  store i32 %62, i32* %68, align 4
  %69 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 1
  %71 = load i32 (i32*, %struct.TYPE_13__*, i32*)*, i32 (i32*, %struct.TYPE_13__*, i32*)** %70, align 8
  %72 = icmp ne i32 (i32*, %struct.TYPE_13__*, i32*)* %71, null
  br i1 %72, label %73, label %81

73:                                               ; preds = %44
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 1
  %76 = load i32 (i32*, %struct.TYPE_13__*, i32*)*, i32 (i32*, %struct.TYPE_13__*, i32*)** %75, align 8
  %77 = load i32*, i32** %6, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %7, align 8
  %79 = load i32*, i32** %8, align 8
  %80 = call i32 %76(i32* %77, %struct.TYPE_13__* %78, i32* %79)
  br label %81

81:                                               ; preds = %73, %44
  %82 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %42
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local i32 @VC_CONTAINER_PARAM_UNUSED(i32*) #1

declare dso_local i32 @vc_container_assert(i32) #1

declare dso_local i64 @countof(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
