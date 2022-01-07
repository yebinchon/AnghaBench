; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_v4l2_get_device_list.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_v4l2_get_device_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.video_data* }
%struct.video_data = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.dirent = type { i8* }
%struct.TYPE_13__ = type { %struct.TYPE_13__*, %struct.TYPE_13__* }
%struct.v4l2_capability = type { i8* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"/dev\00", align 1
@errno = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Couldn't open the directory: %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/dev/%s\00", align 1
@VIDIOC_QUERYCAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"ioctl(VIDIOC_QUERYCAP): %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.TYPE_12__*)* @v4l2_get_device_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_get_device_list(%struct.TYPE_11__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.video_data*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.dirent*, align 8
  %9 = alloca %struct.TYPE_13__*, align 8
  %10 = alloca %struct.v4l2_capability, align 8
  %11 = alloca i32, align 4
  %12 = alloca [256 x i8], align 16
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 0
  %15 = load %struct.video_data*, %struct.video_data** %14, align 8
  store %struct.video_data* %15, %struct.video_data** %6, align 8
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %9, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %17 = icmp ne %struct.TYPE_12__* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = call i32 @AVERROR(i32 %19)
  store i32 %20, i32* %3, align 4
  br label %149

21:                                               ; preds = %2
  %22 = call i32* @opendir(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  store i32* %22, i32** %7, align 8
  %23 = load i32*, i32** %7, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %34, label %25

25:                                               ; preds = %21
  %26 = load i32, i32* @errno, align 4
  %27 = call i32 @AVERROR(i32 %26)
  store i32 %27, i32* %11, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %29 = load i32, i32* @AV_LOG_ERROR, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i32 @av_err2str(i32 %30)
  %32 = call i32 @av_log(%struct.TYPE_11__* %28, i32 %29, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %11, align 4
  store i32 %33, i32* %3, align 4
  br label %149

34:                                               ; preds = %21
  br label %35

35:                                               ; preds = %114, %58, %45, %34
  %36 = load i32*, i32** %7, align 8
  %37 = call %struct.dirent* @readdir(i32* %36)
  store %struct.dirent* %37, %struct.dirent** %8, align 8
  %38 = icmp ne %struct.dirent* %37, null
  br i1 %38, label %39, label %145

39:                                               ; preds = %35
  %40 = load %struct.dirent*, %struct.dirent** %8, align 8
  %41 = getelementptr inbounds %struct.dirent, %struct.dirent* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = call i32 @v4l2_is_v4l_dev(i8* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  br label %35

46:                                               ; preds = %39
  %47 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %48 = load %struct.dirent*, %struct.dirent** %8, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @snprintf(i8* %47, i32 256, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8* %50)
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %54 = call i32 @device_open(%struct.TYPE_11__* %52, i8* %53)
  %55 = load %struct.video_data*, %struct.video_data** %6, align 8
  %56 = getelementptr inbounds %struct.video_data, %struct.video_data* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = icmp slt i32 %54, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %46
  br label %35

59:                                               ; preds = %46
  %60 = load %struct.video_data*, %struct.video_data** %6, align 8
  %61 = getelementptr inbounds %struct.video_data, %struct.video_data* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @VIDIOC_QUERYCAP, align 4
  %64 = call i64 @v4l2_ioctl(i32 %62, i32 %63, %struct.v4l2_capability* %10)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load i32, i32* @errno, align 4
  %68 = call i32 @AVERROR(i32 %67)
  store i32 %68, i32* %11, align 4
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %70 = load i32, i32* @AV_LOG_ERROR, align 4
  %71 = load i32, i32* %11, align 4
  %72 = call i32 @av_err2str(i32 %71)
  %73 = call i32 @av_log(%struct.TYPE_11__* %69, i32 %70, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 %72)
  br label %121

74:                                               ; preds = %59
  %75 = call %struct.TYPE_13__* @av_mallocz(i32 16)
  store %struct.TYPE_13__* %75, %struct.TYPE_13__** %9, align 8
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %77 = icmp ne %struct.TYPE_13__* %76, null
  br i1 %77, label %81, label %78

78:                                               ; preds = %74
  %79 = load i32, i32* @ENOMEM, align 4
  %80 = call i32 @AVERROR(i32 %79)
  store i32 %80, i32* %11, align 4
  br label %121

81:                                               ; preds = %74
  %82 = getelementptr inbounds [256 x i8], [256 x i8]* %12, i64 0, i64 0
  %83 = call i8* @av_strdup(i8* %82)
  %84 = bitcast i8* %83 to %struct.TYPE_13__*
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 1
  store %struct.TYPE_13__* %84, %struct.TYPE_13__** %86, align 8
  %87 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %10, i32 0, i32 0
  %88 = load i8*, i8** %87, align 8
  %89 = call i8* @av_strdup(i8* %88)
  %90 = bitcast i8* %89 to %struct.TYPE_13__*
  %91 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 0
  store %struct.TYPE_13__* %90, %struct.TYPE_13__** %92, align 8
  %93 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %94, align 8
  %96 = icmp ne %struct.TYPE_13__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %81
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_13__*, %struct.TYPE_13__** %99, align 8
  %101 = icmp ne %struct.TYPE_13__* %100, null
  br i1 %101, label %105, label %102

102:                                              ; preds = %97, %81
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = call i32 @AVERROR(i32 %103)
  store i32 %104, i32* %11, align 4
  br label %121

105:                                              ; preds = %97
  %106 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %111 = call i32 @av_dynarray_add_nofree(i32* %107, i32* %109, %struct.TYPE_13__* %110)
  store i32 %111, i32* %11, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %105
  br label %121

114:                                              ; preds = %105
  %115 = load %struct.video_data*, %struct.video_data** %6, align 8
  %116 = getelementptr inbounds %struct.video_data, %struct.video_data* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @v4l2_close(i32 %117)
  %119 = load %struct.video_data*, %struct.video_data** %6, align 8
  %120 = getelementptr inbounds %struct.video_data, %struct.video_data* %119, i32 0, i32 0
  store i32 -1, i32* %120, align 4
  br label %35

121:                                              ; preds = %113, %102, %78, %66
  %122 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %123 = icmp ne %struct.TYPE_13__* %122, null
  br i1 %123, label %124, label %132

124:                                              ; preds = %121
  %125 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %125, i32 0, i32 1
  %127 = call i32 @av_freep(%struct.TYPE_13__** %126)
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = call i32 @av_freep(%struct.TYPE_13__** %129)
  %131 = call i32 @av_freep(%struct.TYPE_13__** %9)
  br label %132

132:                                              ; preds = %124, %121
  %133 = load %struct.video_data*, %struct.video_data** %6, align 8
  %134 = getelementptr inbounds %struct.video_data, %struct.video_data* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp sge i32 %135, 0
  br i1 %136, label %137, label %142

137:                                              ; preds = %132
  %138 = load %struct.video_data*, %struct.video_data** %6, align 8
  %139 = getelementptr inbounds %struct.video_data, %struct.video_data* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @v4l2_close(i32 %140)
  br label %142

142:                                              ; preds = %137, %132
  %143 = load %struct.video_data*, %struct.video_data** %6, align 8
  %144 = getelementptr inbounds %struct.video_data, %struct.video_data* %143, i32 0, i32 0
  store i32 -1, i32* %144, align 4
  br label %145

145:                                              ; preds = %142, %35
  %146 = load i32*, i32** %7, align 8
  %147 = call i32 @closedir(i32* %146)
  %148 = load i32, i32* %11, align 4
  store i32 %148, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %25, %18
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @av_log(%struct.TYPE_11__*, i32, i8*, i32) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i32 @v4l2_is_v4l_dev(i8*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32 @device_open(%struct.TYPE_11__*, i8*) #1

declare dso_local i64 @v4l2_ioctl(i32, i32, %struct.v4l2_capability*) #1

declare dso_local %struct.TYPE_13__* @av_mallocz(i32) #1

declare dso_local i8* @av_strdup(i8*) #1

declare dso_local i32 @av_dynarray_add_nofree(i32*, i32*, %struct.TYPE_13__*) #1

declare dso_local i32 @v4l2_close(i32) #1

declare dso_local i32 @av_freep(%struct.TYPE_13__**) #1

declare dso_local i32 @closedir(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
