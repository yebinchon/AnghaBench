; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_reap_filters.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_reap_filters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_31__ = type { i64, %struct.TYPE_29__, i64, %struct.TYPE_34__*, i32, i32, %struct.TYPE_28__*, %struct.TYPE_35__* }
%struct.TYPE_29__ = type { i32 }
%struct.TYPE_34__ = type { double, i32, i32 }
%struct.TYPE_28__ = type { i32*, %struct.TYPE_27__* }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_35__ = type { i32, %struct.TYPE_30__*, %struct.TYPE_33__, i32 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_33__ = type { i32, i32 }
%struct.TYPE_32__ = type { double }

@nb_output_streams = common dso_local global i32 0, align 4
@output_streams = common dso_local global %struct.TYPE_31__** null, align 8
@output_files = common dso_local global %struct.TYPE_32__** null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Error initializing output stream %d:%d -- %s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global double 0.000000e+00, align 8
@AV_BUFFERSINK_FLAG_NO_REQUEST = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"Error in av_buffersink_get_frame_flags(): %s\0A\00", align 1
@AV_TIME_BASE_Q = common dso_local global %struct.TYPE_33__ zeroinitializer, align 4
@debug_ts = common dso_local global i32 0, align 4
@AV_LOG_INFO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [55 x i8] c"filter -> pts:%s pts_time:%s exact:%f time_base:%d/%d\0A\00", align 1
@AV_CODEC_CAP_PARAM_CHANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [92 x i8] c"Audio filter graph output is not normalized and encoder does not support parameter changes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @reap_filters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reap_filters(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_34__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_31__*, align 8
  %7 = alloca %struct.TYPE_32__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_35__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [1024 x i8], align 16
  %12 = alloca double, align 8
  %13 = alloca double, align 8
  %14 = alloca %struct.TYPE_33__, align 4
  %15 = alloca %struct.TYPE_33__, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.TYPE_34__* null, %struct.TYPE_34__** %4, align 8
  store i32 0, i32* %5, align 4
  br label %17

17:                                               ; preds = %308, %1
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @nb_output_streams, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %311

21:                                               ; preds = %17
  %22 = load %struct.TYPE_31__**, %struct.TYPE_31__*** @output_streams, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_31__*, %struct.TYPE_31__** %22, i64 %24
  %26 = load %struct.TYPE_31__*, %struct.TYPE_31__** %25, align 8
  store %struct.TYPE_31__* %26, %struct.TYPE_31__** %6, align 8
  %27 = load %struct.TYPE_32__**, %struct.TYPE_32__*** @output_files, align 8
  %28 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %29 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %27, i64 %30
  %32 = load %struct.TYPE_32__*, %struct.TYPE_32__** %31, align 8
  store %struct.TYPE_32__* %32, %struct.TYPE_32__** %7, align 8
  %33 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_35__*, %struct.TYPE_35__** %34, align 8
  store %struct.TYPE_35__* %35, %struct.TYPE_35__** %9, align 8
  store i32 0, i32* %10, align 4
  %36 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_28__*, %struct.TYPE_28__** %37, align 8
  %39 = icmp ne %struct.TYPE_28__* %38, null
  br i1 %39, label %40, label %49

40:                                               ; preds = %21
  %41 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %42 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %41, i32 0, i32 6
  %43 = load %struct.TYPE_28__*, %struct.TYPE_28__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %43, i32 0, i32 1
  %45 = load %struct.TYPE_27__*, %struct.TYPE_27__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %40, %21
  br label %308

50:                                               ; preds = %40
  %51 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %52 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %51, i32 0, i32 6
  %53 = load %struct.TYPE_28__*, %struct.TYPE_28__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %8, align 8
  %56 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %56, i32 0, i32 5
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %79, label %60

60:                                               ; preds = %50
  %61 = bitcast [1024 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %61, i8 0, i64 1024, i1 false)
  %62 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %63 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %64 = call i32 @init_output_stream(%struct.TYPE_31__* %62, i8* %63, i32 1024)
  store i32 %64, i32* %10, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %60
  %68 = load i32, i32* @AV_LOG_ERROR, align 4
  %69 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %70 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %72, i32 0, i32 4
  %74 = load i32, i32* %73, align 8
  %75 = getelementptr inbounds [1024 x i8], [1024 x i8]* %11, i64 0, i64 0
  %76 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %68, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %71, i32 %74, i8* %75)
  %77 = call i32 @exit_program(i32 1)
  br label %78

78:                                               ; preds = %67, %60
  br label %79

79:                                               ; preds = %78, %50
  %80 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %80, i32 0, i32 3
  %82 = load %struct.TYPE_34__*, %struct.TYPE_34__** %81, align 8
  %83 = icmp ne %struct.TYPE_34__* %82, null
  br i1 %83, label %92, label %84

84:                                               ; preds = %79
  %85 = call %struct.TYPE_34__* (...) @av_frame_alloc()
  %86 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %86, i32 0, i32 3
  store %struct.TYPE_34__* %85, %struct.TYPE_34__** %87, align 8
  %88 = icmp ne %struct.TYPE_34__* %85, null
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = call i32 @AVERROR(i32 %90)
  store i32 %91, i32* %2, align 4
  br label %312

92:                                               ; preds = %84, %79
  %93 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_34__*, %struct.TYPE_34__** %94, align 8
  store %struct.TYPE_34__* %95, %struct.TYPE_34__** %4, align 8
  br label %96

96:                                               ; preds = %92, %142, %304
  %97 = load double, double* @AV_NOPTS_VALUE, align 8
  store double %97, double* %12, align 8
  %98 = load i32*, i32** %8, align 8
  %99 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %100 = load i32, i32* @AV_BUFFERSINK_FLAG_NO_REQUEST, align 4
  %101 = call i32 @av_buffersink_get_frame_flags(i32* %98, %struct.TYPE_34__* %99, i32 %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %137

104:                                              ; preds = %96
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* @EAGAIN, align 4
  %107 = call i32 @AVERROR(i32 %106)
  %108 = icmp ne i32 %105, %107
  br i1 %108, label %109, label %118

109:                                              ; preds = %104
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @AVERROR_EOF, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %118

113:                                              ; preds = %109
  %114 = load i32, i32* @AV_LOG_WARNING, align 4
  %115 = load i32, i32* %10, align 4
  %116 = call i32 @av_err2str(i32 %115)
  %117 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %114, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %116)
  br label %136

118:                                              ; preds = %109, %104
  %119 = load i32, i32* %3, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %118
  %122 = load i32, i32* %10, align 4
  %123 = load i32, i32* @AVERROR_EOF, align 4
  %124 = icmp eq i32 %122, %123
  br i1 %124, label %125, label %135

125:                                              ; preds = %121
  %126 = load i32*, i32** %8, align 8
  %127 = call i32 @av_buffersink_get_type(i32* %126)
  %128 = icmp eq i32 %127, 128
  br i1 %128, label %129, label %134

129:                                              ; preds = %125
  %130 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %131 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %132 = load double, double* @AV_NOPTS_VALUE, align 8
  %133 = call i32 @do_video_out(%struct.TYPE_32__* %130, %struct.TYPE_31__* %131, %struct.TYPE_34__* null, double %132)
  br label %134

134:                                              ; preds = %129, %125
  br label %135

135:                                              ; preds = %134, %121, %118
  br label %136

136:                                              ; preds = %135, %113
  br label %307

137:                                              ; preds = %96
  %138 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %138, i32 0, i32 2
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %145

142:                                              ; preds = %137
  %143 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %144 = call i32 @av_frame_unref(%struct.TYPE_34__* %143)
  br label %96

145:                                              ; preds = %137
  %146 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %147 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %146, i32 0, i32 0
  %148 = load double, double* %147, align 8
  %149 = load double, double* @AV_NOPTS_VALUE, align 8
  %150 = fcmp une double %148, %149
  br i1 %150, label %151, label %231

151:                                              ; preds = %145
  %152 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %152, i32 0, i32 0
  %154 = load double, double* %153, align 8
  %155 = load double, double* @AV_NOPTS_VALUE, align 8
  %156 = fcmp oeq double %154, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %151
  br label %162

158:                                              ; preds = %151
  %159 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %159, i32 0, i32 0
  %161 = load double, double* %160, align 8
  br label %162

162:                                              ; preds = %158, %157
  %163 = phi double [ 0.000000e+00, %157 ], [ %161, %158 ]
  store double %163, double* %13, align 8
  %164 = load i32*, i32** %8, align 8
  %165 = call i64 @av_buffersink_get_time_base(i32* %164)
  %166 = bitcast %struct.TYPE_33__* %14 to i64*
  store i64 %165, i64* %166, align 4
  %167 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %168 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %167, i32 0, i32 2
  %169 = bitcast %struct.TYPE_33__* %15 to i8*
  %170 = bitcast %struct.TYPE_33__* %168 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %169, i8* align 8 %170, i64 8, i1 false)
  %171 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = call i64 @av_log2(i32 %172)
  %174 = sub nsw i64 29, %173
  %175 = call i32 @av_clip(i64 %174, i32 0, i32 16)
  store i32 %175, i32* %16, align 4
  %176 = load i32, i32* %16, align 4
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %15, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = shl i32 %178, %176
  store i32 %179, i32* %177, align 4
  %180 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %180, i32 0, i32 0
  %182 = load double, double* %181, align 8
  %183 = bitcast %struct.TYPE_33__* %14 to i64*
  %184 = load i64, i64* %183, align 4
  %185 = bitcast %struct.TYPE_33__* %15 to i64*
  %186 = load i64, i64* %185, align 4
  %187 = call i8* @av_rescale_q(double %182, i64 %184, i64 %186)
  %188 = load double, double* %13, align 8
  %189 = load i64, i64* bitcast (%struct.TYPE_33__* @AV_TIME_BASE_Q to i64*), align 4
  %190 = bitcast %struct.TYPE_33__* %15 to i64*
  %191 = load i64, i64* %190, align 4
  %192 = call i8* @av_rescale_q(double %188, i64 %189, i64 %191)
  %193 = ptrtoint i8* %187 to i64
  %194 = ptrtoint i8* %192 to i64
  %195 = sub i64 %193, %194
  %196 = sitofp i64 %195 to double
  store double %196, double* %12, align 8
  %197 = load i32, i32* %16, align 4
  %198 = shl i32 1, %197
  %199 = sitofp i32 %198 to double
  %200 = load double, double* %12, align 8
  %201 = fdiv double %200, %199
  store double %201, double* %12, align 8
  %202 = load double, double* %12, align 8
  %203 = call double @FFSIGN(double %202)
  %204 = fmul double %203, 1.000000e+00
  %205 = fdiv double %204, 1.310720e+05
  %206 = load double, double* %12, align 8
  %207 = fadd double %206, %205
  store double %207, double* %12, align 8
  %208 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %208, i32 0, i32 0
  %210 = load double, double* %209, align 8
  %211 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %212 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %211, i32 0, i32 2
  %213 = bitcast %struct.TYPE_33__* %14 to i64*
  %214 = load i64, i64* %213, align 4
  %215 = bitcast %struct.TYPE_33__* %212 to i64*
  %216 = load i64, i64* %215, align 8
  %217 = call i8* @av_rescale_q(double %210, i64 %214, i64 %216)
  %218 = load double, double* %13, align 8
  %219 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %220 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %219, i32 0, i32 2
  %221 = load i64, i64* bitcast (%struct.TYPE_33__* @AV_TIME_BASE_Q to i64*), align 4
  %222 = bitcast %struct.TYPE_33__* %220 to i64*
  %223 = load i64, i64* %222, align 8
  %224 = call i8* @av_rescale_q(double %218, i64 %221, i64 %223)
  %225 = ptrtoint i8* %217 to i64
  %226 = ptrtoint i8* %224 to i64
  %227 = sub i64 %225, %226
  %228 = sitofp i64 %227 to double
  %229 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %230 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %229, i32 0, i32 0
  store double %228, double* %230, align 8
  br label %231

231:                                              ; preds = %162, %145
  %232 = load i32*, i32** %8, align 8
  %233 = call i32 @av_buffersink_get_type(i32* %232)
  switch i32 %233, label %302 [
    i32 128, label %234
    i32 129, label %277
  ]

234:                                              ; preds = %231
  %235 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %236 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %235, i32 0, i32 1
  %237 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %246, label %240

240:                                              ; preds = %234
  %241 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %242 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %245 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 8
  br label %246

246:                                              ; preds = %240, %234
  %247 = load i32, i32* @debug_ts, align 4
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %271

249:                                              ; preds = %246
  %250 = load i32, i32* @AV_LOG_INFO, align 4
  %251 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %252 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %251, i32 0, i32 0
  %253 = load double, double* %252, align 8
  %254 = call i32 @av_ts2str(double %253)
  %255 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %256 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %255, i32 0, i32 0
  %257 = load double, double* %256, align 8
  %258 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %258, i32 0, i32 2
  %260 = call i32 @av_ts2timestr(double %257, %struct.TYPE_33__* %259)
  %261 = load double, double* %12, align 8
  %262 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %263 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %262, i32 0, i32 2
  %264 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %267 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %266, i32 0, i32 2
  %268 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 8
  %270 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %250, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %254, i32 %260, double %261, i32 %265, i32 %269)
  br label %271

271:                                              ; preds = %249, %246
  %272 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %273 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %274 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %275 = load double, double* %12, align 8
  %276 = call i32 @do_video_out(%struct.TYPE_32__* %272, %struct.TYPE_31__* %273, %struct.TYPE_34__* %274, double %275)
  br label %304

277:                                              ; preds = %231
  %278 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %279 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %278, i32 0, i32 1
  %280 = load %struct.TYPE_30__*, %struct.TYPE_30__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load i32, i32* @AV_CODEC_CAP_PARAM_CHANGE, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %297, label %286

286:                                              ; preds = %277
  %287 = load %struct.TYPE_35__*, %struct.TYPE_35__** %9, align 8
  %288 = getelementptr inbounds %struct.TYPE_35__, %struct.TYPE_35__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %291 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %290, i32 0, i32 1
  %292 = load i32, i32* %291, align 8
  %293 = icmp ne i32 %289, %292
  br i1 %293, label %294, label %297

294:                                              ; preds = %286
  %295 = load i32, i32* @AV_LOG_ERROR, align 4
  %296 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %295, i8* getelementptr inbounds ([92 x i8], [92 x i8]* @.str.3, i64 0, i64 0))
  br label %304

297:                                              ; preds = %286, %277
  %298 = load %struct.TYPE_32__*, %struct.TYPE_32__** %7, align 8
  %299 = load %struct.TYPE_31__*, %struct.TYPE_31__** %6, align 8
  %300 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %301 = call i32 @do_audio_out(%struct.TYPE_32__* %298, %struct.TYPE_31__* %299, %struct.TYPE_34__* %300)
  br label %304

302:                                              ; preds = %231
  %303 = call i32 @av_assert0(i32 0)
  br label %304

304:                                              ; preds = %302, %297, %294, %271
  %305 = load %struct.TYPE_34__*, %struct.TYPE_34__** %4, align 8
  %306 = call i32 @av_frame_unref(%struct.TYPE_34__* %305)
  br label %96

307:                                              ; preds = %136
  br label %308

308:                                              ; preds = %307, %49
  %309 = load i32, i32* %5, align 4
  %310 = add nsw i32 %309, 1
  store i32 %310, i32* %5, align 4
  br label %17

311:                                              ; preds = %17
  store i32 0, i32* %2, align 4
  br label %312

312:                                              ; preds = %311, %89
  %313 = load i32, i32* %2, align 4
  ret i32 %313
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @init_output_stream(%struct.TYPE_31__*, i8*, i32) #2

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #2

declare dso_local i32 @exit_program(i32) #2

declare dso_local %struct.TYPE_34__* @av_frame_alloc(...) #2

declare dso_local i32 @AVERROR(i32) #2

declare dso_local i32 @av_buffersink_get_frame_flags(i32*, %struct.TYPE_34__*, i32) #2

declare dso_local i32 @av_err2str(i32) #2

declare dso_local i32 @av_buffersink_get_type(i32*) #2

declare dso_local i32 @do_video_out(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_34__*, double) #2

declare dso_local i32 @av_frame_unref(%struct.TYPE_34__*) #2

declare dso_local i64 @av_buffersink_get_time_base(i32*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @av_clip(i64, i32, i32) #2

declare dso_local i64 @av_log2(i32) #2

declare dso_local i8* @av_rescale_q(double, i64, i64) #2

declare dso_local double @FFSIGN(double) #2

declare dso_local i32 @av_ts2str(double) #2

declare dso_local i32 @av_ts2timestr(double, %struct.TYPE_33__*) #2

declare dso_local i32 @do_audio_out(%struct.TYPE_32__*, %struct.TYPE_31__*, %struct.TYPE_34__*) #2

declare dso_local i32 @av_assert0(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
