; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_read_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_mmaldec.c_ffmmal_read_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_24__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i32, i32, %struct.TYPE_21__*, i64, i64, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_25__** }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_22__ = type { i32, i64, i64 }
%struct.TYPE_20__ = type { i32 }

@MAX_DELAYED_FRAMES = common dso_local global i64 0, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Did not get output frame from MMAL.\0A\00", align 1
@AVERROR_UNKNOWN = common dso_local global i32 0, align 4
@MMAL_BUFFER_HEADER_FLAG_EOS = common dso_local global i32 0, align 4
@MMAL_EVENT_FORMAT_CHANGED = common dso_local global i64 0, align 8
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"Changing output format.\0A\00", align 1
@output_callback = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Unknown MMAL event %s on output port\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_24__*, i32*, i32*)* @ffmmal_read_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ffmmal_read_frame(%struct.TYPE_24__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_24__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.TYPE_23__*, align 8
  %8 = alloca %struct.TYPE_22__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca %struct.TYPE_20__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_24__* %0, %struct.TYPE_24__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %14 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_23__*, %struct.TYPE_23__** %15, align 8
  store %struct.TYPE_23__* %16, %struct.TYPE_23__** %7, align 8
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %17 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %189

22:                                               ; preds = %3
  br label %23

23:                                               ; preds = %22, %149, %170
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 6
  %26 = call i64 @atomic_load(i32* %25)
  %27 = load i64, i64* @MAX_DELAYED_FRAMES, align 8
  %28 = icmp sgt i64 %26, %27
  br i1 %28, label %39, label %29

29:                                               ; preds = %23
  %30 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %31 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %52

34:                                               ; preds = %29
  %35 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %34, %23
  %40 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 8
  %43 = call %struct.TYPE_22__* @mmal_queue_timedwait(i32 %42, i32 100)
  store %struct.TYPE_22__* %43, %struct.TYPE_22__** %8, align 8
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %45 = icmp ne %struct.TYPE_22__* %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %39
  %47 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %48 = load i32, i32* @AV_LOG_ERROR, align 4
  %49 = call i32 (%struct.TYPE_24__*, i32, i8*, ...) @av_log(%struct.TYPE_24__* %47, i32 %48, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %50 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %50, i32* %10, align 4
  br label %189

51:                                               ; preds = %39
  br label %61

52:                                               ; preds = %34, %29
  %53 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = call %struct.TYPE_22__* @mmal_queue_get(i32 %55)
  store %struct.TYPE_22__* %56, %struct.TYPE_22__** %8, align 8
  %57 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %58 = icmp ne %struct.TYPE_22__* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %52
  br label %189

60:                                               ; preds = %52
  br label %61

61:                                               ; preds = %60, %51
  %62 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @MMAL_BUFFER_HEADER_FLAG_EOS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  %69 = xor i1 %68, true
  %70 = zext i1 %69 to i32
  %71 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 8
  %75 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %61
  br label %189

80:                                               ; preds = %61
  %81 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %82 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @MMAL_EVENT_FORMAT_CHANGED, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %152

86:                                               ; preds = %80
  %87 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %87, i32 0, i32 3
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %88, align 8
  store %struct.TYPE_21__* %89, %struct.TYPE_21__** %11, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %91 = call %struct.TYPE_20__* @mmal_event_format_changed_get(%struct.TYPE_22__* %90)
  store %struct.TYPE_20__* %91, %struct.TYPE_20__** %12, align 8
  %92 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %93 = load i32, i32* @AV_LOG_INFO, align 4
  %94 = call i32 (%struct.TYPE_24__*, i32, i8*, ...) @av_log(%struct.TYPE_24__* %92, i32 %93, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %95 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %96 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %95, i32 0, i32 0
  %97 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %97, i64 0
  %99 = load %struct.TYPE_25__*, %struct.TYPE_25__** %98, align 8
  %100 = call i64 @mmal_port_disable(%struct.TYPE_25__* %99)
  store i64 %100, i64* %9, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %86
  br label %189

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %110, %103
  %105 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call %struct.TYPE_22__* @mmal_queue_get(i32 %107)
  store %struct.TYPE_22__* %108, %struct.TYPE_22__** %13, align 8
  %109 = icmp ne %struct.TYPE_22__* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %104
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %112 = call i32 @mmal_buffer_header_release(%struct.TYPE_22__* %111)
  br label %104

113:                                              ; preds = %104
  %114 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %116, i64 0
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @mmal_format_copy(i32 %120, i32 %123)
  %125 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %126 = call i32 @ffmal_update_format(%struct.TYPE_24__* %125)
  store i32 %126, i32* %10, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %113
  br label %189

129:                                              ; preds = %113
  %130 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %130, i32 0, i32 0
  %132 = load %struct.TYPE_25__**, %struct.TYPE_25__*** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_25__*, %struct.TYPE_25__** %132, i64 0
  %134 = load %struct.TYPE_25__*, %struct.TYPE_25__** %133, align 8
  %135 = load i32, i32* @output_callback, align 4
  %136 = call i64 @mmal_port_enable(%struct.TYPE_25__* %134, i32 %135)
  store i64 %136, i64* %9, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %139

138:                                              ; preds = %129
  br label %189

139:                                              ; preds = %129
  %140 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %141 = call i32 @ffmmal_fill_output_port(%struct.TYPE_24__* %140)
  store i32 %141, i32* %10, align 4
  %142 = icmp slt i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %139
  br label %189

144:                                              ; preds = %139
  %145 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %146 = call i32 @ffmmal_fill_input_port(%struct.TYPE_24__* %145)
  store i32 %146, i32* %10, align 4
  %147 = icmp slt i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  br label %189

149:                                              ; preds = %144
  %150 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %151 = call i32 @mmal_buffer_header_release(%struct.TYPE_22__* %150)
  br label %23

152:                                              ; preds = %80
  %153 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %154 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %153, i32 0, i32 1
  %155 = load i64, i64* %154, align 8
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %159 = load i32, i32* @AV_LOG_WARNING, align 4
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = call i32 @av_fourcc2str(i64 %162)
  %164 = call i32 (%struct.TYPE_24__*, i32, i8*, ...) @av_log(%struct.TYPE_24__* %158, i32 %159, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %163)
  br label %189

165:                                              ; preds = %152
  %166 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %167 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp eq i64 %168, 0
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %172 = call i32 @mmal_buffer_header_release(%struct.TYPE_22__* %171)
  br label %23

173:                                              ; preds = %165
  br label %174

174:                                              ; preds = %173
  br label %175

175:                                              ; preds = %174
  %176 = load %struct.TYPE_23__*, %struct.TYPE_23__** %7, align 8
  %177 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = add nsw i32 %178, 1
  store i32 %179, i32* %177, align 4
  %180 = load %struct.TYPE_24__*, %struct.TYPE_24__** %4, align 8
  %181 = load i32*, i32** %5, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %183 = call i32 @ffmal_copy_frame(%struct.TYPE_24__* %180, i32* %181, %struct.TYPE_22__* %182)
  store i32 %183, i32* %10, align 4
  %184 = icmp slt i32 %183, 0
  br i1 %184, label %185, label %186

185:                                              ; preds = %175
  br label %189

186:                                              ; preds = %175
  %187 = load i32*, i32** %6, align 8
  store i32 1, i32* %187, align 4
  br label %188

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %188, %185, %157, %148, %143, %138, %128, %102, %79, %59, %46, %21
  %190 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %191 = icmp ne %struct.TYPE_22__* %190, null
  br i1 %191, label %192, label %195

192:                                              ; preds = %189
  %193 = load %struct.TYPE_22__*, %struct.TYPE_22__** %8, align 8
  %194 = call i32 @mmal_buffer_header_release(%struct.TYPE_22__* %193)
  br label %195

195:                                              ; preds = %192, %189
  %196 = load i64, i64* %9, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %203

198:                                              ; preds = %195
  %199 = load i32, i32* %10, align 4
  %200 = icmp sge i32 %199, 0
  br i1 %200, label %201, label %203

201:                                              ; preds = %198
  %202 = load i32, i32* @AVERROR_UNKNOWN, align 4
  store i32 %202, i32* %10, align 4
  br label %203

203:                                              ; preds = %201, %198, %195
  %204 = load i32, i32* %10, align 4
  ret i32 %204
}

declare dso_local i64 @atomic_load(i32*) #1

declare dso_local %struct.TYPE_22__* @mmal_queue_timedwait(i32, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_24__*, i32, i8*, ...) #1

declare dso_local %struct.TYPE_22__* @mmal_queue_get(i32) #1

declare dso_local %struct.TYPE_20__* @mmal_event_format_changed_get(%struct.TYPE_22__*) #1

declare dso_local i64 @mmal_port_disable(%struct.TYPE_25__*) #1

declare dso_local i32 @mmal_buffer_header_release(%struct.TYPE_22__*) #1

declare dso_local i32 @mmal_format_copy(i32, i32) #1

declare dso_local i32 @ffmal_update_format(%struct.TYPE_24__*) #1

declare dso_local i64 @mmal_port_enable(%struct.TYPE_25__*, i32) #1

declare dso_local i32 @ffmmal_fill_output_port(%struct.TYPE_24__*) #1

declare dso_local i32 @ffmmal_fill_input_port(%struct.TYPE_24__*) #1

declare dso_local i32 @av_fourcc2str(i64) #1

declare dso_local i32 @ffmal_copy_frame(%struct.TYPE_24__*, i32*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
