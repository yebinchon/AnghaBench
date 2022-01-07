; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_process_frame_obj.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_sanm.c_process_frame_obj.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i64, i32, i32 }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Dimensions are invalid.\0A\00", align 1
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Error resizing buffers.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [12 x i8] c"Subcodec %d\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*)* @process_frame_obj to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_frame_obj(%struct.TYPE_8__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  %10 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 3
  %12 = call i64 @bytestream2_get_le16u(i32* %11)
  store i64 %12, i64* %4, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = call i64 @bytestream2_get_le16u(i32* %14)
  store i64 %15, i64* %5, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 3
  %18 = call i64 @bytestream2_get_le16u(i32* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = call i64 @bytestream2_get_le16u(i32* %20)
  store i64 %21, i64* %7, align 8
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 3
  %24 = call i64 @bytestream2_get_le16u(i32* %23)
  store i64 %24, i64* %8, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %1
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %37, label %30

30:                                               ; preds = %27, %1
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @AV_LOG_ERROR, align 4
  %35 = call i32 @av_log(i32 %33, i32 %34, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %36, i32* %2, align 4
  br label %138

37:                                               ; preds = %27
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load i64, i64* %7, align 8
  %43 = add nsw i64 %41, %42
  %44 = icmp slt i64 %40, %43
  br i1 %44, label %53, label %45

45:                                               ; preds = %37
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* %8, align 8
  %51 = add nsw i64 %49, %50
  %52 = icmp slt i64 %48, %51
  br i1 %52, label %53, label %105

53:                                               ; preds = %45, %37
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i64, i64* %5, align 8
  %58 = load i64, i64* %7, align 8
  %59 = add nsw i64 %57, %58
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @FFMAX(i64 %59, i64 %62)
  %64 = load i64, i64* %6, align 8
  %65 = load i64, i64* %8, align 8
  %66 = add nsw i64 %64, %65
  %67 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @FFMAX(i64 %66, i64 %69)
  %71 = call i32 @ff_set_dimensions(i32 %56, i32 %63, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %53
  %75 = load i32, i32* %9, align 4
  store i32 %75, i32* %2, align 4
  br label %138

76:                                               ; preds = %53
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %78 = load i64, i64* %5, align 8
  %79 = load i64, i64* %7, align 8
  %80 = add nsw i64 %78, %79
  %81 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = call i32 @FFMAX(i64 %80, i64 %83)
  %85 = load i64, i64* %6, align 8
  %86 = load i64, i64* %8, align 8
  %87 = add nsw i64 %85, %86
  %88 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %89 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @FFMAX(i64 %87, i64 %90)
  %92 = call i32 @init_sizes(%struct.TYPE_8__* %77, i32 %84, i32 %91)
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %94 = call i64 @init_buffers(%struct.TYPE_8__* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %76
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @AV_LOG_ERROR, align 4
  %101 = call i32 @av_log(i32 %99, i32 %100, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %102 = load i32, i32* @ENOMEM, align 4
  %103 = call i32 @AVERROR(i32 %102)
  store i32 %103, i32* %2, align 4
  br label %138

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104, %45
  %106 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 3
  %108 = call i32 @bytestream2_skip(i32* %107, i32 4)
  %109 = load i64, i64* %4, align 8
  switch i64 %109, label %131 [
    i64 1, label %110
    i64 3, label %110
    i64 37, label %117
    i64 47, label %124
  ]

110:                                              ; preds = %105, %105
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %112 = load i64, i64* %6, align 8
  %113 = load i64, i64* %5, align 8
  %114 = load i64, i64* %7, align 8
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @old_codec1(%struct.TYPE_8__* %111, i64 %112, i64 %113, i64 %114, i64 %115)
  store i32 %116, i32* %2, align 4
  br label %138

117:                                              ; preds = %105
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %119 = load i64, i64* %6, align 8
  %120 = load i64, i64* %5, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = call i32 @old_codec37(%struct.TYPE_8__* %118, i64 %119, i64 %120, i64 %121, i64 %122)
  store i32 %123, i32* %2, align 4
  br label %138

124:                                              ; preds = %105
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = load i64, i64* %6, align 8
  %127 = load i64, i64* %5, align 8
  %128 = load i64, i64* %7, align 8
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @old_codec47(%struct.TYPE_8__* %125, i64 %126, i64 %127, i64 %128, i64 %129)
  store i32 %130, i32* %2, align 4
  br label %138

131:                                              ; preds = %105
  %132 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 8
  %135 = load i64, i64* %4, align 8
  %136 = call i32 @avpriv_request_sample(i32 %134, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i64 %135)
  %137 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %137, i32* %2, align 4
  br label %138

138:                                              ; preds = %131, %124, %117, %110, %96, %74, %30
  %139 = load i32, i32* %2, align 4
  ret i32 %139
}

declare dso_local i64 @bytestream2_get_le16u(i32*) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @ff_set_dimensions(i32, i32, i32) #1

declare dso_local i32 @FFMAX(i64, i64) #1

declare dso_local i32 @init_sizes(%struct.TYPE_8__*, i32, i32) #1

declare dso_local i64 @init_buffers(%struct.TYPE_8__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @bytestream2_skip(i32*, i32) #1

declare dso_local i32 @old_codec1(%struct.TYPE_8__*, i64, i64, i64, i64) #1

declare dso_local i32 @old_codec37(%struct.TYPE_8__*, i64, i64, i64, i64) #1

declare dso_local i32 @old_codec47(%struct.TYPE_8__*, i64, i64, i64, i64) #1

declare dso_local i32 @avpriv_request_sample(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
