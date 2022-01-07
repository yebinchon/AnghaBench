; ModuleID = '/home/carl/AnghaBench/RetroArch/camera/drivers/extr_video4linux2.c_init_mmap.c'
source_filename = "/home/carl/AnghaBench/RetroArch/camera/drivers/extr_video4linux2.c_init_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.v4l2_requestbuffers = type { i32, i32, %struct.TYPE_3__, i32, i8*, i8*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.buffer*, i32, i32 }
%struct.buffer = type { i32, i32 }
%struct.v4l2_buffer = type { i32, i32, %struct.TYPE_3__, i32, i8*, i8*, i32 }

@V4L2_BUF_TYPE_VIDEO_CAPTURE = common dso_local global i8* null, align 8
@V4L2_MEMORY_MMAP = common dso_local global i8* null, align 8
@VIDIOC_REQBUFS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [45 x i8] c"[V4L2]: %s does not support memory mapping.\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"[V4L2]: xioctl of VIDIOC_REQBUFS failed.\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"[V4L2]: Insufficient buffer memory on %s.\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"[V4L2]: Out of memory allocating V4L2 buffers.\0A\00", align 1
@VIDIOC_QUERYBUF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"[V4L2]: Error - xioctl VIDIOC_QUERYBUF.\0A\00", align 1
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"[V4L2]: Error - mmap.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @init_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_mmap(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.v4l2_requestbuffers, align 8
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca %struct.v4l2_buffer, align 8
  store i8* %0, i8** %3, align 8
  %7 = bitcast %struct.v4l2_requestbuffers* %4 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 40, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.TYPE_4__*
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %4, i32 0, i32 0
  store i32 4, i32* %10, align 8
  %11 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %12 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %4, i32 0, i32 5
  store i8* %11, i8** %12, align 8
  %13 = load i8*, i8** @V4L2_MEMORY_MMAP, align 8
  %14 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %4, i32 0, i32 4
  store i8* %13, i8** %14, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @VIDIOC_REQBUFS, align 4
  %19 = call i32 @xioctl(i32 %17, i32 %18, %struct.v4l2_requestbuffers* %4)
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %33

21:                                               ; preds = %1
  %22 = load i64, i64* @errno, align 8
  %23 = load i64, i64* @EINVAL, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %21
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %28)
  br label %32

30:                                               ; preds = %21
  %31 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  br label %32

32:                                               ; preds = %30, %25
  store i32 0, i32* %2, align 4
  br label %139

33:                                               ; preds = %1
  %34 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %4, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %35, 2
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %40)
  store i32 0, i32* %2, align 4
  br label %139

42:                                               ; preds = %33
  %43 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %4, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @calloc(i32 %44, i32 8)
  %46 = inttoptr i64 %45 to %struct.buffer*
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store %struct.buffer* %46, %struct.buffer** %48, align 8
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load %struct.buffer*, %struct.buffer** %50, align 8
  %52 = icmp ne %struct.buffer* %51, null
  br i1 %52, label %55, label %53

53:                                               ; preds = %42
  %54 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %139

55:                                               ; preds = %42
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  br label %58

58:                                               ; preds = %133, %55
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = getelementptr inbounds %struct.v4l2_requestbuffers, %struct.v4l2_requestbuffers* %4, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %65, label %138

65:                                               ; preds = %58
  %66 = bitcast %struct.v4l2_buffer* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %66, i8 0, i64 40, i1 false)
  %67 = load i8*, i8** @V4L2_BUF_TYPE_VIDEO_CAPTURE, align 8
  %68 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 5
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** @V4L2_MEMORY_MMAP, align 8
  %70 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 4
  store i8* %69, i8** %70, align 8
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 1
  store i32 %73, i32* %74, align 4
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @VIDIOC_QUERYBUF, align 4
  %79 = bitcast %struct.v4l2_buffer* %6 to %struct.v4l2_requestbuffers*
  %80 = call i32 @xioctl(i32 %77, i32 %78, %struct.v4l2_requestbuffers* %79)
  %81 = icmp eq i32 %80, -1
  br i1 %81, label %82, label %84

82:                                               ; preds = %65
  %83 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %139

84:                                               ; preds = %65
  %85 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = load %struct.buffer*, %struct.buffer** %88, align 8
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.buffer, %struct.buffer* %89, i64 %93
  %95 = getelementptr inbounds %struct.buffer, %struct.buffer* %94, i32 0, i32 1
  store i32 %86, i32* %95, align 4
  %96 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 3
  %97 = load i32, i32* %96, align 4
  %98 = load i32, i32* @PROT_READ, align 4
  %99 = load i32, i32* @PROT_WRITE, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @MAP_SHARED, align 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = getelementptr inbounds %struct.v4l2_buffer, %struct.v4l2_buffer* %6, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @mmap(i32* null, i32 %97, i32 %100, i32 %101, i32 %104, i32 %107)
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load %struct.buffer*, %struct.buffer** %110, align 8
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds %struct.buffer, %struct.buffer* %111, i64 %115
  %117 = getelementptr inbounds %struct.buffer, %struct.buffer* %116, i32 0, i32 0
  store i32 %108, i32* %117, align 4
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = load %struct.buffer*, %struct.buffer** %119, align 8
  %121 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.buffer, %struct.buffer* %120, i64 %124
  %126 = getelementptr inbounds %struct.buffer, %struct.buffer* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load i32, i32* @MAP_FAILED, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %84
  %131 = call i32 (i8*, ...) @RARCH_ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %139

132:                                              ; preds = %84
  br label %133

133:                                              ; preds = %132
  %134 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* %135, align 8
  br label %58

138:                                              ; preds = %58
  store i32 1, i32* %2, align 4
  br label %139

139:                                              ; preds = %138, %130, %82, %53, %37, %32
  %140 = load i32, i32* %2, align 4
  ret i32 %140
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @xioctl(i32, i32, %struct.v4l2_requestbuffers*) #2

declare dso_local i32 @RARCH_ERR(i8*, ...) #2

declare dso_local i64 @calloc(i32, i32) #2

declare dso_local i32 @mmap(i32*, i32, i32, i32, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
