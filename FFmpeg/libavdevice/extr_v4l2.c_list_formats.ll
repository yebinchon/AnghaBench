; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_list_formats.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavdevice/extr_v4l2.c_list_formats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.video_data* }
%struct.video_data = type { i32 }
%struct.v4l2_fmtdesc = type { i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { i8* }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@VIDIOC_ENUM_FMT = common dso_local global i32 0, align 4
@V4L2_FMT_FLAG_COMPRESSED = common dso_local global i32 0, align 4
@V4L_RAWFORMATS = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Raw       : %11s : %20s :\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"Unsupported\00", align 1
@V4L_COMPFORMATS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [26 x i8] c"Compressed: %11s : %20s :\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@V4L2_FMT_FLAG_EMULATED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32)* @list_formats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @list_formats(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.video_data*, align 8
  %6 = alloca %struct.v4l2_fmtdesc, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.video_data*, %struct.video_data** %12, align 8
  store %struct.video_data* %13, %struct.video_data** %5, align 8
  %14 = bitcast %struct.v4l2_fmtdesc* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 20, i1 false)
  %15 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 4
  %16 = load i32, i32* @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 4
  store i32 %16, i32* %15, align 4
  br label %17

17:                                               ; preds = %91, %89, %2
  %18 = load %struct.video_data*, %struct.video_data** %5, align 8
  %19 = getelementptr inbounds %struct.video_data, %struct.video_data* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @VIDIOC_ENUM_FMT, align 4
  %22 = call i32 @v4l2_ioctl(i32 %20, i32 %21, %struct.v4l2_fmtdesc* %6)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br i1 %24, label %25, label %95

25:                                               ; preds = %17
  %26 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @ff_fmt_v4l2codec(i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ff_fmt_v4l2ff(i32 %30, i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 3
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %33, align 4
  %36 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @V4L2_FMT_FLAG_COMPRESSED, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %61, label %41

41:                                               ; preds = %25
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @V4L_RAWFORMATS, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %61

46:                                               ; preds = %41
  %47 = load i32, i32* %8, align 4
  %48 = call i8* @av_get_pix_fmt_name(i32 %47)
  store i8* %48, i8** %9, align 8
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %50 = load i32, i32* @AV_LOG_INFO, align 4
  %51 = load i8*, i8** %9, align 8
  %52 = icmp ne i8* %51, null
  br i1 %52, label %53, label %55

53:                                               ; preds = %46
  %54 = load i8*, i8** %9, align 8
  br label %56

55:                                               ; preds = %46
  br label %56

56:                                               ; preds = %55, %53
  %57 = phi i8* [ %54, %53 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %55 ]
  %58 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %49, i32 %50, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %57, i32 %59)
  br label %91

61:                                               ; preds = %41, %25
  %62 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @V4L2_FMT_FLAG_COMPRESSED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %89

67:                                               ; preds = %61
  %68 = load i32, i32* %4, align 4
  %69 = load i32, i32* @V4L_COMPFORMATS, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %89

72:                                               ; preds = %67
  %73 = load i32, i32* %7, align 4
  %74 = call %struct.TYPE_8__* @avcodec_descriptor_get(i32 %73)
  store %struct.TYPE_8__* %74, %struct.TYPE_8__** %10, align 8
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %76 = load i32, i32* @AV_LOG_INFO, align 4
  %77 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %78 = icmp ne %struct.TYPE_8__* %77, null
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  br label %84

83:                                               ; preds = %72
  br label %84

84:                                               ; preds = %83, %79
  %85 = phi i8* [ %82, %79 ], [ getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), %83 ]
  %86 = getelementptr inbounds %struct.v4l2_fmtdesc, %struct.v4l2_fmtdesc* %6, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %75, i32 %76, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i8* %85, i32 %87)
  br label %90

89:                                               ; preds = %67, %61
  br label %17

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %56
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %93 = load i32, i32* @AV_LOG_INFO, align 4
  %94 = call i32 (%struct.TYPE_7__*, i32, i8*, ...) @av_log(%struct.TYPE_7__* %92, i32 %93, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  br label %17

95:                                               ; preds = %17
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @v4l2_ioctl(i32, i32, %struct.v4l2_fmtdesc*) #2

declare dso_local i32 @ff_fmt_v4l2codec(i32) #2

declare dso_local i32 @ff_fmt_v4l2ff(i32, i32) #2

declare dso_local i8* @av_get_pix_fmt_name(i32) #2

declare dso_local i32 @av_log(%struct.TYPE_7__*, i32, i8*, ...) #2

declare dso_local %struct.TYPE_8__* @avcodec_descriptor_get(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
