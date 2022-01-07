; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_handle_event.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_v4l2_context.c_v4l2_handle_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32, %struct.TYPE_13__, i64, %struct.TYPE_13__, i32 }
%struct.TYPE_13__ = type { i8*, i8*, i8*, i32, %struct.v4l2_format }
%struct.v4l2_format = type { i64, i32 }
%struct.v4l2_event = type { i64, i32 }

@VIDIOC_DQEVENT = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"%s VIDIOC_DQEVENT\0A\00", align 1
@V4L2_EVENT_SOURCE_CHANGE = common dso_local global i64 0, align 8
@VIDIOC_G_FMT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"%s VIDIOC_G_FMT\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"v4l2_m2m_codec_full_reinit\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [33 x i8] c"update avcodec height and width\0A\00", align 1
@.str.4 = private unnamed_addr constant [23 x i8] c"v4l2_m2m_codec_reinit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*)* @v4l2_handle_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @v4l2_handle_event(%struct.TYPE_12__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.v4l2_format, align 8
  %6 = alloca %struct.v4l2_format, align 8
  %7 = alloca %struct.v4l2_event, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  %11 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %12 = call %struct.TYPE_11__* @ctx_to_m2mctx(%struct.TYPE_12__* %11)
  store %struct.TYPE_11__* %12, %struct.TYPE_11__** %4, align 8
  %13 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %14, i32 0, i32 4
  %16 = bitcast %struct.v4l2_format* %5 to i8*
  %17 = bitcast %struct.v4l2_format* %15 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %16, i8* align 8 %17, i64 16, i1 false)
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 4
  %21 = bitcast %struct.v4l2_format* %6 to i8*
  %22 = bitcast %struct.v4l2_format* %20 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %21, i8* align 8 %22, i64 16, i1 false)
  %23 = bitcast %struct.v4l2_event* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %23, i8 0, i64 16, i1 false)
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @VIDIOC_DQEVENT, align 4
  %28 = bitcast %struct.v4l2_event* %7 to %struct.v4l2_format*
  %29 = call i32 @ioctl(i32 %26, i32 %27, %struct.v4l2_format* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %1
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %34 = call i32 @logger(%struct.TYPE_12__* %33)
  %35 = load i32, i32* @AV_LOG_ERROR, align 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i32, i8*, ...) @av_log(i32 %34, i32 %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %38)
  store i32 0, i32* %2, align 4
  br label %191

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.v4l2_event, %struct.v4l2_event* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @V4L2_EVENT_SOURCE_CHANGE, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %40
  store i32 0, i32* %2, align 4
  br label %191

46:                                               ; preds = %40
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VIDIOC_G_FMT, align 4
  %51 = call i32 @ioctl(i32 %49, i32 %50, %struct.v4l2_format* %6)
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %46
  %55 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %56 = call i32 @logger(%struct.TYPE_12__* %55)
  %57 = load i32, i32* @AV_LOG_ERROR, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i32, i8*, ...) @av_log(i32 %56, i32 %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  store i32 0, i32* %2, align 4
  br label %191

63:                                               ; preds = %46
  %64 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @VIDIOC_G_FMT, align 4
  %68 = call i32 @ioctl(i32 %66, i32 %67, %struct.v4l2_format* %5)
  store i32 %68, i32* %10, align 4
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %63
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %73 = call i32 @logger(%struct.TYPE_12__* %72)
  %74 = load i32, i32* @AV_LOG_ERROR, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 (i32, i32, i8*, ...) @av_log(i32 %73, i32 %74, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  store i32 0, i32* %2, align 4
  br label %191

80:                                               ; preds = %63
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 3
  %83 = call i32 @v4l2_resolution_changed(%struct.TYPE_13__* %82, %struct.v4l2_format* %6)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %101

86:                                               ; preds = %80
  %87 = call i8* @v4l2_get_height(%struct.v4l2_format* %6)
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  store i8* %87, i8** %90, align 8
  %91 = call i8* @v4l2_get_width(%struct.v4l2_format* %6)
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %93, i32 0, i32 1
  store i8* %91, i8** %94, align 8
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 3
  %97 = call i8* @v4l2_get_sar(%struct.TYPE_13__* %96)
  %98 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %99 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  store i8* %97, i8** %100, align 8
  br label %101

101:                                              ; preds = %86, %80
  %102 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %103 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %102, i32 0, i32 1
  %104 = call i32 @v4l2_resolution_changed(%struct.TYPE_13__* %103, %struct.v4l2_format* %5)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %122

107:                                              ; preds = %101
  %108 = call i8* @v4l2_get_height(%struct.v4l2_format* %5)
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i32 0, i32 0
  store i8* %108, i8** %111, align 8
  %112 = call i8* @v4l2_get_width(%struct.v4l2_format* %5)
  %113 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 1
  store i8* %112, i8** %115, align 8
  %116 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = call i8* @v4l2_get_sar(%struct.TYPE_13__* %117)
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %120 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %120, i32 0, i32 2
  store i8* %118, i8** %121, align 8
  br label %122

122:                                              ; preds = %107, %101
  %123 = load i32, i32* %8, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %128, label %125

125:                                              ; preds = %122
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %125, %122
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %125
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %147

134:                                              ; preds = %131
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %136 = call i32 @ff_v4l2_m2m_codec_full_reinit(%struct.TYPE_11__* %135)
  store i32 %136, i32* %10, align 4
  %137 = load i32, i32* %10, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %146

139:                                              ; preds = %134
  %140 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %141 = call i32 @logger(%struct.TYPE_12__* %140)
  %142 = load i32, i32* @AV_LOG_ERROR, align 4
  %143 = call i32 (i32, i32, i8*, ...) @av_log(i32 %141, i32 %142, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %191

146:                                              ; preds = %134
  br label %190

147:                                              ; preds = %131
  %148 = load i32, i32* %9, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %189

150:                                              ; preds = %147
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %168

155:                                              ; preds = %150
  %156 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %156, i32 0, i32 2
  %158 = load i64, i64* %157, align 8
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %160 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %160, i32 0, i32 1
  %162 = load i8*, i8** %161, align 8
  %163 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @ff_set_dimensions(i64 %158, i8* %162, i8* %166)
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %155, %150
  %169 = load i32, i32* %10, align 4
  %170 = icmp slt i32 %169, 0
  br i1 %170, label %171, label %176

171:                                              ; preds = %168
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %173 = call i32 @logger(%struct.TYPE_12__* %172)
  %174 = load i32, i32* @AV_LOG_WARNING, align 4
  %175 = call i32 (i32, i32, i8*, ...) @av_log(i32 %173, i32 %174, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %176

176:                                              ; preds = %171, %168
  %177 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %178 = call i32 @ff_v4l2_m2m_codec_reinit(%struct.TYPE_11__* %177)
  store i32 %178, i32* %10, align 4
  %179 = load i32, i32* %10, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %181, label %188

181:                                              ; preds = %176
  %182 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %183 = call i32 @logger(%struct.TYPE_12__* %182)
  %184 = load i32, i32* @AV_LOG_ERROR, align 4
  %185 = call i32 (i32, i32, i8*, ...) @av_log(i32 %183, i32 %184, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0))
  %186 = load i32, i32* @EINVAL, align 4
  %187 = sub nsw i32 0, %186
  store i32 %187, i32* %2, align 4
  br label %191

188:                                              ; preds = %176
  br label %190

189:                                              ; preds = %147
  store i32 0, i32* %2, align 4
  br label %191

190:                                              ; preds = %188, %146
  store i32 1, i32* %2, align 4
  br label %191

191:                                              ; preds = %190, %189, %181, %139, %71, %54, %45, %32
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local %struct.TYPE_11__* @ctx_to_m2mctx(%struct.TYPE_12__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @ioctl(i32, i32, %struct.v4l2_format*) #1

declare dso_local i32 @av_log(i32, i32, i8*, ...) #1

declare dso_local i32 @logger(%struct.TYPE_12__*) #1

declare dso_local i32 @v4l2_resolution_changed(%struct.TYPE_13__*, %struct.v4l2_format*) #1

declare dso_local i8* @v4l2_get_height(%struct.v4l2_format*) #1

declare dso_local i8* @v4l2_get_width(%struct.v4l2_format*) #1

declare dso_local i8* @v4l2_get_sar(%struct.TYPE_13__*) #1

declare dso_local i32 @ff_v4l2_m2m_codec_full_reinit(%struct.TYPE_11__*) #1

declare dso_local i32 @ff_set_dimensions(i64, i8*, i8*) #1

declare dso_local i32 @ff_v4l2_m2m_codec_reinit(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
