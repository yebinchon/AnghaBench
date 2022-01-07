; ModuleID = '/home/carl/AnghaBench/RetroArch/camera/drivers/extr_video4linux2.c_init_device.c'
source_filename = "/home/carl/AnghaBench/RetroArch/camera/drivers/extr_video4linux2.c_init_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_crop = type { i32, %struct.TYPE_6__, i8*, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64, i64, i32, i32 }
%struct.v4l2_capability = type { i32, %struct.TYPE_6__, i8*, i32, i32, i32 }
%struct.v4l2_format = type { i32, %struct.TYPE_6__, i8*, i32, i32, i32 }
%struct.v4l2_cropcap = type { i32, %struct.TYPE_6__, i8*, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }

@VIDIOC_QUERYCAP = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [31 x i8] c"[V4L2]: %s is no V4L2 device.\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"[V4L2]: Error - VIDIOC_QUERYCAP.\0A\00", align 1
@V4L2_CAP_VIDEO_CAPTURE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"[V4L2]: %s is no video capture device.\0A\00", align 1
@V4L2_CAP_STREAMING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [65 x i8] c"[V4L2]: %s does not support streaming I/O (V4L2_CAP_STREAMING).\0A\00", align 1
@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@VIDIOC_CROPCAP = common dso_local global i32 0, align 4
@VIDIOC_S_CROP = common dso_local global i32 0, align 4
@V4L2_PIX_FMT_YUYV = common dso_local global i64 0, align 8
@V4L2_FIELD_NONE = common dso_local global i64 0, align 8
@VIDIOC_S_FMT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [30 x i8] c"[V4L2]: Error - VIDIOC_S_FMT\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"[V4L2]: The V4L2 device doesn't support YUYV.\0A\00", align 1
@V4L2_FIELD_INTERLACED = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [75 x i8] c"[V4L2]: The V4L2 device doesn't support progressive nor interlaced video.\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"[V4L2]: device: %u x %u.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @init_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_device(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.v4l2_crop, align 8
  %5 = alloca %struct.v4l2_capability, align 8
  %6 = alloca %struct.v4l2_format, align 8
  %7 = alloca %struct.v4l2_cropcap, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store i8* %0, i8** %3, align 8
  %9 = bitcast %struct.v4l2_format* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 64, i1 false)
  %10 = bitcast %struct.v4l2_cropcap* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %10, i8 0, i64 64, i1 false)
  %11 = load i8*, i8** %3, align 8
  %12 = bitcast i8* %11 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %12, %struct.TYPE_7__** %8, align 8
  %13 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %14 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @VIDIOC_QUERYCAP, align 4
  %17 = bitcast %struct.v4l2_capability* %5 to %struct.v4l2_format*
  %18 = call i64 @xioctl(i32 %15, i32 %16, %struct.v4l2_format* %17)
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %1
  %21 = load i64, i64* @errno, align 8
  %22 = load i64, i64* @EINVAL, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %29

24:                                               ; preds = %20
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %27)
  br label %31

29:                                               ; preds = %20
  %30 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %24
  store i32 0, i32* %2, align 4
  br label %165

32:                                               ; preds = %1
  %33 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @V4L2_CAP_VIDEO_CAPTURE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %32
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 4
  %42 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  store i32 0, i32* %2, align 4
  br label %165

43:                                               ; preds = %32
  %44 = getelementptr inbounds %struct.v4l2_capability, %struct.v4l2_capability* %5, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @V4L2_CAP_STREAMING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %43
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.3, i64 0, i64 0), i32 %52)
  store i32 0, i32* %2, align 4
  br label %165

54:                                               ; preds = %43
  %55 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %56 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %7, i32 0, i32 2
  store i8* %55, i8** %56, align 8
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @VIDIOC_CROPCAP, align 4
  %61 = bitcast %struct.v4l2_cropcap* %7 to %struct.v4l2_format*
  %62 = call i64 @xioctl(i32 %59, i32 %60, %struct.v4l2_format* %61)
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %54
  %65 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %66 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %4, i32 0, i32 2
  store i8* %65, i8** %66, align 8
  %67 = getelementptr inbounds %struct.v4l2_cropcap, %struct.v4l2_cropcap* %7, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.v4l2_crop, %struct.v4l2_crop* %4, i32 0, i32 4
  store i32 %68, i32* %69, align 4
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @VIDIOC_S_CROP, align 4
  %74 = bitcast %struct.v4l2_crop* %4 to %struct.v4l2_format*
  %75 = call i64 @xioctl(i32 %72, i32 %73, %struct.v4l2_format* %74)
  br label %76

76:                                               ; preds = %64, %54
  %77 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %78 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 2
  store i8* %77, i8** %78, align 8
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 4
  store i32 %87, i32* %90, align 4
  %91 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %92 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 1
  store i64 %91, i64* %94, align 8
  %95 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %96 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 2
  store i64 %95, i64* %98, align 8
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @VIDIOC_S_FMT, align 4
  %103 = call i64 @xioctl(i32 %101, i32 %102, %struct.v4l2_format* %6)
  %104 = icmp slt i64 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %76
  %106 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %165

107:                                              ; preds = %76
  %108 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %112, i32 0, i32 0
  store i32 %111, i32* %113, align 4
  %114 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %118, i32 0, i32 1
  store i32 %117, i32* %119, align 4
  %120 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = mul nsw i32 %126, 2
  %128 = call i32 @MAX(i32 %123, i32 %127)
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i32 %128, i32* %130, align 4
  %131 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @V4L2_PIX_FMT_YUYV, align 8
  %136 = icmp ne i64 %134, %135
  br i1 %136, label %137, label %139

137:                                              ; preds = %107
  %138 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %165

139:                                              ; preds = %107
  %140 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @V4L2_FIELD_NONE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %155

146:                                              ; preds = %139
  %147 = getelementptr inbounds %struct.v4l2_format, %struct.v4l2_format* %6, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 2
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* @V4L2_FIELD_INTERLACED, align 8
  %152 = icmp ne i64 %150, %151
  br i1 %152, label %153, label %155

153:                                              ; preds = %146
  %154 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str.6, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %165

155:                                              ; preds = %146, %139
  %156 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %157 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = call i32 @RARCH_LOG(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %158, i32 %161)
  %163 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %164 = call i32 @init_mmap(%struct.TYPE_7__* %163)
  store i32 %164, i32* %2, align 4
  br label %165

165:                                              ; preds = %155, %153, %137, %105, %49, %38, %31
  %166 = load i32, i32* %2, align 4
  ret i32 %166
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @xioctl(i32, i32, %struct.v4l2_format*) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i32 @MAX(i32, i32) #2

declare dso_local i32 @RARCH_LOG(i8*, i32, i32) #2

declare dso_local i32 @init_mmap(%struct.TYPE_7__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
