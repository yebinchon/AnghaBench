; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_writer.c_rawvideo_writer_open.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/containers/raw/extr_raw_video_writer.c_rawvideo_writer_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_8__*, i32* }
%struct.TYPE_8__ = type { i32, i32, i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@VC_CONTAINER_ERROR_FORMAT_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"container\00", align 1
@VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"y4m\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"yuv4mpeg2\00", align 1
@.str.3 = private unnamed_addr constant [4 x i8] c"yuv\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"using rawvideo writer\00", align 1
@VC_CONTAINER_ERROR_OUT_OF_MEMORY = common dso_local global i32 0, align 4
@rawvideo_writer_close = common dso_local global i32 0, align 4
@rawvideo_writer_write = common dso_local global i32 0, align 4
@rawvideo_writer_control = common dso_local global i32 0, align 4
@VC_CONTAINER_SUCCESS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [36 x i8] c"rawvideo: error opening stream (%i)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rawvideo_writer_open(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %8 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_INVALID, align 4
  store i32 %8, i32* %4, align 4
  %9 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @vc_uri_path_extension(i32 %13)
  store i8* %14, i8** %5, align 8
  store i32 0, i32* %7, align 4
  %15 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @vc_uri_find_query(i32 %19, i32 0, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %5)
  %21 = load i8*, i8** %5, align 8
  %22 = icmp ne i8* %21, null
  br i1 %22, label %25, label %23

23:                                               ; preds = %1
  %24 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %24, i32* %2, align 4
  br label %87

25:                                               ; preds = %1
  %26 = load i8*, i8** %5, align 8
  %27 = call i64 @strcasecmp(i8* %26, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load i8*, i8** %5, align 8
  %31 = call i64 @strcasecmp(i8* %30, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0))
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %29, %25
  store i32 1, i32* %7, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i8*, i8** %5, align 8
  %39 = call i64 @strcasecmp(i8* %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.3, i64 0, i64 0))
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %37
  %42 = load i32, i32* @VC_CONTAINER_ERROR_FORMAT_NOT_SUPPORTED, align 4
  store i32 %42, i32* %2, align 4
  br label %87

43:                                               ; preds = %37, %34
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %45 = call i32 (%struct.TYPE_9__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_9__* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %46 = call %struct.TYPE_10__* @malloc(i32 8)
  store %struct.TYPE_10__* %46, %struct.TYPE_10__** %6, align 8
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = icmp ne %struct.TYPE_10__* %47, null
  br i1 %48, label %51, label %49

49:                                               ; preds = %43
  %50 = load i32, i32* @VC_CONTAINER_ERROR_OUT_OF_MEMORY, align 4
  store i32 %50, i32* %4, align 4
  br label %82

51:                                               ; preds = %43
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %53 = call i32 @memset(%struct.TYPE_10__* %52, i32 0, i32 8)
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_8__*, %struct.TYPE_8__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %57, i32 0, i32 3
  store %struct.TYPE_10__* %54, %struct.TYPE_10__** %58, align 8
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 1
  store i32* %60, i32** %62, align 8
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 4
  %66 = load i32, i32* @rawvideo_writer_close, align 4
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 2
  store i32 %66, i32* %70, align 8
  %71 = load i32, i32* @rawvideo_writer_write, align 4
  %72 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 0
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  store i32 %71, i32* %75, align 4
  %76 = load i32, i32* @rawvideo_writer_control, align 4
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load %struct.TYPE_8__*, %struct.TYPE_8__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store i32 %76, i32* %80, align 8
  %81 = load i32, i32* @VC_CONTAINER_SUCCESS, align 4
  store i32 %81, i32* %2, align 4
  br label %87

82:                                               ; preds = %49
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %84 = load i32, i32* %4, align 4
  %85 = call i32 (%struct.TYPE_9__*, i8*, ...) @LOG_DEBUG(%struct.TYPE_9__* %83, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0), i32 %84)
  %86 = load i32, i32* %4, align 4
  store i32 %86, i32* %2, align 4
  br label %87

87:                                               ; preds = %82, %51, %41, %23
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local i8* @vc_uri_path_extension(i32) #1

declare dso_local i32 @vc_uri_find_query(i32, i32, i8*, i8**) #1

declare dso_local i64 @strcasecmp(i8*, i8*) #1

declare dso_local i32 @LOG_DEBUG(%struct.TYPE_9__*, i8*, ...) #1

declare dso_local %struct.TYPE_10__* @malloc(i32) #1

declare dso_local i32 @memset(%struct.TYPE_10__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
