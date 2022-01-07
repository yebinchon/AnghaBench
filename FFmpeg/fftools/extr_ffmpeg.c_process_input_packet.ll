; ModuleID = '/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_process_input_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/fftools/extr_ffmpeg.c_process_input_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_32__ = type { i64 }
%struct.TYPE_33__ = type { i32, i32, i8*, i64, i64, i32, %struct.TYPE_31__*, %struct.TYPE_28__*, %struct.TYPE_30__, i64, i32 }
%struct.TYPE_31__ = type { i32, i32, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_28__ = type { i32, i32, %struct.TYPE_29__ }
%struct.TYPE_29__ = type { i64 }
%struct.TYPE_30__ = type { i32 }
%struct.TYPE_34__ = type { i64, i64, i32, i64, i32* }
%struct.TYPE_27__ = type { i32 }

@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Error while decoding stream #%d:%d: %s\0A\00", align 1
@AV_LOG_FATAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Error while processing the decoded data for stream #%d:%d\0A\00", align 1
@exit_on_error = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [35 x i8] c"Error marking filters as finished\0A\00", align 1
@nb_output_streams = common dso_local global i32 0, align 4
@output_streams = common dso_local global %struct.TYPE_32__** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_33__*, %struct.TYPE_34__*, i32)* @process_input_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @process_input_packet(%struct.TYPE_33__* %0, %struct.TYPE_34__* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_33__*, align 8
  %6 = alloca %struct.TYPE_34__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_34__, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_32__*, align 8
  store %struct.TYPE_33__* %0, %struct.TYPE_33__** %5, align 8
  store %struct.TYPE_34__* %1, %struct.TYPE_34__** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %23 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %100, label %27

27:                                               ; preds = %3
  %28 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %28, i32 0, i32 7
  %30 = load %struct.TYPE_28__*, %struct.TYPE_28__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %27
  %36 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %37 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %36, i32 0, i32 6
  %38 = load %struct.TYPE_31__*, %struct.TYPE_31__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 0, %40
  %42 = load i32, i32* @AV_TIME_BASE, align 4
  %43 = mul nsw i32 %41, %42
  %44 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %44, i32 0, i32 7
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @av_q2d(i64 %49)
  %51 = sdiv i32 %43, %50
  br label %53

52:                                               ; preds = %27
  br label %53

53:                                               ; preds = %52, %35
  %54 = phi i32 [ %51, %35 ], [ 0, %52 ]
  %55 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %55, i32 0, i32 1
  store i32 %54, i32* %56, align 4
  %57 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %57, i32 0, i32 2
  store i8* null, i8** %58, align 8
  %59 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %60 = icmp ne %struct.TYPE_34__* %59, null
  br i1 %60, label %61, label %97

61:                                               ; preds = %53
  %62 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %97

67:                                               ; preds = %61
  %68 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %69 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %68, i32 0, i32 9
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %67
  %73 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = trunc i64 %75 to i32
  %77 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %77, i32 0, i32 7
  %79 = load %struct.TYPE_28__*, %struct.TYPE_28__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %83 = call i8* @av_rescale_q(i32 %76, i32 %81, i32 %82)
  %84 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %85 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr i8, i8* %83, i64 %87
  %89 = ptrtoint i8* %88 to i32
  store i32 %89, i32* %85, align 4
  %90 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %95, i32 0, i32 2
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %72, %67, %61, %53
  %98 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %98, i32 0, i32 0
  store i32 1, i32* %99, align 8
  br label %100

100:                                              ; preds = %97, %3
  %101 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %102 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %101, i32 0, i32 3
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %111, i32 0, i32 3
  store i64 %110, i64* %112, align 8
  br label %113

113:                                              ; preds = %106, %100
  %114 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %113
  %120 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %120, i32 0, i32 2
  %122 = load i8*, i8** %121, align 8
  %123 = ptrtoint i8* %122 to i64
  %124 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %124, i32 0, i32 4
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %119, %113
  %127 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %128 = icmp ne %struct.TYPE_34__* %127, null
  br i1 %128, label %133, label %129

129:                                              ; preds = %126
  %130 = call i32 @av_init_packet(%struct.TYPE_34__* %12)
  %131 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 4
  store i32* null, i32** %131, align 8
  %132 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %12, i32 0, i32 3
  store i64 0, i64* %132, align 8
  br label %137

133:                                              ; preds = %126
  %134 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %135 = bitcast %struct.TYPE_34__* %12 to i8*
  %136 = bitcast %struct.TYPE_34__* %134 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %135, i8* align 8 %136, i64 40, i1 false)
  br label %137

137:                                              ; preds = %133, %129
  %138 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %139 = icmp ne %struct.TYPE_34__* %138, null
  br i1 %139, label %140, label %187

140:                                              ; preds = %137
  %141 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %145 = icmp ne i64 %143, %144
  br i1 %145, label %146, label %187

146:                                              ; preds = %140
  %147 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = trunc i64 %149 to i32
  %151 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %152 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %151, i32 0, i32 7
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %157 = call i8* @av_rescale_q(i32 %150, i32 %155, i32 %156)
  %158 = ptrtoint i8* %157 to i32
  %159 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %160 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = sext i32 %158 to i64
  %162 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %163 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %162, i32 0, i32 3
  store i64 %161, i64* %163, align 8
  %164 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %164, i32 0, i32 6
  %166 = load %struct.TYPE_31__*, %struct.TYPE_31__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 4
  %169 = icmp ne i32 %168, 128
  br i1 %169, label %175, label %170

170:                                              ; preds = %146
  %171 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %172 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %171, i32 0, i32 9
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %186, label %175

175:                                              ; preds = %170, %146
  %176 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = sext i32 %178 to i64
  %180 = inttoptr i64 %179 to i8*
  %181 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %181, i32 0, i32 2
  store i8* %180, i8** %182, align 8
  %183 = ptrtoint i8* %180 to i64
  %184 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %184, i32 0, i32 4
  store i64 %183, i64* %185, align 8
  br label %186

186:                                              ; preds = %175, %170
  br label %187

187:                                              ; preds = %186, %140, %137
  br label %188

188:                                              ; preds = %448, %187
  %189 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %190 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %189, i32 0, i32 9
  %191 = load i64, i64* %190, align 8
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %449

193:                                              ; preds = %188
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %194 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %194, i32 0, i32 4
  %196 = load i64, i64* %195, align 8
  %197 = inttoptr i64 %196 to i8*
  %198 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %198, i32 0, i32 2
  store i8* %197, i8** %199, align 8
  %200 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %200, i32 0, i32 3
  %202 = load i64, i64* %201, align 8
  %203 = trunc i64 %202 to i32
  %204 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %205 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %204, i32 0, i32 1
  store i32 %203, i32* %205, align 4
  %206 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %207 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %206, i32 0, i32 6
  %208 = load %struct.TYPE_31__*, %struct.TYPE_31__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 4
  switch i32 %210, label %389 [
    i32 130, label %211
    i32 128, label %220
    i32 129, label %374
  ]

211:                                              ; preds = %193
  %212 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %213 = load i32, i32* %10, align 4
  %214 = icmp ne i32 %213, 0
  br i1 %214, label %215, label %216

215:                                              ; preds = %211
  br label %217

216:                                              ; preds = %211
  br label %217

217:                                              ; preds = %216, %215
  %218 = phi %struct.TYPE_34__* [ null, %215 ], [ %12, %216 ]
  %219 = call i32 @decode_audio(%struct.TYPE_33__* %212, %struct.TYPE_34__* %218, i32* %15, i32* %16)
  store i32 %219, i32* %8, align 4
  br label %390

220:                                              ; preds = %193
  %221 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %222 = load i32, i32* %10, align 4
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %224, label %225

224:                                              ; preds = %220
  br label %226

225:                                              ; preds = %220
  br label %226

226:                                              ; preds = %225, %224
  %227 = phi %struct.TYPE_34__* [ null, %224 ], [ %12, %225 ]
  %228 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %229 = icmp ne %struct.TYPE_34__* %228, null
  %230 = xor i1 %229, true
  %231 = zext i1 %230 to i32
  %232 = call i32 @decode_video(%struct.TYPE_33__* %221, %struct.TYPE_34__* %227, i32* %15, i32* %14, i32 %231, i32* %16)
  store i32 %232, i32* %8, align 4
  %233 = load i32, i32* %10, align 4
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %241

235:                                              ; preds = %226
  %236 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %237 = icmp ne %struct.TYPE_34__* %236, null
  br i1 %237, label %238, label %241

238:                                              ; preds = %235
  %239 = load i32, i32* %15, align 4
  %240 = icmp ne i32 %239, 0
  br i1 %240, label %241, label %345

241:                                              ; preds = %238, %235, %226
  %242 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %243 = icmp ne %struct.TYPE_34__* %242, null
  br i1 %243, label %244, label %261

244:                                              ; preds = %241
  %245 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %246 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = icmp ne i32 %247, 0
  br i1 %248, label %249, label %261

249:                                              ; preds = %244
  %250 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %250, i32 0, i32 2
  %252 = load i32, i32* %251, align 8
  %253 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %253, i32 0, i32 7
  %255 = load %struct.TYPE_28__*, %struct.TYPE_28__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 8
  %258 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %259 = call i8* @av_rescale_q(i32 %252, i32 %257, i32 %258)
  %260 = ptrtoint i8* %259 to i32
  store i32 %260, i32* %13, align 4
  br label %323

261:                                              ; preds = %244, %241
  %262 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %263 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %262, i32 0, i32 6
  %264 = load %struct.TYPE_31__*, %struct.TYPE_31__** %263, align 8
  %265 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %265, i32 0, i32 0
  %267 = load i32, i32* %266, align 4
  %268 = icmp ne i32 %267, 0
  br i1 %268, label %269, label %322

269:                                              ; preds = %261
  %270 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %270, i32 0, i32 6
  %272 = load %struct.TYPE_31__*, %struct.TYPE_31__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %272, i32 0, i32 5
  %274 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %273, i32 0, i32 1
  %275 = load i32, i32* %274, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %322

277:                                              ; preds = %269
  %278 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %279 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %278, i32 0, i32 7
  %280 = load %struct.TYPE_28__*, %struct.TYPE_28__** %279, align 8
  %281 = call %struct.TYPE_27__* @av_stream_get_parser(%struct.TYPE_28__* %280)
  %282 = icmp ne %struct.TYPE_27__* %281, null
  br i1 %282, label %283, label %291

283:                                              ; preds = %277
  %284 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %285 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %284, i32 0, i32 7
  %286 = load %struct.TYPE_28__*, %struct.TYPE_28__** %285, align 8
  %287 = call %struct.TYPE_27__* @av_stream_get_parser(%struct.TYPE_28__* %286)
  %288 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 4
  %290 = add nsw i32 %289, 1
  br label %297

291:                                              ; preds = %277
  %292 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %293 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %292, i32 0, i32 6
  %294 = load %struct.TYPE_31__*, %struct.TYPE_31__** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %294, i32 0, i32 2
  %296 = load i32, i32* %295, align 4
  br label %297

297:                                              ; preds = %291, %283
  %298 = phi i32 [ %290, %283 ], [ %296, %291 ]
  store i32 %298, i32* %17, align 4
  %299 = load i32, i32* @AV_TIME_BASE, align 4
  %300 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %301 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %300, i32 0, i32 6
  %302 = load %struct.TYPE_31__*, %struct.TYPE_31__** %301, align 8
  %303 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %302, i32 0, i32 5
  %304 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 4
  %306 = mul nsw i32 %299, %305
  %307 = load i32, i32* %17, align 4
  %308 = mul nsw i32 %306, %307
  %309 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %310 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %309, i32 0, i32 6
  %311 = load %struct.TYPE_31__*, %struct.TYPE_31__** %310, align 8
  %312 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %311, i32 0, i32 5
  %313 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %312, i32 0, i32 0
  %314 = load i32, i32* %313, align 4
  %315 = sdiv i32 %308, %314
  %316 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %317 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %316, i32 0, i32 6
  %318 = load %struct.TYPE_31__*, %struct.TYPE_31__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %318, i32 0, i32 2
  %320 = load i32, i32* %319, align 4
  %321 = sdiv i32 %315, %320
  store i32 %321, i32* %13, align 4
  br label %322

322:                                              ; preds = %297, %269, %261
  br label %323

323:                                              ; preds = %322, %249
  %324 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %325 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %324, i32 0, i32 1
  %326 = load i32, i32* %325, align 4
  %327 = sext i32 %326 to i64
  %328 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %329 = icmp ne i64 %327, %328
  br i1 %329, label %330, label %340

330:                                              ; preds = %323
  %331 = load i32, i32* %13, align 4
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %333, label %340

333:                                              ; preds = %330
  %334 = load i32, i32* %13, align 4
  %335 = sext i32 %334 to i64
  %336 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %337 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %336, i32 0, i32 3
  %338 = load i64, i64* %337, align 8
  %339 = add nsw i64 %338, %335
  store i64 %339, i64* %337, align 8
  br label %344

340:                                              ; preds = %330, %323
  %341 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %342 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %343 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %342, i32 0, i32 3
  store i64 %341, i64* %343, align 8
  br label %344

344:                                              ; preds = %340, %333
  br label %345

345:                                              ; preds = %344, %238
  %346 = load i32, i32* %15, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %348, label %373

348:                                              ; preds = %345
  %349 = load i32, i32* %14, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %365

351:                                              ; preds = %348
  %352 = load i32, i32* %14, align 4
  %353 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %354 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %353, i32 0, i32 7
  %355 = load %struct.TYPE_28__*, %struct.TYPE_28__** %354, align 8
  %356 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %355, i32 0, i32 0
  %357 = load i32, i32* %356, align 8
  %358 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %359 = call i8* @av_rescale_q(i32 %352, i32 %357, i32 %358)
  %360 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %361 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %360, i32 0, i32 4
  %362 = load i64, i64* %361, align 8
  %363 = getelementptr i8, i8* %359, i64 %362
  %364 = ptrtoint i8* %363 to i64
  store i64 %364, i64* %361, align 8
  br label %372

365:                                              ; preds = %348
  %366 = load i32, i32* %13, align 4
  %367 = sext i32 %366 to i64
  %368 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %369 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %368, i32 0, i32 4
  %370 = load i64, i64* %369, align 8
  %371 = add nsw i64 %370, %367
  store i64 %371, i64* %369, align 8
  br label %372

372:                                              ; preds = %365, %351
  br label %373

373:                                              ; preds = %372, %345
  br label %390

374:                                              ; preds = %193
  %375 = load i32, i32* %10, align 4
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %377, label %378

377:                                              ; preds = %374
  br label %390

378:                                              ; preds = %374
  %379 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %380 = call i32 @transcode_subtitles(%struct.TYPE_33__* %379, %struct.TYPE_34__* %12, i32* %15, i32* %16)
  store i32 %380, i32* %8, align 4
  %381 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %382 = icmp ne %struct.TYPE_34__* %381, null
  br i1 %382, label %388, label %383

383:                                              ; preds = %378
  %384 = load i32, i32* %8, align 4
  %385 = icmp sge i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %383
  %387 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %387, i32* %8, align 4
  br label %388

388:                                              ; preds = %386, %383, %378
  br label %390

389:                                              ; preds = %193
  store i32 -1, i32* %4, align 4
  br label %703

390:                                              ; preds = %388, %377, %373, %217
  %391 = load i32, i32* %8, align 4
  %392 = load i32, i32* @AVERROR_EOF, align 4
  %393 = icmp eq i32 %391, %392
  br i1 %393, label %394, label %395

394:                                              ; preds = %390
  store i32 1, i32* %11, align 4
  br label %449

395:                                              ; preds = %390
  %396 = load i32, i32* %8, align 4
  %397 = icmp slt i32 %396, 0
  br i1 %397, label %398, label %434

398:                                              ; preds = %395
  %399 = load i32, i32* %16, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %414

401:                                              ; preds = %398
  %402 = load i32, i32* @AV_LOG_ERROR, align 4
  %403 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %404 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %403, i32 0, i32 10
  %405 = load i32, i32* %404, align 8
  %406 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %407 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %406, i32 0, i32 7
  %408 = load %struct.TYPE_28__*, %struct.TYPE_28__** %407, align 8
  %409 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %408, i32 0, i32 1
  %410 = load i32, i32* %409, align 4
  %411 = load i32, i32* %8, align 4
  %412 = call i32 @av_err2str(i32 %411)
  %413 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %402, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %405, i32 %410, i32 %412)
  br label %425

414:                                              ; preds = %398
  %415 = load i32, i32* @AV_LOG_FATAL, align 4
  %416 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %417 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %416, i32 0, i32 10
  %418 = load i32, i32* %417, align 8
  %419 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %420 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %419, i32 0, i32 7
  %421 = load %struct.TYPE_28__*, %struct.TYPE_28__** %420, align 8
  %422 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %421, i32 0, i32 1
  %423 = load i32, i32* %422, align 4
  %424 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %415, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %418, i32 %423)
  br label %425

425:                                              ; preds = %414, %401
  %426 = load i32, i32* %16, align 4
  %427 = icmp ne i32 %426, 0
  br i1 %427, label %428, label %431

428:                                              ; preds = %425
  %429 = load i64, i64* @exit_on_error, align 8
  %430 = icmp ne i64 %429, 0
  br i1 %430, label %431, label %433

431:                                              ; preds = %428, %425
  %432 = call i32 @exit_program(i32 1)
  br label %433

433:                                              ; preds = %431, %428
  br label %449

434:                                              ; preds = %395
  %435 = load i32, i32* %15, align 4
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %440

437:                                              ; preds = %434
  %438 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %439 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %438, i32 0, i32 5
  store i32 1, i32* %439, align 8
  br label %440

440:                                              ; preds = %437, %434
  %441 = load i32, i32* %15, align 4
  %442 = icmp ne i32 %441, 0
  br i1 %442, label %444, label %443

443:                                              ; preds = %440
  br label %449

444:                                              ; preds = %440
  %445 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %446 = icmp ne %struct.TYPE_34__* %445, null
  br i1 %446, label %448, label %447

447:                                              ; preds = %444
  br label %449

448:                                              ; preds = %444
  store i32 1, i32* %10, align 4
  br label %188

449:                                              ; preds = %447, %443, %433, %394, %188
  %450 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %451 = icmp ne %struct.TYPE_34__* %450, null
  br i1 %451, label %473, label %452

452:                                              ; preds = %449
  %453 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %454 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %453, i32 0, i32 9
  %455 = load i64, i64* %454, align 8
  %456 = icmp ne i64 %455, 0
  br i1 %456, label %457, label %473

457:                                              ; preds = %452
  %458 = load i32, i32* %11, align 4
  %459 = icmp ne i32 %458, 0
  br i1 %459, label %460, label %473

460:                                              ; preds = %457
  %461 = load i32, i32* %7, align 4
  %462 = icmp ne i32 %461, 0
  br i1 %462, label %473, label %463

463:                                              ; preds = %460
  %464 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %465 = call i32 @send_filter_eof(%struct.TYPE_33__* %464)
  store i32 %465, i32* %18, align 4
  %466 = load i32, i32* %18, align 4
  %467 = icmp slt i32 %466, 0
  br i1 %467, label %468, label %472

468:                                              ; preds = %463
  %469 = load i32, i32* @AV_LOG_FATAL, align 4
  %470 = call i32 (i32*, i32, i8*, ...) @av_log(i32* null, i32 %469, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %471 = call i32 @exit_program(i32 1)
  br label %472

472:                                              ; preds = %468, %463
  br label %473

473:                                              ; preds = %472, %460, %457, %452, %449
  %474 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %475 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %474, i32 0, i32 9
  %476 = load i64, i64* %475, align 8
  %477 = icmp ne i64 %476, 0
  br i1 %477, label %669, label %478

478:                                              ; preds = %473
  %479 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %480 = icmp ne %struct.TYPE_34__* %479, null
  br i1 %480, label %481, label %669

481:                                              ; preds = %478
  %482 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %483 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %482, i32 0, i32 3
  %484 = load i64, i64* %483, align 8
  %485 = trunc i64 %484 to i32
  %486 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %487 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %486, i32 0, i32 1
  store i32 %485, i32* %487, align 4
  %488 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %489 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %488, i32 0, i32 6
  %490 = load %struct.TYPE_31__*, %struct.TYPE_31__** %489, align 8
  %491 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %490, i32 0, i32 1
  %492 = load i32, i32* %491, align 4
  switch i32 %492, label %656 [
    i32 130, label %493
    i32 128, label %542
  ]

493:                                              ; preds = %481
  %494 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %495 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %494, i32 0, i32 2
  %496 = load i32, i32* %495, align 8
  %497 = icmp sge i32 %496, 0
  %498 = zext i1 %497 to i32
  %499 = call i32 @av_assert1(i32 %498)
  %500 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %501 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %500, i32 0, i32 6
  %502 = load %struct.TYPE_31__*, %struct.TYPE_31__** %501, align 8
  %503 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %502, i32 0, i32 3
  %504 = load i32, i32* %503, align 4
  %505 = icmp ne i32 %504, 0
  br i1 %505, label %506, label %525

506:                                              ; preds = %493
  %507 = load i32, i32* @AV_TIME_BASE, align 4
  %508 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %509 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %508, i32 0, i32 6
  %510 = load %struct.TYPE_31__*, %struct.TYPE_31__** %509, align 8
  %511 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %510, i32 0, i32 4
  %512 = load i32, i32* %511, align 4
  %513 = mul nsw i32 %507, %512
  %514 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %515 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %514, i32 0, i32 6
  %516 = load %struct.TYPE_31__*, %struct.TYPE_31__** %515, align 8
  %517 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %516, i32 0, i32 3
  %518 = load i32, i32* %517, align 4
  %519 = sdiv i32 %513, %518
  %520 = sext i32 %519 to i64
  %521 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %522 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %521, i32 0, i32 3
  %523 = load i64, i64* %522, align 8
  %524 = add nsw i64 %523, %520
  store i64 %524, i64* %522, align 8
  br label %541

525:                                              ; preds = %493
  %526 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %527 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %526, i32 0, i32 2
  %528 = load i32, i32* %527, align 8
  %529 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %530 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %529, i32 0, i32 7
  %531 = load %struct.TYPE_28__*, %struct.TYPE_28__** %530, align 8
  %532 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 8
  %534 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %535 = call i8* @av_rescale_q(i32 %528, i32 %533, i32 %534)
  %536 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %537 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %536, i32 0, i32 3
  %538 = load i64, i64* %537, align 8
  %539 = getelementptr i8, i8* %535, i64 %538
  %540 = ptrtoint i8* %539 to i64
  store i64 %540, i64* %537, align 8
  br label %541

541:                                              ; preds = %525, %506
  br label %656

542:                                              ; preds = %481
  %543 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %544 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %543, i32 0, i32 8
  %545 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %544, i32 0, i32 0
  %546 = load i32, i32* %545, align 8
  %547 = icmp ne i32 %546, 0
  br i1 %547, label %548, label %574

548:                                              ; preds = %542
  %549 = load i32, i32* @AV_TIME_BASE_Q, align 4
  store i32 %549, i32* %19, align 4
  %550 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %551 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %550, i32 0, i32 3
  %552 = load i64, i64* %551, align 8
  %553 = trunc i64 %552 to i32
  %554 = load i32, i32* %19, align 4
  %555 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %556 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %555, i32 0, i32 8
  %557 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %556, i32 0, i32 0
  %558 = load i32, i32* %557, align 8
  %559 = call i32 @av_inv_q(i32 %558)
  %560 = call i8* @av_rescale_q(i32 %553, i32 %554, i32 %559)
  %561 = ptrtoint i8* %560 to i32
  store i32 %561, i32* %20, align 4
  %562 = load i32, i32* %20, align 4
  %563 = add nsw i32 %562, 1
  %564 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %565 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %564, i32 0, i32 8
  %566 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %565, i32 0, i32 0
  %567 = load i32, i32* %566, align 8
  %568 = call i32 @av_inv_q(i32 %567)
  %569 = load i32, i32* %19, align 4
  %570 = call i8* @av_rescale_q(i32 %563, i32 %568, i32 %569)
  %571 = ptrtoint i8* %570 to i64
  %572 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %573 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %572, i32 0, i32 3
  store i64 %571, i64* %573, align 8
  br label %655

574:                                              ; preds = %542
  %575 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %576 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %575, i32 0, i32 2
  %577 = load i32, i32* %576, align 8
  %578 = icmp ne i32 %577, 0
  br i1 %578, label %579, label %595

579:                                              ; preds = %574
  %580 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %581 = getelementptr inbounds %struct.TYPE_34__, %struct.TYPE_34__* %580, i32 0, i32 2
  %582 = load i32, i32* %581, align 8
  %583 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %584 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %583, i32 0, i32 7
  %585 = load %struct.TYPE_28__*, %struct.TYPE_28__** %584, align 8
  %586 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %585, i32 0, i32 0
  %587 = load i32, i32* %586, align 8
  %588 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %589 = call i8* @av_rescale_q(i32 %582, i32 %587, i32 %588)
  %590 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %591 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %590, i32 0, i32 3
  %592 = load i64, i64* %591, align 8
  %593 = getelementptr i8, i8* %589, i64 %592
  %594 = ptrtoint i8* %593 to i64
  store i64 %594, i64* %591, align 8
  br label %654

595:                                              ; preds = %574
  %596 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %597 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %596, i32 0, i32 6
  %598 = load %struct.TYPE_31__*, %struct.TYPE_31__** %597, align 8
  %599 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %598, i32 0, i32 5
  %600 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %599, i32 0, i32 0
  %601 = load i32, i32* %600, align 4
  %602 = icmp ne i32 %601, 0
  br i1 %602, label %603, label %653

603:                                              ; preds = %595
  %604 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %605 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %604, i32 0, i32 7
  %606 = load %struct.TYPE_28__*, %struct.TYPE_28__** %605, align 8
  %607 = call %struct.TYPE_27__* @av_stream_get_parser(%struct.TYPE_28__* %606)
  %608 = icmp ne %struct.TYPE_27__* %607, null
  br i1 %608, label %609, label %617

609:                                              ; preds = %603
  %610 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %611 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %610, i32 0, i32 7
  %612 = load %struct.TYPE_28__*, %struct.TYPE_28__** %611, align 8
  %613 = call %struct.TYPE_27__* @av_stream_get_parser(%struct.TYPE_28__* %612)
  %614 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %613, i32 0, i32 0
  %615 = load i32, i32* %614, align 4
  %616 = add nsw i32 %615, 1
  br label %623

617:                                              ; preds = %603
  %618 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %619 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %618, i32 0, i32 6
  %620 = load %struct.TYPE_31__*, %struct.TYPE_31__** %619, align 8
  %621 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %620, i32 0, i32 2
  %622 = load i32, i32* %621, align 4
  br label %623

623:                                              ; preds = %617, %609
  %624 = phi i32 [ %616, %609 ], [ %622, %617 ]
  store i32 %624, i32* %21, align 4
  %625 = load i32, i32* @AV_TIME_BASE, align 4
  %626 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %627 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %626, i32 0, i32 6
  %628 = load %struct.TYPE_31__*, %struct.TYPE_31__** %627, align 8
  %629 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %628, i32 0, i32 5
  %630 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %629, i32 0, i32 1
  %631 = load i32, i32* %630, align 4
  %632 = mul nsw i32 %625, %631
  %633 = load i32, i32* %21, align 4
  %634 = mul nsw i32 %632, %633
  %635 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %636 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %635, i32 0, i32 6
  %637 = load %struct.TYPE_31__*, %struct.TYPE_31__** %636, align 8
  %638 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %637, i32 0, i32 5
  %639 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %638, i32 0, i32 0
  %640 = load i32, i32* %639, align 4
  %641 = sdiv i32 %634, %640
  %642 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %643 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %642, i32 0, i32 6
  %644 = load %struct.TYPE_31__*, %struct.TYPE_31__** %643, align 8
  %645 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %644, i32 0, i32 2
  %646 = load i32, i32* %645, align 4
  %647 = sdiv i32 %641, %646
  %648 = sext i32 %647 to i64
  %649 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %650 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %649, i32 0, i32 3
  %651 = load i64, i64* %650, align 8
  %652 = add nsw i64 %651, %648
  store i64 %652, i64* %650, align 8
  br label %653

653:                                              ; preds = %623, %595
  br label %654

654:                                              ; preds = %653, %579
  br label %655

655:                                              ; preds = %654, %548
  br label %656

656:                                              ; preds = %481, %655, %541
  %657 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %658 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %657, i32 0, i32 1
  %659 = load i32, i32* %658, align 4
  %660 = sext i32 %659 to i64
  %661 = inttoptr i64 %660 to i8*
  %662 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %663 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %662, i32 0, i32 2
  store i8* %661, i8** %663, align 8
  %664 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %665 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %664, i32 0, i32 3
  %666 = load i64, i64* %665, align 8
  %667 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %668 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %667, i32 0, i32 4
  store i64 %666, i64* %668, align 8
  br label %669

669:                                              ; preds = %656, %478, %473
  store i32 0, i32* %9, align 4
  br label %670

670:                                              ; preds = %695, %669
  %671 = load i32, i32* %9, align 4
  %672 = load i32, i32* @nb_output_streams, align 4
  %673 = icmp slt i32 %671, %672
  br i1 %673, label %674, label %698

674:                                              ; preds = %670
  %675 = load %struct.TYPE_32__**, %struct.TYPE_32__*** @output_streams, align 8
  %676 = load i32, i32* %9, align 4
  %677 = sext i32 %676 to i64
  %678 = getelementptr inbounds %struct.TYPE_32__*, %struct.TYPE_32__** %675, i64 %677
  %679 = load %struct.TYPE_32__*, %struct.TYPE_32__** %678, align 8
  store %struct.TYPE_32__* %679, %struct.TYPE_32__** %22, align 8
  %680 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %681 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %682 = call i32 @check_output_constraints(%struct.TYPE_33__* %680, %struct.TYPE_32__* %681)
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %689

684:                                              ; preds = %674
  %685 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %686 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %685, i32 0, i32 0
  %687 = load i64, i64* %686, align 8
  %688 = icmp ne i64 %687, 0
  br i1 %688, label %689, label %690

689:                                              ; preds = %684, %674
  br label %695

690:                                              ; preds = %684
  %691 = load %struct.TYPE_33__*, %struct.TYPE_33__** %5, align 8
  %692 = load %struct.TYPE_32__*, %struct.TYPE_32__** %22, align 8
  %693 = load %struct.TYPE_34__*, %struct.TYPE_34__** %6, align 8
  %694 = call i32 @do_streamcopy(%struct.TYPE_33__* %691, %struct.TYPE_32__* %692, %struct.TYPE_34__* %693)
  br label %695

695:                                              ; preds = %690, %689
  %696 = load i32, i32* %9, align 4
  %697 = add nsw i32 %696, 1
  store i32 %697, i32* %9, align 4
  br label %670

698:                                              ; preds = %670
  %699 = load i32, i32* %11, align 4
  %700 = icmp ne i32 %699, 0
  %701 = xor i1 %700, true
  %702 = zext i1 %701 to i32
  store i32 %702, i32* %4, align 4
  br label %703

703:                                              ; preds = %698, %389
  %704 = load i32, i32* %4, align 4
  ret i32 %704
}

declare dso_local i32 @av_q2d(i64) #1

declare dso_local i8* @av_rescale_q(i32, i32, i32) #1

declare dso_local i32 @av_init_packet(%struct.TYPE_34__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @decode_audio(%struct.TYPE_33__*, %struct.TYPE_34__*, i32*, i32*) #1

declare dso_local i32 @decode_video(%struct.TYPE_33__*, %struct.TYPE_34__*, i32*, i32*, i32, i32*) #1

declare dso_local %struct.TYPE_27__* @av_stream_get_parser(%struct.TYPE_28__*) #1

declare dso_local i32 @transcode_subtitles(%struct.TYPE_33__*, %struct.TYPE_34__*, i32*, i32*) #1

declare dso_local i32 @av_log(i32*, i32, i8*, ...) #1

declare dso_local i32 @av_err2str(i32) #1

declare dso_local i32 @exit_program(i32) #1

declare dso_local i32 @send_filter_eof(%struct.TYPE_33__*) #1

declare dso_local i32 @av_assert1(i32) #1

declare dso_local i32 @av_inv_q(i32) #1

declare dso_local i32 @check_output_constraints(%struct.TYPE_33__*, %struct.TYPE_32__*) #1

declare dso_local i32 @do_streamcopy(%struct.TYPE_33__*, %struct.TYPE_32__*, %struct.TYPE_34__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
