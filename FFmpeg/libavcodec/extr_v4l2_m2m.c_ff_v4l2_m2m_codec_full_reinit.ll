; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_codec_full_reinit.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_m2m.c_ff_v4l2_m2m_codec_full_reinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, %struct.TYPE_4__*, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"%s full reinit\0A\00", align 1
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8
@VIDIOC_STREAMOFF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"output VIDIOC_STREAMOFF\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"capture VIDIOC_STREAMOFF\0A\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"v4l2 output format not supported\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"v4l2 capture format not supported\0A\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"can't set v4l2 output format\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"can't to set v4l2 capture format\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"no v4l2 output context's buffers\0A\00", align 1
@.str.8 = private unnamed_addr constant [35 x i8] c"no v4l2 capture context's buffers\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ff_v4l2_m2m_codec_full_reinit(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  %8 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %9 = bitcast %struct.TYPE_4__* %8 to i8*
  store i8* %9, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = load i32, i32* @AV_LOG_DEBUG, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 7
  %14 = load i32, i32* %13, align 8
  %15 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %10, i32 %11, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 6
  %18 = call i64 @atomic_load(i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  br label %21

21:                                               ; preds = %32, %20
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 5
  %24 = call i32 @sem_wait(i32* %23)
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* @errno, align 8
  %28 = load i64, i64* @EINTR, align 8
  %29 = icmp eq i64 %27, %28
  br label %30

30:                                               ; preds = %26, %21
  %31 = phi i1 [ false, %21 ], [ %29, %26 ]
  br i1 %31, label %32, label %33

32:                                               ; preds = %30
  br label %21

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32, i32* @VIDIOC_STREAMOFF, align 4
  %38 = call i32 @ff_v4l2_context_set_status(i32* %36, i32 %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load i8*, i8** %4, align 8
  %43 = load i32, i32* @AV_LOG_ERROR, align 4
  %44 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %42, i32 %43, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %141

45:                                               ; preds = %34
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* @VIDIOC_STREAMOFF, align 4
  %49 = call i32 @ff_v4l2_context_set_status(i32* %47, i32 %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load i8*, i8** %4, align 8
  %54 = load i32, i32* @AV_LOG_ERROR, align 4
  %55 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %53, i32 %54, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %141

56:                                               ; preds = %45
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 2
  %59 = call i32 @ff_v4l2_context_release(i32* %58)
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 0
  %62 = call i32 @ff_v4l2_context_release(i32* %61)
  %63 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 4
  store i64 0, i64* %64, align 8
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 3
  store i64 0, i64* %66, align 8
  %67 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  %69 = call i32 @ff_v4l2_context_get_format(i32* %68, i32 0)
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %56
  %73 = load i8*, i8** %4, align 8
  %74 = load i32, i32* @AV_LOG_DEBUG, align 4
  %75 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %73, i32 %74, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0))
  br label %141

76:                                               ; preds = %56
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = call i32 @ff_v4l2_context_get_format(i32* %78, i32 0)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %86

82:                                               ; preds = %76
  %83 = load i8*, i8** %4, align 8
  %84 = load i32, i32* @AV_LOG_DEBUG, align 4
  %85 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %83, i32 %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0))
  br label %141

86:                                               ; preds = %76
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 2
  %89 = call i32 @ff_v4l2_context_set_format(i32* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %96

92:                                               ; preds = %86
  %93 = load i8*, i8** %4, align 8
  %94 = load i32, i32* @AV_LOG_ERROR, align 4
  %95 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %93, i32 %94, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0))
  br label %141

96:                                               ; preds = %86
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = call i32 @ff_v4l2_context_set_format(i32* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %96
  %103 = load i8*, i8** %4, align 8
  %104 = load i32, i32* @AV_LOG_ERROR, align 4
  %105 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %103, i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %141

106:                                              ; preds = %96
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 2
  %109 = call i32 @ff_v4l2_context_init(i32* %108)
  store i32 %109, i32* %5, align 4
  %110 = load i32, i32* %5, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %116

112:                                              ; preds = %106
  %113 = load i8*, i8** %4, align 8
  %114 = load i32, i32* @AV_LOG_ERROR, align 4
  %115 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %113, i32 %114, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0))
  br label %141

116:                                              ; preds = %106
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = icmp ne %struct.TYPE_4__* %119, null
  br i1 %120, label %121, label %129

121:                                              ; preds = %116
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @av_codec_is_decoder(i32 %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %140, label %129

129:                                              ; preds = %121, %116
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  %132 = call i32 @ff_v4l2_context_init(i32* %131)
  store i32 %132, i32* %5, align 4
  %133 = load i32, i32* %5, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %139

135:                                              ; preds = %129
  %136 = load i8*, i8** %4, align 8
  %137 = load i32, i32* @AV_LOG_ERROR, align 4
  %138 = call i32 (i8*, i32, i8*, ...) @av_log(i8* %136, i32 %137, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.8, i64 0, i64 0))
  br label %141

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %121
  store i32 0, i32* %2, align 4
  br label %143

141:                                              ; preds = %135, %112, %102, %92, %82, %72, %52, %41
  %142 = load i32, i32* %5, align 4
  store i32 %142, i32* %2, align 4
  br label %143

143:                                              ; preds = %141, %140
  %144 = load i32, i32* %2, align 4
  ret i32 %144
}

declare dso_local i32 @av_log(i8*, i32, i8*, ...) #1

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local i32 @sem_wait(i32*) #1

declare dso_local i32 @ff_v4l2_context_set_status(i32*, i32) #1

declare dso_local i32 @ff_v4l2_context_release(i32*) #1

declare dso_local i32 @ff_v4l2_context_get_format(i32*, i32) #1

declare dso_local i32 @ff_v4l2_context_set_format(i32*) #1

declare dso_local i32 @ff_v4l2_context_init(i32*) #1

declare dso_local i32 @av_codec_is_decoder(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
