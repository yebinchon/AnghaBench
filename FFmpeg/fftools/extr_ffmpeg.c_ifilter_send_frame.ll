; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_ifilter_send_frame.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_ifilter_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_26__ = type { i64, i32, i32, %struct.TYPE_24__*, %struct.TYPE_23__*, i32, i32, i32, i32, i32, %struct.TYPE_27__* }
%struct.TYPE_24__ = type { i64 }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { i32 }
%struct.TYPE_27__ = type { i32, i64 }
%struct.TYPE_28__ = type { i64, %struct.TYPE_25__*, i32, i32, i32, i32, i32 }
%struct.TYPE_25__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Error while filtering: %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Error reinitializing filters!\0A\00", align 1
@AV_BUFFERSRC_FLAG_PUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_26__*, %struct.TYPE_28__*)* @ifilter_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ifilter_send_frame(%struct.TYPE_26__* %0, %struct.TYPE_28__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_26__*, align 8
  %5 = alloca %struct.TYPE_28__*, align 8
  %6 = alloca %struct.TYPE_27__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_28__*, align 8
  store %struct.TYPE_26__* %0, %struct.TYPE_26__** %4, align 8
  store %struct.TYPE_28__* %1, %struct.TYPE_28__** %5, align 8
  %11 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %11, i32 0, i32 10
  %13 = load %struct.TYPE_27__*, %struct.TYPE_27__** %12, align 8
  store %struct.TYPE_27__* %13, %struct.TYPE_27__** %6, align 8
  %14 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %16, %19
  %21 = zext i1 %20 to i32
  store i32 %21, i32* %7, align 4
  %22 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %22, i32 0, i32 4
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 1
  %26 = load %struct.TYPE_22__*, %struct.TYPE_22__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %81 [
    i32 129, label %31
    i32 128, label %60
  ]

31:                                               ; preds = %2
  %32 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %33 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %32, i32 0, i32 9
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %35, i32 0, i32 6
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %34, %37
  br i1 %38, label %55, label %39

39:                                               ; preds = %31
  %40 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 8
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %42, %45
  br i1 %46, label %55, label %47

47:                                               ; preds = %39
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %48, i32 0, i32 7
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %52 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %50, %53
  br label %55

55:                                               ; preds = %47, %39, %31
  %56 = phi i1 [ true, %39 ], [ true, %31 ], [ %54, %47 ]
  %57 = zext i1 %56 to i32
  %58 = load i32, i32* %7, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %7, align 4
  br label %81

60:                                               ; preds = %2
  %61 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %61, i32 0, i32 6
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %63, %66
  br i1 %67, label %76, label %68

68:                                               ; preds = %60
  %69 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %73 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br label %76

76:                                               ; preds = %68, %60
  %77 = phi i1 [ true, %60 ], [ %75, %68 ]
  %78 = zext i1 %77 to i32
  %79 = load i32, i32* %7, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %2, %76, %55
  %82 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %83 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %82, i32 0, i32 4
  %84 = load %struct.TYPE_23__*, %struct.TYPE_23__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %94, label %88

88:                                               ; preds = %81
  %89 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  store i32 0, i32* %7, align 4
  br label %94

94:                                               ; preds = %93, %88, %81
  %95 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %95, i32 0, i32 3
  %97 = load %struct.TYPE_24__*, %struct.TYPE_24__** %96, align 8
  %98 = icmp ne %struct.TYPE_24__* %97, null
  %99 = xor i1 %98, true
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %102, i32 0, i32 1
  %104 = load %struct.TYPE_25__*, %struct.TYPE_25__** %103, align 8
  %105 = icmp ne %struct.TYPE_25__* %104, null
  %106 = xor i1 %105, true
  %107 = xor i1 %106, true
  %108 = zext i1 %107 to i32
  %109 = icmp ne i32 %101, %108
  br i1 %109, label %127, label %110

110:                                              ; preds = %94
  %111 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %111, i32 0, i32 3
  %113 = load %struct.TYPE_24__*, %struct.TYPE_24__** %112, align 8
  %114 = icmp ne %struct.TYPE_24__* %113, null
  br i1 %114, label %115, label %128

115:                                              ; preds = %110
  %116 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %117 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %116, i32 0, i32 3
  %118 = load %struct.TYPE_24__*, %struct.TYPE_24__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_25__*, %struct.TYPE_25__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %120, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %115, %94
  store i32 1, i32* %7, align 4
  br label %128

128:                                              ; preds = %127, %115, %110
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %140

131:                                              ; preds = %128
  %132 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %133 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %134 = call i32 @ifilter_parameters_from_frame(%struct.TYPE_26__* %132, %struct.TYPE_28__* %133)
  store i32 %134, i32* %8, align 4
  %135 = load i32, i32* %8, align 4
  %136 = icmp slt i32 %135, 0
  br i1 %136, label %137, label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  store i32 %138, i32* %3, align 4
  br label %245

139:                                              ; preds = %131
  br label %140

140:                                              ; preds = %139, %128
  %141 = load i32, i32* %7, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %148, label %143

143:                                              ; preds = %140
  %144 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %224, label %148

148:                                              ; preds = %143, %140
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %197, %148
  %150 = load i32, i32* %9, align 4
  %151 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %155, label %200

155:                                              ; preds = %149
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %157 = call i32 @ifilter_has_all_input_formats(%struct.TYPE_27__* %156)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %196, label %159

159:                                              ; preds = %155
  %160 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %161 = call %struct.TYPE_28__* @av_frame_clone(%struct.TYPE_28__* %160)
  store %struct.TYPE_28__* %161, %struct.TYPE_28__** %10, align 8
  %162 = load %struct.TYPE_28__*, %struct.TYPE_28__** %10, align 8
  %163 = icmp ne %struct.TYPE_28__* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %159
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = call i32 @AVERROR(i32 %165)
  store i32 %166, i32* %3, align 4
  br label %245

167:                                              ; preds = %159
  %168 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %169 = call i32 @av_frame_unref(%struct.TYPE_28__* %168)
  %170 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %171 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @av_fifo_space(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %191, label %175

175:                                              ; preds = %167
  %176 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %179, i32 0, i32 2
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @av_fifo_size(i32 %181)
  %183 = mul nsw i32 2, %182
  %184 = call i32 @av_fifo_realloc2(i32 %178, i32 %183)
  store i32 %184, i32* %8, align 4
  %185 = load i32, i32* %8, align 4
  %186 = icmp slt i32 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %175
  %188 = call i32 @av_frame_free(%struct.TYPE_28__** %10)
  %189 = load i32, i32* %8, align 4
  store i32 %189, i32* %3, align 4
  br label %245

190:                                              ; preds = %175
  br label %191

191:                                              ; preds = %190, %167
  %192 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @av_fifo_generic_write(i32 %194, %struct.TYPE_28__** %10, i32 8, i32* null)
  store i32 0, i32* %3, align 4
  br label %245

196:                                              ; preds = %155
  br label %197

197:                                              ; preds = %196
  %198 = load i32, i32* %9, align 4
  %199 = add nsw i32 %198, 1
  store i32 %199, i32* %9, align 4
  br label %149

200:                                              ; preds = %149
  %201 = call i32 @reap_filters(i32 1)
  store i32 %201, i32* %8, align 4
  %202 = load i32, i32* %8, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %214

204:                                              ; preds = %200
  %205 = load i32, i32* %8, align 4
  %206 = load i32, i32* @AVERROR_EOF, align 4
  %207 = icmp ne i32 %205, %206
  br i1 %207, label %208, label %214

208:                                              ; preds = %204
  %209 = load i32, i32* @AV_LOG_ERROR, align 4
  %210 = load i32, i32* %8, align 4
  %211 = call i32 @av_err2str(i32 %210)
  %212 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %209, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %211)
  %213 = load i32, i32* %8, align 4
  store i32 %213, i32* %3, align 4
  br label %245

214:                                              ; preds = %204, %200
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %6, align 8
  %216 = call i32 @configure_filtergraph(%struct.TYPE_27__* %215)
  store i32 %216, i32* %8, align 4
  %217 = load i32, i32* %8, align 4
  %218 = icmp slt i32 %217, 0
  br i1 %218, label %219, label %223

219:                                              ; preds = %214
  %220 = load i32, i32* @AV_LOG_ERROR, align 4
  %221 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %220, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %222 = load i32, i32* %8, align 4
  store i32 %222, i32* %3, align 4
  br label %245

223:                                              ; preds = %214
  br label %224

224:                                              ; preds = %223, %143
  %225 = load %struct.TYPE_26__*, %struct.TYPE_26__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  %228 = load %struct.TYPE_28__*, %struct.TYPE_28__** %5, align 8
  %229 = load i32, i32* @AV_BUFFERSRC_FLAG_PUSH, align 4
  %230 = call i32 @av_buffersrc_add_frame_flags(i32 %227, %struct.TYPE_28__* %228, i32 %229)
  store i32 %230, i32* %8, align 4
  %231 = load i32, i32* %8, align 4
  %232 = icmp slt i32 %231, 0
  br i1 %232, label %233, label %244

233:                                              ; preds = %224
  %234 = load i32, i32* %8, align 4
  %235 = load i32, i32* @AVERROR_EOF, align 4
  %236 = icmp ne i32 %234, %235
  br i1 %236, label %237, label %242

237:                                              ; preds = %233
  %238 = load i32, i32* @AV_LOG_ERROR, align 4
  %239 = load i32, i32* %8, align 4
  %240 = call i32 @av_err2str(i32 %239)
  %241 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %238, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %240)
  br label %242

242:                                              ; preds = %237, %233
  %243 = load i32, i32* %8, align 4
  store i32 %243, i32* %3, align 4
  br label %245

244:                                              ; preds = %224
  store i32 0, i32* %3, align 4
  br label %245

245:                                              ; preds = %244, %242, %219, %208, %191, %187, %164, %137
  %246 = load i32, i32* %3, align 4
  ret i32 %246
}

declare dso_local i32 @ifilter_parameters_from_frame(%struct.TYPE_26__*, %struct.TYPE_28__*) #1

declare dso_local i32 @ifilter_has_all_input_formats(%struct.TYPE_27__*) #1

declare dso_local %struct.TYPE_28__* @av_frame_clone(%struct.TYPE_28__*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @av_frame_unref(%struct.TYPE_28__*) #1

declare dso_local i32 @av_fifo_space(i32) #1

declare dso_local i32 @av_fifo_realloc2(i32, i32) #1

declare dso_local i32 @av_fifo_size(i32) #1

declare dso_local i32 @av_frame_free(%struct.TYPE_28__**) #1

declare dso_local i32 @av_fifo_generic_write(i32, %struct.TYPE_28__**, i32, i32*) #1

declare dso_local i32 @reap_filters(i32) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @configure_filtergraph(%struct.TYPE_27__*) #1

declare dso_local i32 @av_buffersrc_add_frame_flags(i32, %struct.TYPE_28__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
