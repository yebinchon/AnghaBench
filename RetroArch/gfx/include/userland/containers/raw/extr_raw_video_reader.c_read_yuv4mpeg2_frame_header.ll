; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_read_yuv4mpeg2_frame_header.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_reader.c_read_yuv4mpeg2_frame_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, i32, i64 }

@FRAME_HEADER_SIZE_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"FRAME\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"missing frame marker\00", align 1
@VC_CONTAINER_SUCCESS = common dso_local global i64 0, align 8
@VC_CONTAINER_ERROR_CORRUPTED = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"S%i\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"missing end of frame header marker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.TYPE_11__*)* @read_yuv4mpeg2_frame_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @read_yuv4mpeg2_frame_header(%struct.TYPE_11__* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [5 x i8], align 1
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %11, align 8
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %4, align 8
  %13 = load i32, i32* @FRAME_HEADER_SIZE_MAX, align 4
  %14 = sub nsw i32 %13, 5
  store i32 %14, i32* %5, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %16 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %17 = call i32 @READ_BYTES(%struct.TYPE_11__* %15, i8* %16, i32 5)
  %18 = sext i32 %17 to i64
  %19 = icmp ne i64 %18, 5
  br i1 %19, label %24, label %20

20:                                               ; preds = %1
  %21 = getelementptr inbounds [5 x i8], [5 x i8]* %7, i64 0, i64 0
  %22 = call i64 @memcmp(i8* %21, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 5)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %20, %1
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %26 = call i32 @LOG_ERROR(%struct.TYPE_11__* %25, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %28 = call i64 @STREAM_STATUS(%struct.TYPE_11__* %27)
  %29 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %33 = call i64 @STREAM_STATUS(%struct.TYPE_11__* %32)
  br label %36

34:                                               ; preds = %24
  %35 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  br label %36

36:                                               ; preds = %34, %31
  %37 = phi i64 [ %33, %31 ], [ %35, %34 ]
  store i64 %37, i64* %2, align 8
  br label %76

38:                                               ; preds = %20
  br label %39

39:                                               ; preds = %59, %38
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %41 = call i64 @read_yuv4mpeg2_option(%struct.TYPE_11__* %40, i32* %5)
  %42 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %39
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %44
  %50 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @sscanf(i32 %52, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %6)
  %54 = icmp eq i32 %53, 1
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load i32, i32* %6, align 4
  %57 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  br label %59

59:                                               ; preds = %55, %49, %44
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %62 = call i32 @_READ_U8(%struct.TYPE_11__* %61)
  %63 = icmp ne i32 %62, 10
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %66 = call i32 @LOG_ERROR(%struct.TYPE_11__* %65, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0))
  %67 = load i64, i64* @VC_CONTAINER_ERROR_CORRUPTED, align 8
  store i64 %67, i64* %2, align 8
  br label %76

68:                                               ; preds = %60
  %69 = load i32, i32* @FRAME_HEADER_SIZE_MAX, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sub i32 %69, %70
  %72 = sub i32 %71, 1
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 4
  %75 = load i64, i64* @VC_CONTAINER_SUCCESS, align 8
  store i64 %75, i64* %2, align 8
  br label %76

76:                                               ; preds = %68, %64, %36
  %77 = load i64, i64* %2, align 8
  ret i64 %77
}

declare dso_local i32 @READ_BYTES(%struct.TYPE_11__*, i8*, i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @LOG_ERROR(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @STREAM_STATUS(%struct.TYPE_11__*) #1

declare dso_local i64 @read_yuv4mpeg2_option(%struct.TYPE_11__*, i32*) #1

declare dso_local i32 @sscanf(i32, i8*, i32*) #1

declare dso_local i32 @_READ_U8(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
