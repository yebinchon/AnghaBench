; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_xcbgrab_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_xcbgrab.c_xcbgrab_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32, i32 }

@XCB_IMAGE_FORMAT_Z_PIXMAP = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [127 x i8] c"Cannot get the image data event_error: response_type:%u error_code:%u sequence:%u resource_id:%u minor_code:%u major_code:%u.\0A\00", align 1
@EACCES = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, %struct.TYPE_14__*)* @xcbgrab_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xcbgrab_frame(%struct.TYPE_15__* %0, %struct.TYPE_14__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca %struct.TYPE_14__*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %4, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %5, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_13__*, %struct.TYPE_13__** %15, align 8
  store %struct.TYPE_13__* %16, %struct.TYPE_13__** %6, align 8
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %9, align 4
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %10, align 8
  %22 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XCB_IMAGE_FORMAT_Z_PIXMAP, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @xcb_get_image(i32 %24, i32 %25, i32 %26, i32 %29, i32 %32, i32 %35, i32 %38, i32 -1)
  store i32 %39, i32* %7, align 4
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = call i32* @xcb_get_image_reply(i32 %42, i32 %43, %struct.TYPE_12__** %10)
  store i32* %44, i32** %8, align 8
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %46 = icmp ne %struct.TYPE_12__* %45, null
  br i1 %46, label %47, label %71

47:                                               ; preds = %2
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %49 = load i32, i32* @AV_LOG_ERROR, align 4
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %54 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %66 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @av_log(%struct.TYPE_15__* %48, i32 %49, i8* getelementptr inbounds ([127 x i8], [127 x i8]* @.str, i64 0, i64 0), i32 %52, i32 %55, i32 %58, i32 %61, i32 %64, i32 %67)
  %69 = load i32, i32* @EACCES, align 4
  %70 = call i32 @AVERROR(i32 %69)
  store i32 %70, i32* %3, align 4
  br label %98

71:                                               ; preds = %2
  %72 = load i32*, i32** %8, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %71
  %75 = load i32, i32* @EAGAIN, align 4
  %76 = call i32 @AVERROR(i32 %75)
  store i32 %76, i32* %3, align 4
  br label %98

77:                                               ; preds = %71
  %78 = load i32*, i32** %8, align 8
  %79 = call i32* @xcb_get_image_data(i32* %78)
  store i32* %79, i32** %11, align 8
  %80 = load i32*, i32** %8, align 8
  %81 = call i32 @xcb_get_image_data_length(i32* %80)
  store i32 %81, i32* %12, align 4
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %83 = load i32, i32* %12, align 4
  %84 = call i32 @av_new_packet(%struct.TYPE_14__* %82, i32 %83)
  store i32 %84, i32* %13, align 4
  %85 = load i32, i32* %13, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %94, label %87

87:                                               ; preds = %77
  %88 = load %struct.TYPE_14__*, %struct.TYPE_14__** %5, align 8
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32*, i32** %11, align 8
  %92 = load i32, i32* %12, align 4
  %93 = call i32 @memcpy(i32 %90, i32* %91, i32 %92)
  br label %94

94:                                               ; preds = %87, %77
  %95 = load i32*, i32** %8, align 8
  %96 = call i32 @free(i32* %95)
  %97 = load i32, i32* %13, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %94, %74, %47
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @xcb_get_image(i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32* @xcb_get_image_reply(i32, i32, %struct.TYPE_12__**) #1

declare dso_local i32 @av_log(%struct.TYPE_15__*, i32, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @xcb_get_image_data(i32*) #1

declare dso_local i32 @xcb_get_image_data_length(i32*) #1

declare dso_local i32 @av_new_packet(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
