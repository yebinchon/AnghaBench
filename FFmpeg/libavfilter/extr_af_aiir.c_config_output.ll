; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_config_output.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavfilter/extr_af_aiir.c_config_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32*, %struct.TYPE_17__**, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, %struct.TYPE_15__*, i32, i32, i32, i64, i32, i32, i32 }
%struct.TYPE_15__ = type { i32*, i32**, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"tf coefficients format is not recommended for too high number of zeros/poles.\0A\00", align 1
@.str.1 = private unnamed_addr constant [67 x i8] c"Direct processsing is not recommended for zp coefficients format.\0A\00", align 1
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [60 x i8] c"Serial cascading is not implemented for transfer function.\0A\00", align 1
@AVERROR_PATCHWELCOME = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [56 x i8] c"Serial cascading is not recommended for i16 precision.\0A\00", align 1
@iir_ch_serial_dblp = common dso_local global i32 0, align 4
@iir_ch_dblp = common dso_local global i32 0, align 4
@iir_ch_serial_fltp = common dso_local global i32 0, align 4
@iir_ch_fltp = common dso_local global i32 0, align 4
@iir_ch_serial_s32p = common dso_local global i32 0, align 4
@iir_ch_s32p = common dso_local global i32 0, align 4
@iir_ch_serial_s16p = common dso_local global i32 0, align 4
@iir_ch_s16p = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*)* @config_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @config_output(%struct.TYPE_17__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_17__*, align 8
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_15__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %3, align 8
  %11 = load %struct.TYPE_17__*, %struct.TYPE_17__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %11, i32 0, i32 2
  %13 = load %struct.TYPE_18__*, %struct.TYPE_18__** %12, align 8
  store %struct.TYPE_18__* %13, %struct.TYPE_18__** %4, align 8
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 2
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %15, align 8
  store %struct.TYPE_16__* %16, %struct.TYPE_16__** %5, align 8
  %17 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_17__**, %struct.TYPE_17__*** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_17__*, %struct.TYPE_17__** %19, i64 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %6, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 8
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.TYPE_15__* @av_calloc(i32 %29, i32 24)
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 4
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_15__*, %struct.TYPE_15__** %34, align 8
  %36 = icmp ne %struct.TYPE_15__* %35, null
  br i1 %36, label %40, label %37

37:                                               ; preds = %1
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = call i32 @AVERROR(i32 %38)
  store i32 %39, i32* %2, align 4
  br label %363

40:                                               ; preds = %1
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 11
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @read_gains(%struct.TYPE_18__* %41, i32 %44, i32 %47)
  store i32 %48, i32* %8, align 4
  %49 = load i32, i32* %8, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %40
  %52 = load i32, i32* %8, align 4
  store i32 %52, i32* %2, align 4
  br label %363

53:                                               ; preds = %40
  %54 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %55 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %56 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %58, i32 0, i32 10
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @read_channels(%struct.TYPE_18__* %54, i32 %57, i32 %60, i32 0)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %53
  %65 = load i32, i32* %8, align 4
  store i32 %65, i32* %2, align 4
  br label %363

66:                                               ; preds = %53
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %68 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 9
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @read_channels(%struct.TYPE_18__* %67, i32 %70, i32 %73, i32 1)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %66
  %78 = load i32, i32* %8, align 4
  store i32 %78, i32* %2, align 4
  br label %363

79:                                               ; preds = %66
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 2
  br i1 %83, label %84, label %90

84:                                               ; preds = %79
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @convert_pr2zp(%struct.TYPE_18__* %85, i32 %88)
  br label %102

90:                                               ; preds = %79
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 3
  br i1 %94, label %95, label %101

95:                                               ; preds = %90
  %96 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @convert_pd2zp(%struct.TYPE_18__* %96, i32 %99)
  br label %101

101:                                              ; preds = %95, %90
  br label %102

102:                                              ; preds = %101, %84
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 5
  %105 = call i32 @av_frame_free(i32* %104)
  %106 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %107 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %106, i32 0, i32 8
  %108 = load i64, i64* %107, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %138

110:                                              ; preds = %102
  %111 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %112 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %116, i32 0, i32 7
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %120 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @ff_get_video_buffer(i32 %115, i32 %118, i32 %121)
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  %125 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %125, i32 0, i32 5
  %127 = load i32, i32* %126, align 8
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %132, label %129

129:                                              ; preds = %110
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = call i32 @AVERROR(i32 %130)
  store i32 %131, i32* %2, align 4
  br label %363

132:                                              ; preds = %110
  %133 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @draw_response(%struct.TYPE_18__* %133, i32 %136)
  br label %138

138:                                              ; preds = %132, %102
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %147

143:                                              ; preds = %138
  %144 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %145 = load i32, i32* @AV_LOG_WARNING, align 4
  %146 = call i32 @av_log(%struct.TYPE_18__* %144, i32 %145, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  br label %147

147:                                              ; preds = %143, %138
  %148 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = icmp sgt i32 %150, 0
  br i1 %151, label %152, label %171

152:                                              ; preds = %147
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 8
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %159 = load i32, i32* @AV_LOG_WARNING, align 4
  %160 = call i32 @av_log(%struct.TYPE_18__* %158, i32 %159, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0))
  %161 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %162 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @convert_zp2tf(%struct.TYPE_18__* %161, i32 %164)
  store i32 %165, i32* %8, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %157
  %169 = load i32, i32* %8, align 4
  store i32 %169, i32* %2, align 4
  br label %363

170:                                              ; preds = %157
  br label %218

171:                                              ; preds = %152, %147
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %186

176:                                              ; preds = %171
  %177 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = icmp eq i32 %179, 1
  br i1 %180, label %181, label %186

181:                                              ; preds = %176
  %182 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %183 = load i32, i32* @AV_LOG_ERROR, align 4
  %184 = call i32 @av_log(%struct.TYPE_18__* %182, i32 %183, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.2, i64 0, i64 0))
  %185 = load i32, i32* @AVERROR_PATCHWELCOME, align 4
  store i32 %185, i32* %2, align 4
  br label %363

186:                                              ; preds = %176, %171
  %187 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %188 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %216

191:                                              ; preds = %186
  %192 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 8
  %195 = icmp eq i32 %194, 1
  br i1 %195, label %196, label %216

196:                                              ; preds = %191
  %197 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %198 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = icmp eq i32 %199, 129
  br i1 %200, label %201, label %205

201:                                              ; preds = %196
  %202 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %203 = load i32, i32* @AV_LOG_WARNING, align 4
  %204 = call i32 @av_log(%struct.TYPE_18__* %202, i32 %203, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0))
  br label %205

205:                                              ; preds = %201, %196
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %207 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 8
  %210 = call i32 @decompose_zp2biquads(%struct.TYPE_18__* %206, i32 %209)
  store i32 %210, i32* %8, align 4
  %211 = load i32, i32* %8, align 4
  %212 = icmp slt i32 %211, 0
  br i1 %212, label %213, label %215

213:                                              ; preds = %205
  %214 = load i32, i32* %8, align 4
  store i32 %214, i32* %2, align 4
  br label %363

215:                                              ; preds = %205
  br label %216

216:                                              ; preds = %215, %191, %186
  br label %217

217:                                              ; preds = %216
  br label %218

218:                                              ; preds = %217, %170
  store i32 0, i32* %7, align 4
  br label %219

219:                                              ; preds = %303, %218
  %220 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %230

224:                                              ; preds = %219
  %225 = load i32, i32* %7, align 4
  %226 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %227 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 8
  %229 = icmp slt i32 %225, %228
  br label %230

230:                                              ; preds = %224, %219
  %231 = phi i1 [ false, %219 ], [ %229, %224 ]
  br i1 %231, label %232, label %306

232:                                              ; preds = %230
  %233 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %234 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %233, i32 0, i32 4
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** %234, align 8
  %236 = load i32, i32* %7, align 4
  %237 = sext i32 %236 to i64
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i64 %237
  store %struct.TYPE_15__* %238, %struct.TYPE_15__** %10, align 8
  store i32 1, i32* %9, align 4
  br label %239

239:                                              ; preds = %265, %232
  %240 = load i32, i32* %9, align 4
  %241 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %241, i32 0, i32 0
  %243 = load i32*, i32** %242, align 8
  %244 = getelementptr inbounds i32, i32* %243, i64 0
  %245 = load i32, i32* %244, align 4
  %246 = icmp slt i32 %240, %245
  br i1 %246, label %247, label %268

247:                                              ; preds = %239
  %248 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %249 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %248, i32 0, i32 1
  %250 = load i32**, i32*** %249, align 8
  %251 = getelementptr inbounds i32*, i32** %250, i64 0
  %252 = load i32*, i32** %251, align 8
  %253 = getelementptr inbounds i32, i32* %252, i64 0
  %254 = load i32, i32* %253, align 4
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  %257 = load i32**, i32*** %256, align 8
  %258 = getelementptr inbounds i32*, i32** %257, i64 0
  %259 = load i32*, i32** %258, align 8
  %260 = load i32, i32* %9, align 4
  %261 = sext i32 %260 to i64
  %262 = getelementptr inbounds i32, i32* %259, i64 %261
  %263 = load i32, i32* %262, align 4
  %264 = sdiv i32 %263, %254
  store i32 %264, i32* %262, align 4
  br label %265

265:                                              ; preds = %247
  %266 = load i32, i32* %9, align 4
  %267 = add nsw i32 %266, 1
  store i32 %267, i32* %9, align 4
  br label %239

268:                                              ; preds = %239
  store i32 0, i32* %9, align 4
  br label %269

269:                                              ; preds = %299, %268
  %270 = load i32, i32* %9, align 4
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 0
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp slt i32 %270, %275
  br i1 %276, label %277, label %302

277:                                              ; preds = %269
  %278 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %279 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %278, i32 0, i32 2
  %280 = load i32, i32* %279, align 8
  %281 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %282 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %281, i32 0, i32 1
  %283 = load i32**, i32*** %282, align 8
  %284 = getelementptr inbounds i32*, i32** %283, i64 0
  %285 = load i32*, i32** %284, align 8
  %286 = getelementptr inbounds i32, i32* %285, i64 0
  %287 = load i32, i32* %286, align 4
  %288 = sdiv i32 %280, %287
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  %291 = load i32**, i32*** %290, align 8
  %292 = getelementptr inbounds i32*, i32** %291, i64 1
  %293 = load i32*, i32** %292, align 8
  %294 = load i32, i32* %9, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds i32, i32* %293, i64 %295
  %297 = load i32, i32* %296, align 4
  %298 = mul nsw i32 %297, %288
  store i32 %298, i32* %296, align 4
  br label %299

299:                                              ; preds = %277
  %300 = load i32, i32* %9, align 4
  %301 = add nsw i32 %300, 1
  store i32 %301, i32* %9, align 4
  br label %269

302:                                              ; preds = %269
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %7, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %7, align 4
  br label %219

306:                                              ; preds = %230
  %307 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %308 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %307, i32 0, i32 1
  %309 = load i32, i32* %308, align 4
  switch i32 %309, label %362 [
    i32 131, label %310
    i32 130, label %323
    i32 128, label %336
    i32 129, label %349
  ]

310:                                              ; preds = %306
  %311 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %312 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %311, i32 0, i32 2
  %313 = load i32, i32* %312, align 8
  %314 = icmp eq i32 %313, 1
  br i1 %314, label %315, label %317

315:                                              ; preds = %310
  %316 = load i32, i32* @iir_ch_serial_dblp, align 4
  br label %319

317:                                              ; preds = %310
  %318 = load i32, i32* @iir_ch_dblp, align 4
  br label %319

319:                                              ; preds = %317, %315
  %320 = phi i32 [ %316, %315 ], [ %318, %317 ]
  %321 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %322 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %321, i32 0, i32 3
  store i32 %320, i32* %322, align 4
  br label %362

323:                                              ; preds = %306
  %324 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %324, i32 0, i32 2
  %326 = load i32, i32* %325, align 8
  %327 = icmp eq i32 %326, 1
  br i1 %327, label %328, label %330

328:                                              ; preds = %323
  %329 = load i32, i32* @iir_ch_serial_fltp, align 4
  br label %332

330:                                              ; preds = %323
  %331 = load i32, i32* @iir_ch_fltp, align 4
  br label %332

332:                                              ; preds = %330, %328
  %333 = phi i32 [ %329, %328 ], [ %331, %330 ]
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 3
  store i32 %333, i32* %335, align 4
  br label %362

336:                                              ; preds = %306
  %337 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %338 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %337, i32 0, i32 2
  %339 = load i32, i32* %338, align 8
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %341, label %343

341:                                              ; preds = %336
  %342 = load i32, i32* @iir_ch_serial_s32p, align 4
  br label %345

343:                                              ; preds = %336
  %344 = load i32, i32* @iir_ch_s32p, align 4
  br label %345

345:                                              ; preds = %343, %341
  %346 = phi i32 [ %342, %341 ], [ %344, %343 ]
  %347 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %348 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %347, i32 0, i32 3
  store i32 %346, i32* %348, align 4
  br label %362

349:                                              ; preds = %306
  %350 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %351 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %350, i32 0, i32 2
  %352 = load i32, i32* %351, align 8
  %353 = icmp eq i32 %352, 1
  br i1 %353, label %354, label %356

354:                                              ; preds = %349
  %355 = load i32, i32* @iir_ch_serial_s16p, align 4
  br label %358

356:                                              ; preds = %349
  %357 = load i32, i32* @iir_ch_s16p, align 4
  br label %358

358:                                              ; preds = %356, %354
  %359 = phi i32 [ %355, %354 ], [ %357, %356 ]
  %360 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %360, i32 0, i32 3
  store i32 %359, i32* %361, align 4
  br label %362

362:                                              ; preds = %306, %358, %345, %332, %319
  store i32 0, i32* %2, align 4
  br label %363

363:                                              ; preds = %362, %213, %181, %168, %129, %77, %64, %51, %37
  %364 = load i32, i32* %2, align 4
  ret i32 %364
}

declare dso_local %struct.TYPE_15__* @av_calloc(i32, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @read_gains(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @read_channels(%struct.TYPE_18__*, i32, i32, i32) #1

declare dso_local i32 @convert_pr2zp(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @convert_pd2zp(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_frame_free(i32*) #1

declare dso_local i32 @ff_get_video_buffer(i32, i32, i32) #1

declare dso_local i32 @draw_response(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_18__*, i32, i8*) #1

declare dso_local i32 @convert_zp2tf(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @decompose_zp2biquads(%struct.TYPE_18__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
