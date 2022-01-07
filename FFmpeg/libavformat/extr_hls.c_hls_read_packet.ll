; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_hls_read_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_hls.c_hls_read_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_27__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, i64, i8*, %struct.playlist**, i64 }
%struct.playlist = type { i64, i64, i32, i64, %struct.TYPE_26__, %struct.TYPE_24__**, %struct.TYPE_21__*, i64, i64, i32, i64 }
%struct.TYPE_26__ = type { i64, i64, i32, i64 }
%struct.TYPE_24__ = type { i64, %struct.TYPE_22__*, %struct.TYPE_25__, i32, i32 }
%struct.TYPE_22__ = type { i64 }
%struct.TYPE_25__ = type { i32 }
%struct.TYPE_21__ = type { i32, i32, %struct.TYPE_24__**, i32, i32 }

@AVERROR_EOF = common dso_local global i32 0, align 4
@AV_NOPTS_VALUE = common dso_local global i64 0, align 8
@AV_TIME_BASE_Q = common dso_local global i32 0, align 4
@AV_TIME_BASE = common dso_local global i32 0, align 4
@AV_ROUND_DOWN = common dso_local global i32 0, align 4
@AVSEEK_FLAG_ANY = common dso_local global i32 0, align 4
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@AVFMT_EVENT_FLAG_METADATA_UPDATED = common dso_local global i32 0, align 4
@AVSTREAM_EVENT_FLAG_METADATA_UPDATED = common dso_local global i32 0, align 4
@AVFMTCTX_NOHEADER = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"stream index inconsistency: index %d, %d main streams, %d subdemuxer streams\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_27__*, %struct.TYPE_26__*)* @hls_read_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hls_read_packet(%struct.TYPE_27__* %0, %struct.TYPE_26__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_27__*, align 8
  %5 = alloca %struct.TYPE_26__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.playlist*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_25__, align 4
  %13 = alloca %struct.TYPE_25__, align 4
  %14 = alloca %struct.TYPE_25__, align 4
  %15 = alloca %struct.playlist*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.playlist*, align 8
  %19 = alloca %struct.TYPE_24__*, align 8
  %20 = alloca %struct.TYPE_24__*, align 8
  store %struct.TYPE_27__* %0, %struct.TYPE_27__** %4, align 8
  store %struct.TYPE_26__* %1, %struct.TYPE_26__** %5, align 8
  %21 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  store %struct.TYPE_23__* %23, %struct.TYPE_23__** %6, align 8
  store i32 -1, i32* %9, align 4
  %24 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %25 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @recheck_discard_flags(%struct.TYPE_27__* %24, i64 %27)
  %29 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %29, i32 0, i32 4
  store i64 0, i64* %30, align 8
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %253, %2
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %34 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %256

37:                                               ; preds = %31
  %38 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %38, i32 0, i32 3
  %40 = load %struct.playlist**, %struct.playlist*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.playlist*, %struct.playlist** %40, i64 %42
  %44 = load %struct.playlist*, %struct.playlist** %43, align 8
  store %struct.playlist* %44, %struct.playlist** %10, align 8
  %45 = load %struct.playlist*, %struct.playlist** %10, align 8
  %46 = getelementptr inbounds %struct.playlist, %struct.playlist* %45, i32 0, i32 10
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %201

49:                                               ; preds = %37
  %50 = load %struct.playlist*, %struct.playlist** %10, align 8
  %51 = getelementptr inbounds %struct.playlist, %struct.playlist* %50, i32 0, i32 4
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %201, label %55

55:                                               ; preds = %49
  br label %56

56:                                               ; preds = %55, %196
  %57 = load %struct.playlist*, %struct.playlist** %10, align 8
  %58 = getelementptr inbounds %struct.playlist, %struct.playlist* %57, i32 0, i32 6
  %59 = load %struct.TYPE_21__*, %struct.TYPE_21__** %58, align 8
  %60 = load %struct.playlist*, %struct.playlist** %10, align 8
  %61 = getelementptr inbounds %struct.playlist, %struct.playlist* %60, i32 0, i32 4
  %62 = call i32 @av_read_frame(%struct.TYPE_21__* %59, %struct.TYPE_26__* %61)
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %80

65:                                               ; preds = %56
  %66 = load %struct.playlist*, %struct.playlist** %10, align 8
  %67 = getelementptr inbounds %struct.playlist, %struct.playlist* %66, i32 0, i32 9
  %68 = call i32 @avio_feof(i32* %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %76, label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @AVERROR_EOF, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %76

74:                                               ; preds = %70
  %75 = load i32, i32* %7, align 4
  store i32 %75, i32* %3, align 4
  br label %451

76:                                               ; preds = %70, %65
  %77 = load %struct.playlist*, %struct.playlist** %10, align 8
  %78 = getelementptr inbounds %struct.playlist, %struct.playlist* %77, i32 0, i32 4
  %79 = call i32 @reset_packet(%struct.TYPE_26__* %78)
  br label %200

80:                                               ; preds = %56
  %81 = load %struct.playlist*, %struct.playlist** %10, align 8
  %82 = getelementptr inbounds %struct.playlist, %struct.playlist* %81, i32 0, i32 8
  %83 = load i64, i64* %82, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %94

85:                                               ; preds = %80
  %86 = load %struct.playlist*, %struct.playlist** %10, align 8
  %87 = getelementptr inbounds %struct.playlist, %struct.playlist* %86, i32 0, i32 4
  %88 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %85
  %92 = load %struct.playlist*, %struct.playlist** %10, align 8
  %93 = call i32 @fill_timing_for_id3_timestamped_stream(%struct.playlist* %92)
  br label %94

94:                                               ; preds = %91, %85, %80
  %95 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %96 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %99 = icmp eq i64 %97, %98
  br i1 %99, label %100, label %122

100:                                              ; preds = %94
  %101 = load %struct.playlist*, %struct.playlist** %10, align 8
  %102 = getelementptr inbounds %struct.playlist, %struct.playlist* %101, i32 0, i32 4
  %103 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %106 = icmp ne i64 %104, %105
  br i1 %106, label %107, label %122

107:                                              ; preds = %100
  %108 = load %struct.playlist*, %struct.playlist** %10, align 8
  %109 = getelementptr inbounds %struct.playlist, %struct.playlist* %108, i32 0, i32 4
  %110 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.playlist*, %struct.playlist** %10, align 8
  %113 = call i32 @get_timebase(%struct.playlist* %112)
  %114 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  store i32 %113, i32* %114, align 4
  %115 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %116 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %13, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @av_rescale_q(i64 %111, i32 %117, i32 %115)
  %119 = ptrtoint i8* %118 to i64
  %120 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %120, i32 0, i32 1
  store i64 %119, i64* %121, align 8
  br label %122

122:                                              ; preds = %107, %100, %94
  br label %123

123:                                              ; preds = %122
  %124 = load %struct.playlist*, %struct.playlist** %10, align 8
  %125 = getelementptr inbounds %struct.playlist, %struct.playlist* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %130

129:                                              ; preds = %123
  br label %200

130:                                              ; preds = %123
  %131 = load %struct.playlist*, %struct.playlist** %10, align 8
  %132 = getelementptr inbounds %struct.playlist, %struct.playlist* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = icmp slt i64 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %130
  %136 = load %struct.playlist*, %struct.playlist** %10, align 8
  %137 = getelementptr inbounds %struct.playlist, %struct.playlist* %136, i32 0, i32 1
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.playlist*, %struct.playlist** %10, align 8
  %140 = getelementptr inbounds %struct.playlist, %struct.playlist* %139, i32 0, i32 4
  %141 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = icmp eq i64 %138, %142
  br i1 %143, label %144, label %196

144:                                              ; preds = %135, %130
  %145 = load %struct.playlist*, %struct.playlist** %10, align 8
  %146 = getelementptr inbounds %struct.playlist, %struct.playlist* %145, i32 0, i32 4
  %147 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %155

151:                                              ; preds = %144
  %152 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %153 = load %struct.playlist*, %struct.playlist** %10, align 8
  %154 = getelementptr inbounds %struct.playlist, %struct.playlist* %153, i32 0, i32 0
  store i64 %152, i64* %154, align 8
  br label %200

155:                                              ; preds = %144
  %156 = load %struct.playlist*, %struct.playlist** %10, align 8
  %157 = call i32 @get_timebase(%struct.playlist* %156)
  %158 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %14, i32 0, i32 0
  store i32 %157, i32* %158, align 4
  %159 = bitcast %struct.TYPE_25__* %12 to i8*
  %160 = bitcast %struct.TYPE_25__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %159, i8* align 4 %160, i64 4, i1 false)
  %161 = load %struct.playlist*, %struct.playlist** %10, align 8
  %162 = getelementptr inbounds %struct.playlist, %struct.playlist* %161, i32 0, i32 4
  %163 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %162, i32 0, i32 1
  %164 = load i64, i64* %163, align 8
  %165 = load i32, i32* @AV_TIME_BASE, align 4
  %166 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %12, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load i32, i32* @AV_ROUND_DOWN, align 4
  %169 = call i64 @av_rescale_rnd(i64 %164, i32 %165, i32 %167, i32 %168)
  %170 = load %struct.playlist*, %struct.playlist** %10, align 8
  %171 = getelementptr inbounds %struct.playlist, %struct.playlist* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = sub nsw i64 %169, %172
  store i64 %173, i64* %11, align 8
  %174 = load i64, i64* %11, align 8
  %175 = icmp sge i64 %174, 0
  br i1 %175, label %176, label %195

176:                                              ; preds = %155
  %177 = load %struct.playlist*, %struct.playlist** %10, align 8
  %178 = getelementptr inbounds %struct.playlist, %struct.playlist* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* @AVSEEK_FLAG_ANY, align 4
  %181 = and i32 %179, %180
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %191, label %183

183:                                              ; preds = %176
  %184 = load %struct.playlist*, %struct.playlist** %10, align 8
  %185 = getelementptr inbounds %struct.playlist, %struct.playlist* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %185, i32 0, i32 2
  %187 = load i32, i32* %186, align 8
  %188 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %189 = and i32 %187, %188
  %190 = icmp ne i32 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %183, %176
  %192 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %193 = load %struct.playlist*, %struct.playlist** %10, align 8
  %194 = getelementptr inbounds %struct.playlist, %struct.playlist* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  br label %200

195:                                              ; preds = %183, %155
  br label %196

196:                                              ; preds = %195, %135
  %197 = load %struct.playlist*, %struct.playlist** %10, align 8
  %198 = getelementptr inbounds %struct.playlist, %struct.playlist* %197, i32 0, i32 4
  %199 = call i32 @av_packet_unref(%struct.TYPE_26__* %198)
  br label %56

200:                                              ; preds = %191, %151, %129, %76
  br label %201

201:                                              ; preds = %200, %49, %37
  %202 = load %struct.playlist*, %struct.playlist** %10, align 8
  %203 = getelementptr inbounds %struct.playlist, %struct.playlist* %202, i32 0, i32 4
  %204 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %203, i32 0, i32 3
  %205 = load i64, i64* %204, align 8
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %252

207:                                              ; preds = %201
  %208 = load i32, i32* %9, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  br label %219

211:                                              ; preds = %207
  %212 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %213 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %212, i32 0, i32 3
  %214 = load %struct.playlist**, %struct.playlist*** %213, align 8
  %215 = load i32, i32* %9, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds %struct.playlist*, %struct.playlist** %214, i64 %216
  %218 = load %struct.playlist*, %struct.playlist** %217, align 8
  br label %219

219:                                              ; preds = %211, %210
  %220 = phi %struct.playlist* [ null, %210 ], [ %218, %211 ]
  store %struct.playlist* %220, %struct.playlist** %15, align 8
  %221 = load i32, i32* %9, align 4
  %222 = icmp slt i32 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i32, i32* %8, align 4
  store i32 %224, i32* %9, align 4
  br label %251

225:                                              ; preds = %219
  %226 = load %struct.playlist*, %struct.playlist** %10, align 8
  %227 = getelementptr inbounds %struct.playlist, %struct.playlist* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  store i64 %229, i64* %16, align 8
  %230 = load %struct.playlist*, %struct.playlist** %15, align 8
  %231 = getelementptr inbounds %struct.playlist, %struct.playlist* %230, i32 0, i32 4
  %232 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  store i64 %233, i64* %17, align 8
  %234 = load i64, i64* %16, align 8
  %235 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %236 = icmp eq i64 %234, %235
  br i1 %236, label %248, label %237

237:                                              ; preds = %225
  %238 = load i64, i64* %17, align 8
  %239 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %250

241:                                              ; preds = %237
  %242 = load i64, i64* %16, align 8
  %243 = load %struct.playlist*, %struct.playlist** %10, align 8
  %244 = load i64, i64* %17, align 8
  %245 = load %struct.playlist*, %struct.playlist** %15, align 8
  %246 = call i64 @compare_ts_with_wrapdetect(i64 %242, %struct.playlist* %243, i64 %244, %struct.playlist* %245)
  %247 = icmp slt i64 %246, 0
  br i1 %247, label %248, label %250

248:                                              ; preds = %241, %225
  %249 = load i32, i32* %8, align 4
  store i32 %249, i32* %9, align 4
  br label %250

250:                                              ; preds = %248, %241, %237
  br label %251

251:                                              ; preds = %250, %223
  br label %252

252:                                              ; preds = %251, %201
  br label %253

253:                                              ; preds = %252
  %254 = load i32, i32* %8, align 4
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %8, align 4
  br label %31

256:                                              ; preds = %31
  %257 = load i32, i32* %9, align 4
  %258 = icmp sge i32 %257, 0
  br i1 %258, label %259, label %449

259:                                              ; preds = %256
  %260 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %260, i32 0, i32 3
  %262 = load %struct.playlist**, %struct.playlist*** %261, align 8
  %263 = load i32, i32* %9, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds %struct.playlist*, %struct.playlist** %262, i64 %264
  %266 = load %struct.playlist*, %struct.playlist** %265, align 8
  store %struct.playlist* %266, %struct.playlist** %18, align 8
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %268 = load %struct.playlist*, %struct.playlist** %18, align 8
  %269 = call i32 @update_streams_from_subdemuxer(%struct.TYPE_27__* %267, %struct.playlist* %268)
  store i32 %269, i32* %7, align 4
  %270 = load i32, i32* %7, align 4
  %271 = icmp slt i32 %270, 0
  br i1 %271, label %272, label %277

272:                                              ; preds = %259
  %273 = load %struct.playlist*, %struct.playlist** %18, align 8
  %274 = getelementptr inbounds %struct.playlist, %struct.playlist* %273, i32 0, i32 4
  %275 = call i32 @av_packet_unref(%struct.TYPE_26__* %274)
  %276 = load i32, i32* %7, align 4
  store i32 %276, i32* %3, align 4
  br label %451

277:                                              ; preds = %259
  %278 = load %struct.playlist*, %struct.playlist** %18, align 8
  %279 = getelementptr inbounds %struct.playlist, %struct.playlist* %278, i32 0, i32 6
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* @AVFMT_EVENT_FLAG_METADATA_UPDATED, align 4
  %284 = and i32 %282, %283
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %319

286:                                              ; preds = %277
  %287 = load %struct.playlist*, %struct.playlist** %18, align 8
  %288 = getelementptr inbounds %struct.playlist, %struct.playlist* %287, i32 0, i32 3
  %289 = load i64, i64* %288, align 8
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %310

291:                                              ; preds = %286
  %292 = load %struct.playlist*, %struct.playlist** %18, align 8
  %293 = getelementptr inbounds %struct.playlist, %struct.playlist* %292, i32 0, i32 5
  %294 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %293, align 8
  %295 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %294, i64 0
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %295, align 8
  store %struct.TYPE_24__* %296, %struct.TYPE_24__** %20, align 8
  %297 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %298 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %297, i32 0, i32 4
  %299 = load %struct.playlist*, %struct.playlist** %18, align 8
  %300 = getelementptr inbounds %struct.playlist, %struct.playlist* %299, i32 0, i32 6
  %301 = load %struct.TYPE_21__*, %struct.TYPE_21__** %300, align 8
  %302 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %301, i32 0, i32 4
  %303 = load i32, i32* %302, align 4
  %304 = call i32 @av_dict_copy(i32* %298, i32 %303, i32 0)
  %305 = load i32, i32* @AVSTREAM_EVENT_FLAG_METADATA_UPDATED, align 4
  %306 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %306, i32 0, i32 3
  %308 = load i32, i32* %307, align 4
  %309 = or i32 %308, %305
  store i32 %309, i32* %307, align 4
  br label %310

310:                                              ; preds = %291, %286
  %311 = load i32, i32* @AVFMT_EVENT_FLAG_METADATA_UPDATED, align 4
  %312 = xor i32 %311, -1
  %313 = load %struct.playlist*, %struct.playlist** %18, align 8
  %314 = getelementptr inbounds %struct.playlist, %struct.playlist* %313, i32 0, i32 6
  %315 = load %struct.TYPE_21__*, %struct.TYPE_21__** %314, align 8
  %316 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 8
  %318 = and i32 %317, %312
  store i32 %318, i32* %316, align 8
  br label %319

319:                                              ; preds = %310, %277
  %320 = load %struct.playlist*, %struct.playlist** %18, align 8
  %321 = getelementptr inbounds %struct.playlist, %struct.playlist* %320, i32 0, i32 7
  %322 = load i64, i64* %321, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %338

324:                                              ; preds = %319
  %325 = load %struct.playlist*, %struct.playlist** %18, align 8
  %326 = getelementptr inbounds %struct.playlist, %struct.playlist* %325, i32 0, i32 6
  %327 = load %struct.TYPE_21__*, %struct.TYPE_21__** %326, align 8
  %328 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %327, i32 0, i32 1
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* @AVFMTCTX_NOHEADER, align 4
  %331 = and i32 %329, %330
  %332 = icmp ne i32 %331, 0
  br i1 %332, label %338, label %333

333:                                              ; preds = %324
  %334 = load %struct.playlist*, %struct.playlist** %18, align 8
  %335 = getelementptr inbounds %struct.playlist, %struct.playlist* %334, i32 0, i32 7
  store i64 0, i64* %335, align 8
  %336 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %337 = call i32 @update_noheader_flag(%struct.TYPE_27__* %336)
  br label %338

338:                                              ; preds = %333, %324, %319
  %339 = load %struct.playlist*, %struct.playlist** %18, align 8
  %340 = getelementptr inbounds %struct.playlist, %struct.playlist* %339, i32 0, i32 4
  %341 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = load %struct.playlist*, %struct.playlist** %18, align 8
  %344 = getelementptr inbounds %struct.playlist, %struct.playlist* %343, i32 0, i32 3
  %345 = load i64, i64* %344, align 8
  %346 = icmp sge i64 %342, %345
  br i1 %346, label %347, label %367

347:                                              ; preds = %338
  %348 = load %struct.TYPE_27__*, %struct.TYPE_27__** %4, align 8
  %349 = load i32, i32* @AV_LOG_ERROR, align 4
  %350 = load %struct.playlist*, %struct.playlist** %18, align 8
  %351 = getelementptr inbounds %struct.playlist, %struct.playlist* %350, i32 0, i32 4
  %352 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %351, i32 0, i32 0
  %353 = load i64, i64* %352, align 8
  %354 = load %struct.playlist*, %struct.playlist** %18, align 8
  %355 = getelementptr inbounds %struct.playlist, %struct.playlist* %354, i32 0, i32 3
  %356 = load i64, i64* %355, align 8
  %357 = load %struct.playlist*, %struct.playlist** %18, align 8
  %358 = getelementptr inbounds %struct.playlist, %struct.playlist* %357, i32 0, i32 6
  %359 = load %struct.TYPE_21__*, %struct.TYPE_21__** %358, align 8
  %360 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 8
  %362 = call i32 @av_log(%struct.TYPE_27__* %348, i32 %349, i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str, i64 0, i64 0), i64 %353, i64 %356, i32 %361)
  %363 = load %struct.playlist*, %struct.playlist** %18, align 8
  %364 = getelementptr inbounds %struct.playlist, %struct.playlist* %363, i32 0, i32 4
  %365 = call i32 @av_packet_unref(%struct.TYPE_26__* %364)
  %366 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %366, i32* %3, align 4
  br label %451

367:                                              ; preds = %338
  %368 = load %struct.playlist*, %struct.playlist** %18, align 8
  %369 = getelementptr inbounds %struct.playlist, %struct.playlist* %368, i32 0, i32 6
  %370 = load %struct.TYPE_21__*, %struct.TYPE_21__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %370, i32 0, i32 2
  %372 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %371, align 8
  %373 = load %struct.playlist*, %struct.playlist** %18, align 8
  %374 = getelementptr inbounds %struct.playlist, %struct.playlist* %373, i32 0, i32 4
  %375 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %374, i32 0, i32 0
  %376 = load i64, i64* %375, align 8
  %377 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %372, i64 %376
  %378 = load %struct.TYPE_24__*, %struct.TYPE_24__** %377, align 8
  store %struct.TYPE_24__* %378, %struct.TYPE_24__** %19, align 8
  %379 = load %struct.playlist*, %struct.playlist** %18, align 8
  %380 = getelementptr inbounds %struct.playlist, %struct.playlist* %379, i32 0, i32 5
  %381 = load %struct.TYPE_24__**, %struct.TYPE_24__*** %380, align 8
  %382 = load %struct.playlist*, %struct.playlist** %18, align 8
  %383 = getelementptr inbounds %struct.playlist, %struct.playlist* %382, i32 0, i32 4
  %384 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  %386 = getelementptr inbounds %struct.TYPE_24__*, %struct.TYPE_24__** %381, i64 %385
  %387 = load %struct.TYPE_24__*, %struct.TYPE_24__** %386, align 8
  store %struct.TYPE_24__* %387, %struct.TYPE_24__** %20, align 8
  %388 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %389 = load %struct.playlist*, %struct.playlist** %18, align 8
  %390 = getelementptr inbounds %struct.playlist, %struct.playlist* %389, i32 0, i32 4
  %391 = bitcast %struct.TYPE_26__* %388 to i8*
  %392 = bitcast %struct.TYPE_26__* %390 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %391, i8* align 8 %392, i64 32, i1 false)
  %393 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %394 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %393, i32 0, i32 0
  %395 = load i64, i64* %394, align 8
  %396 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %397 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %396, i32 0, i32 0
  store i64 %395, i64* %397, align 8
  %398 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %398, i32 0, i32 3
  %400 = load %struct.playlist**, %struct.playlist*** %399, align 8
  %401 = load i32, i32* %9, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds %struct.playlist*, %struct.playlist** %400, i64 %402
  %404 = load %struct.playlist*, %struct.playlist** %403, align 8
  %405 = getelementptr inbounds %struct.playlist, %struct.playlist* %404, i32 0, i32 4
  %406 = call i32 @reset_packet(%struct.TYPE_26__* %405)
  %407 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %408 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %407, i32 0, i32 1
  %409 = load i64, i64* %408, align 8
  %410 = load i64, i64* @AV_NOPTS_VALUE, align 8
  %411 = icmp ne i64 %409, %410
  br i1 %411, label %412, label %424

412:                                              ; preds = %367
  %413 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %414 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %413, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %417 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %416, i32 0, i32 2
  %418 = load i32, i32* @AV_TIME_BASE_Q, align 4
  %419 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %417, i32 0, i32 0
  %420 = load i32, i32* %419, align 8
  %421 = call i8* @av_rescale_q(i64 %415, i32 %420, i32 %418)
  %422 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %423 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %422, i32 0, i32 2
  store i8* %421, i8** %423, align 8
  br label %424

424:                                              ; preds = %412, %367
  %425 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %426 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %425, i32 0, i32 1
  %427 = load %struct.TYPE_22__*, %struct.TYPE_22__** %426, align 8
  %428 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %427, i32 0, i32 0
  %429 = load i64, i64* %428, align 8
  %430 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %431 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %430, i32 0, i32 1
  %432 = load %struct.TYPE_22__*, %struct.TYPE_22__** %431, align 8
  %433 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %432, i32 0, i32 0
  %434 = load i64, i64* %433, align 8
  %435 = icmp ne i64 %429, %434
  br i1 %435, label %436, label %448

436:                                              ; preds = %424
  %437 = load %struct.TYPE_24__*, %struct.TYPE_24__** %20, align 8
  %438 = load %struct.playlist*, %struct.playlist** %18, align 8
  %439 = load %struct.TYPE_24__*, %struct.TYPE_24__** %19, align 8
  %440 = call i32 @set_stream_info_from_input_stream(%struct.TYPE_24__* %437, %struct.playlist* %438, %struct.TYPE_24__* %439)
  store i32 %440, i32* %7, align 4
  %441 = load i32, i32* %7, align 4
  %442 = icmp slt i32 %441, 0
  br i1 %442, label %443, label %447

443:                                              ; preds = %436
  %444 = load %struct.TYPE_26__*, %struct.TYPE_26__** %5, align 8
  %445 = call i32 @av_packet_unref(%struct.TYPE_26__* %444)
  %446 = load i32, i32* %7, align 4
  store i32 %446, i32* %3, align 4
  br label %451

447:                                              ; preds = %436
  br label %448

448:                                              ; preds = %447, %424
  store i32 0, i32* %3, align 4
  br label %451

449:                                              ; preds = %256
  %450 = load i32, i32* @AVERROR_EOF, align 4
  store i32 %450, i32* %3, align 4
  br label %451

451:                                              ; preds = %449, %448, %443, %347, %272, %74
  %452 = load i32, i32* %3, align 4
  ret i32 %452
}

declare dso_local i32 @recheck_discard_flags(%struct.TYPE_27__*, i64) #1

declare dso_local i32 @av_read_frame(%struct.TYPE_21__*, %struct.TYPE_26__*) #1

declare dso_local i32 @avio_feof(i32*) #1

declare dso_local i32 @reset_packet(%struct.TYPE_26__*) #1

declare dso_local i32 @fill_timing_for_id3_timestamped_stream(%struct.playlist*) #1

declare dso_local i8* @av_rescale_q(i64, i32, i32) #1

declare dso_local i32 @get_timebase(%struct.playlist*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i64 @av_rescale_rnd(i64, i32, i32, i32) #1

declare dso_local i32 @av_packet_unref(%struct.TYPE_26__*) #1

declare dso_local i64 @compare_ts_with_wrapdetect(i64, %struct.playlist*, i64, %struct.playlist*) #1

declare dso_local i32 @update_streams_from_subdemuxer(%struct.TYPE_27__*, %struct.playlist*) #1

declare dso_local i32 @av_dict_copy(i32*, i32, i32) #1

declare dso_local i32 @update_noheader_flag(%struct.TYPE_27__*) #1

declare dso_local i32 @av_log(%struct.TYPE_27__*, i32, i8*, i64, i64, i32) #1

declare dso_local i32 @set_stream_info_from_input_stream(%struct.TYPE_24__*, %struct.playlist*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
