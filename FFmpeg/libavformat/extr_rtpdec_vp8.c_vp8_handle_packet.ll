; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_vp8.c_vp8_handle_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_rtpdec_vp8.c_vp8_handle_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i64, i32, i64, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32 }

@AV_PKT_FLAG_CORRUPT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@RTP_FLAG_MARKER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Keyframe missing\0A\00", align 1
@.str.1 = private unnamed_addr constant [35 x i8] c"Missed a picture, sequence broken\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Missed too much, sequence broken\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"Missed unknown data, sequence broken\0A\00", align 1
@.str.4 = private unnamed_addr constant [42 x i8] c"Received no start marker; dropping frame\0A\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"Missed part of a keyframe, sequence broken\0A\00", align 1
@.str.6 = private unnamed_addr constant [53 x i8] c"Missed part of the first partition, sequence broken\0A\00", align 1
@.str.7 = private unnamed_addr constant [26 x i8] c"Received no start marker\0A\00", align 1
@AV_PKT_FLAG_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_9__*, %struct.TYPE_10__*, %struct.TYPE_11__*, i32*, i32*, i32, i64, i32)* @vp8_handle_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vp8_handle_packet(i32* %0, %struct.TYPE_9__* %1, %struct.TYPE_10__* %2, %struct.TYPE_11__* %3, i32* %4, i32* %5, i32 %6, i64 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_9__*, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i64, align 8
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i64, align 8
  %40 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %12, align 8
  store %struct.TYPE_10__* %2, %struct.TYPE_10__** %13, align 8
  store %struct.TYPE_11__* %3, %struct.TYPE_11__** %14, align 8
  store i32* %4, i32** %15, align 8
  store i32* %5, i32** %16, align 8
  store i32 %6, i32* %17, align 4
  store i64 %7, i64* %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %24, align 4
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  store i32 0, i32* %27, align 4
  store i32 -1, i32* %28, align 4
  store i32 0, i32* %29, align 4
  store i32 0, i32* %30, align 4
  store i32 0, i32* %31, align 4
  %41 = load i32*, i32** %16, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %79, label %43

43:                                               ; preds = %9
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %76

48:                                               ; preds = %43
  %49 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 8
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @ff_rtp_finalize_packet(%struct.TYPE_11__* %49, i64* %51, i32 %54)
  store i32 %55, i32* %32, align 4
  %56 = load i32, i32* %32, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %48
  %59 = load i32, i32* %32, align 4
  store i32 %59, i32* %10, align 4
  br label %539

60:                                               ; preds = %48
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 9
  %63 = load i32, i32* %62, align 8
  %64 = load i32*, i32** %15, align 8
  store i32 %63, i32* %64, align 4
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %60
  %70 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = or i32 %73, %70
  store i32 %74, i32* %72, align 4
  br label %75

75:                                               ; preds = %69, %60
  store i32 0, i32* %10, align 4
  br label %539

76:                                               ; preds = %43
  %77 = load i32, i32* @EAGAIN, align 4
  %78 = call i32 @AVERROR(i32 %77)
  store i32 %78, i32* %10, align 4
  br label %539

79:                                               ; preds = %9
  %80 = load i32, i32* %17, align 4
  %81 = icmp slt i32 %80, 1
  br i1 %81, label %82, label %84

82:                                               ; preds = %79
  %83 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %83, i32* %10, align 4
  br label %539

84:                                               ; preds = %79
  %85 = load i32*, i32** %16, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 0
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 128
  store i32 %88, i32* %22, align 4
  %89 = load i32*, i32** %16, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 0
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, 16
  store i32 %92, i32* %20, align 4
  %93 = load i32*, i32** %16, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, 15
  store i32 %96, i32* %23, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* @RTP_FLAG_MARKER, align 4
  %99 = and i32 %97, %98
  store i32 %99, i32* %21, align 4
  %100 = load i32*, i32** %16, align 8
  %101 = getelementptr inbounds i32, i32* %100, i32 1
  store i32* %101, i32** %16, align 8
  %102 = load i32, i32* %17, align 4
  %103 = add nsw i32 %102, -1
  store i32 %103, i32* %17, align 4
  %104 = load i32, i32* %22, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %132

106:                                              ; preds = %84
  %107 = load i32, i32* %17, align 4
  %108 = icmp slt i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %110, i32* %10, align 4
  br label %539

111:                                              ; preds = %106
  %112 = load i32*, i32** %16, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 0
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 128
  store i32 %115, i32* %24, align 4
  %116 = load i32*, i32** %16, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 0
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 64
  store i32 %119, i32* %25, align 4
  %120 = load i32*, i32** %16, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 0
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, 32
  store i32 %123, i32* %26, align 4
  %124 = load i32*, i32** %16, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 0
  %126 = load i32, i32* %125, align 4
  %127 = and i32 %126, 16
  store i32 %127, i32* %27, align 4
  %128 = load i32*, i32** %16, align 8
  %129 = getelementptr inbounds i32, i32* %128, i32 1
  store i32* %129, i32** %16, align 8
  %130 = load i32, i32* %17, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %17, align 4
  br label %132

132:                                              ; preds = %111, %84
  %133 = load i32, i32* %24, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %169

135:                                              ; preds = %132
  %136 = load i32, i32* %17, align 4
  %137 = icmp slt i32 %136, 1
  br i1 %137, label %138, label %140

138:                                              ; preds = %135
  %139 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %139, i32* %10, align 4
  br label %539

140:                                              ; preds = %135
  %141 = load i32*, i32** %16, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 0
  %143 = load i32, i32* %142, align 4
  %144 = and i32 %143, 128
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %159

146:                                              ; preds = %140
  %147 = load i32, i32* %17, align 4
  %148 = icmp slt i32 %147, 2
  br i1 %148, label %149, label %151

149:                                              ; preds = %146
  %150 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %150, i32* %10, align 4
  br label %539

151:                                              ; preds = %146
  %152 = load i32*, i32** %16, align 8
  %153 = call i32 @AV_RB16(i32* %152)
  %154 = and i32 %153, 32767
  store i32 %154, i32* %28, align 4
  store i32 32767, i32* %29, align 4
  %155 = load i32*, i32** %16, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 2
  store i32* %156, i32** %16, align 8
  %157 = load i32, i32* %17, align 4
  %158 = sub nsw i32 %157, 2
  store i32 %158, i32* %17, align 4
  br label %168

159:                                              ; preds = %140
  %160 = load i32*, i32** %16, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 0
  %162 = load i32, i32* %161, align 4
  %163 = and i32 %162, 127
  store i32 %163, i32* %28, align 4
  store i32 127, i32* %29, align 4
  %164 = load i32*, i32** %16, align 8
  %165 = getelementptr inbounds i32, i32* %164, i32 1
  store i32* %165, i32** %16, align 8
  %166 = load i32, i32* %17, align 4
  %167 = add nsw i32 %166, -1
  store i32 %167, i32* %17, align 4
  br label %168

168:                                              ; preds = %159, %151
  br label %169

169:                                              ; preds = %168, %132
  %170 = load i32, i32* %25, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %177

172:                                              ; preds = %169
  %173 = load i32*, i32** %16, align 8
  %174 = getelementptr inbounds i32, i32* %173, i32 1
  store i32* %174, i32** %16, align 8
  %175 = load i32, i32* %17, align 4
  %176 = add nsw i32 %175, -1
  store i32 %176, i32* %17, align 4
  br label %177

177:                                              ; preds = %172, %169
  %178 = load i32, i32* %26, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %183, label %180

180:                                              ; preds = %177
  %181 = load i32, i32* %27, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %188

183:                                              ; preds = %180, %177
  %184 = load i32*, i32** %16, align 8
  %185 = getelementptr inbounds i32, i32* %184, i32 1
  store i32* %185, i32** %16, align 8
  %186 = load i32, i32* %17, align 4
  %187 = add nsw i32 %186, -1
  store i32 %187, i32* %17, align 4
  br label %188

188:                                              ; preds = %183, %180
  %189 = load i32, i32* %17, align 4
  %190 = icmp slt i32 %189, 1
  br i1 %190, label %191, label %193

191:                                              ; preds = %188
  %192 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %192, i32* %10, align 4
  br label %539

193:                                              ; preds = %188
  %194 = load i32, i32* %20, align 4
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %402

196:                                              ; preds = %193
  %197 = load i32, i32* %23, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %402

199:                                              ; preds = %196
  %200 = load i32, i32* %17, align 4
  %201 = icmp sge i32 %200, 3
  br i1 %201, label %202, label %402

202:                                              ; preds = %199
  %203 = load i32*, i32** %16, align 8
  %204 = getelementptr inbounds i32, i32* %203, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = and i32 %205, 1
  store i32 %206, i32* %34, align 4
  %207 = load i32, i32* %34, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %219, label %209

209:                                              ; preds = %202
  %210 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %211 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %210, i32 0, i32 8
  %212 = call i32 @ffio_free_dyn_buf(i64* %211)
  %213 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %214 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %213, i32 0, i32 1
  store i32 1, i32* %214, align 4
  %215 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %216 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %215, i32 0, i32 0
  store i32 0, i32* %216, align 8
  %217 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %218 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %217, i32 0, i32 2
  store i32 1, i32* %218, align 8
  br label %367

219:                                              ; preds = %202
  %220 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %221 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %220, i32 0, i32 8
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %238

224:                                              ; preds = %219
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %238, label %229

229:                                              ; preds = %224
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 8
  %232 = load i64, i64* %231, align 8
  %233 = call i32 @avio_tell(i64 %232)
  %234 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %235 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = icmp sge i32 %233, %236
  br label %238

238:                                              ; preds = %229, %224, %219
  %239 = phi i1 [ false, %224 ], [ false, %219 ], [ %237, %229 ]
  %240 = zext i1 %239 to i32
  store i32 %240, i32* %35, align 4
  %241 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %242 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %241, i32 0, i32 1
  %243 = load i32, i32* %242, align 4
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %248, label %245

245:                                              ; preds = %238
  %246 = load i32, i32* @EAGAIN, align 4
  %247 = call i32 @AVERROR(i32 %246)
  store i32 %247, i32* %10, align 4
  br label %539

248:                                              ; preds = %238
  %249 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %249, i32 0, i32 2
  %251 = load i32, i32* %250, align 8
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %257, label %253

253:                                              ; preds = %248
  %254 = load i32*, i32** %11, align 8
  %255 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %256 = call i32 @vp8_broken_sequence(i32* %254, %struct.TYPE_9__* %255, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %256, i32* %10, align 4
  br label %539

257:                                              ; preds = %248
  %258 = load i32, i32* %28, align 4
  %259 = icmp sge i32 %258, 0
  br i1 %259, label %260, label %287

260:                                              ; preds = %257
  %261 = load i32, i32* %28, align 4
  %262 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %263 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %262, i32 0, i32 5
  %264 = load i32, i32* %263, align 4
  %265 = add nsw i32 %264, 1
  %266 = load i32, i32* %29, align 4
  %267 = and i32 %265, %266
  %268 = icmp ne i32 %261, %267
  br i1 %268, label %269, label %273

269:                                              ; preds = %260
  %270 = load i32*, i32** %11, align 8
  %271 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %272 = call i32 @vp8_broken_sequence(i32* %270, %struct.TYPE_9__* %271, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %272, i32* %10, align 4
  br label %539

273:                                              ; preds = %260
  %274 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %275 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %274, i32 0, i32 8
  %276 = load i64, i64* %275, align 8
  %277 = icmp ne i64 %276, 0
  br i1 %277, label %278, label %285

278:                                              ; preds = %273
  %279 = load i32, i32* %35, align 4
  %280 = icmp ne i32 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %278
  %282 = load i32*, i32** %11, align 8
  %283 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %284 = call i32 @vp8_broken_sequence(i32* %282, %struct.TYPE_9__* %283, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0))
  store i32 %284, i32* %10, align 4
  br label %539

285:                                              ; preds = %278, %273
  br label %286

286:                                              ; preds = %285
  br label %324

287:                                              ; preds = %257
  %288 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %289 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %288, i32 0, i32 6
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %36, align 8
  %292 = load i64, i64* %18, align 8
  %293 = load i64, i64* %36, align 8
  %294 = sub nsw i64 %292, %293
  %295 = trunc i64 %294 to i32
  store i32 %295, i32* %37, align 4
  %296 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %297 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %296, i32 0, i32 8
  %298 = load i64, i64* %297, align 8
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %315

300:                                              ; preds = %287
  %301 = load i32, i32* %37, align 4
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %306, label %303

303:                                              ; preds = %300
  %304 = load i32, i32* %37, align 4
  %305 = icmp eq i32 %304, 1
  br i1 %305, label %306, label %310

306:                                              ; preds = %303, %300
  %307 = load i32, i32* %35, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %310

309:                                              ; preds = %306
  br label %314

310:                                              ; preds = %306, %303
  %311 = load i32*, i32** %11, align 8
  %312 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %313 = call i32 @vp8_broken_sequence(i32* %311, %struct.TYPE_9__* %312, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0))
  store i32 %313, i32* %10, align 4
  br label %539

314:                                              ; preds = %309
  br label %323

315:                                              ; preds = %287
  %316 = load i32, i32* %37, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %322

318:                                              ; preds = %315
  %319 = load i32*, i32** %11, align 8
  %320 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %321 = call i32 @vp8_broken_sequence(i32* %319, %struct.TYPE_9__* %320, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  store i32 %321, i32* %10, align 4
  br label %539

322:                                              ; preds = %315
  br label %323

323:                                              ; preds = %322, %314
  br label %324

324:                                              ; preds = %323, %286
  %325 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %326 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %325, i32 0, i32 8
  %327 = load i64, i64* %326, align 8
  %328 = icmp ne i64 %327, 0
  br i1 %328, label %329, label %366

329:                                              ; preds = %324
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  store i32 1, i32* %331, align 8
  %332 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %333 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %332, i32 0, i32 8
  %334 = load i64, i64* %333, align 8
  %335 = call i32 @avio_tell(i64 %334)
  %336 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %337 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %336, i32 0, i32 4
  %338 = load i32, i32* %337, align 8
  %339 = icmp sge i32 %335, %338
  br i1 %339, label %340, label %361

340:                                              ; preds = %329
  %341 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %342 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %343 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %342, i32 0, i32 8
  %344 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %345 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %344, i32 0, i32 0
  %346 = load i32, i32* %345, align 4
  %347 = call i32 @ff_rtp_finalize_packet(%struct.TYPE_11__* %341, i64* %343, i32 %346)
  store i32 %347, i32* %38, align 4
  %348 = load i32, i32* %38, align 4
  %349 = icmp slt i32 %348, 0
  br i1 %349, label %350, label %352

350:                                              ; preds = %340
  %351 = load i32, i32* %38, align 4
  store i32 %351, i32* %10, align 4
  br label %539

352:                                              ; preds = %340
  %353 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %354 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %354, i32 0, i32 0
  %356 = load i32, i32* %355, align 4
  %357 = or i32 %356, %353
  store i32 %357, i32* %355, align 4
  store i32 1, i32* %30, align 4
  %358 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %359 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %358, i32 0, i32 9
  %360 = load i32, i32* %359, align 8
  store i32 %360, i32* %31, align 4
  br label %365

361:                                              ; preds = %329
  %362 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %363 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %362, i32 0, i32 8
  %364 = call i32 @ffio_free_dyn_buf(i64* %363)
  br label %365

365:                                              ; preds = %361, %352
  br label %366

366:                                              ; preds = %365, %324
  br label %367

367:                                              ; preds = %366, %209
  %368 = load i32*, i32** %16, align 8
  %369 = getelementptr inbounds i32, i32* %368, i64 1
  %370 = call i32 @AV_RL16(i32* %369)
  %371 = shl i32 %370, 3
  %372 = load i32*, i32** %16, align 8
  %373 = getelementptr inbounds i32, i32* %372, i64 0
  %374 = load i32, i32* %373, align 4
  %375 = ashr i32 %374, 5
  %376 = or i32 %371, %375
  %377 = add nsw i32 %376, 3
  %378 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %379 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %378, i32 0, i32 4
  store i32 %377, i32* %379, align 8
  %380 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %381 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %380, i32 0, i32 8
  %382 = call i32 @avio_open_dyn_buf(i64* %381)
  store i32 %382, i32* %33, align 4
  %383 = icmp slt i32 %382, 0
  br i1 %383, label %384, label %386

384:                                              ; preds = %367
  %385 = load i32, i32* %33, align 4
  store i32 %385, i32* %10, align 4
  br label %539

386:                                              ; preds = %367
  %387 = load i32*, i32** %15, align 8
  %388 = load i32, i32* %387, align 4
  %389 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %390 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %389, i32 0, i32 9
  store i32 %388, i32* %390, align 8
  %391 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %392 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %391, i32 0, i32 7
  store i32 0, i32* %392, align 8
  %393 = load i32, i32* %28, align 4
  %394 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %395 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %394, i32 0, i32 5
  store i32 %393, i32* %395, align 4
  %396 = load i32, i32* %34, align 4
  %397 = icmp ne i32 %396, 0
  %398 = xor i1 %397, true
  %399 = zext i1 %398 to i32
  %400 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %401 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %400, i32 0, i32 3
  store i32 %399, i32* %401, align 4
  br label %464

402:                                              ; preds = %199, %196, %193
  %403 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %404 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %403, i32 0, i32 6
  %405 = load i64, i64* %404, align 8
  %406 = add nsw i64 %405, 1
  store i64 %406, i64* %39, align 8
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 1
  %409 = load i32, i32* %408, align 4
  %410 = icmp ne i32 %409, 0
  br i1 %410, label %414, label %411

411:                                              ; preds = %402
  %412 = load i32, i32* @EAGAIN, align 4
  %413 = call i32 @AVERROR(i32 %412)
  store i32 %413, i32* %10, align 4
  br label %539

414:                                              ; preds = %402
  %415 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %416 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %415, i32 0, i32 9
  %417 = load i32, i32* %416, align 8
  %418 = load i32*, i32** %15, align 8
  %419 = load i32, i32* %418, align 4
  %420 = icmp ne i32 %417, %419
  br i1 %420, label %421, label %425

421:                                              ; preds = %414
  %422 = load i32*, i32** %11, align 8
  %423 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %424 = call i32 @vp8_broken_sequence(i32* %422, %struct.TYPE_9__* %423, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  store i32 %424, i32* %10, align 4
  br label %539

425:                                              ; preds = %414
  %426 = load i64, i64* %18, align 8
  %427 = load i64, i64* %39, align 8
  %428 = icmp ne i64 %426, %427
  br i1 %428, label %429, label %463

429:                                              ; preds = %425
  %430 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %431 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %430, i32 0, i32 3
  %432 = load i32, i32* %431, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %438

434:                                              ; preds = %429
  %435 = load i32*, i32** %11, align 8
  %436 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %437 = call i32 @vp8_broken_sequence(i32* %435, %struct.TYPE_9__* %436, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i64 0, i64 0))
  store i32 %437, i32* %10, align 4
  br label %539

438:                                              ; preds = %429
  %439 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %440 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %439, i32 0, i32 8
  %441 = load i64, i64* %440, align 8
  %442 = icmp ne i64 %441, 0
  br i1 %442, label %443, label %457

443:                                              ; preds = %438
  %444 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %445 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %444, i32 0, i32 8
  %446 = load i64, i64* %445, align 8
  %447 = call i32 @avio_tell(i64 %446)
  %448 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %449 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %448, i32 0, i32 4
  %450 = load i32, i32* %449, align 8
  %451 = icmp sge i32 %447, %450
  br i1 %451, label %452, label %457

452:                                              ; preds = %443
  %453 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %454 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %453, i32 0, i32 7
  store i32 1, i32* %454, align 8
  %455 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %456 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %455, i32 0, i32 0
  store i32 1, i32* %456, align 8
  br label %461

457:                                              ; preds = %443, %438
  %458 = load i32*, i32** %11, align 8
  %459 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %460 = call i32 @vp8_broken_sequence(i32* %458, %struct.TYPE_9__* %459, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.6, i64 0, i64 0))
  store i32 %460, i32* %10, align 4
  br label %539

461:                                              ; preds = %452
  br label %462

462:                                              ; preds = %461
  br label %463

463:                                              ; preds = %462, %425
  br label %464

464:                                              ; preds = %463, %386
  %465 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %466 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %465, i32 0, i32 8
  %467 = load i64, i64* %466, align 8
  %468 = icmp ne i64 %467, 0
  br i1 %468, label %473, label %469

469:                                              ; preds = %464
  %470 = load i32*, i32** %11, align 8
  %471 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %472 = call i32 @vp8_broken_sequence(i32* %470, %struct.TYPE_9__* %471, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0))
  store i32 %472, i32* %10, align 4
  br label %539

473:                                              ; preds = %464
  %474 = load i64, i64* %18, align 8
  %475 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %476 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %475, i32 0, i32 6
  store i64 %474, i64* %476, align 8
  %477 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %478 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %477, i32 0, i32 7
  %479 = load i32, i32* %478, align 8
  %480 = icmp ne i32 %479, 0
  br i1 %480, label %488, label %481

481:                                              ; preds = %473
  %482 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %483 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %482, i32 0, i32 8
  %484 = load i64, i64* %483, align 8
  %485 = load i32*, i32** %16, align 8
  %486 = load i32, i32* %17, align 4
  %487 = call i32 @avio_write(i64 %484, i32* %485, i32 %486)
  br label %488

488:                                              ; preds = %481, %473
  %489 = load i32, i32* %30, align 4
  %490 = icmp ne i32 %489, 0
  br i1 %490, label %491, label %498

491:                                              ; preds = %488
  %492 = load i32, i32* %31, align 4
  %493 = load i32*, i32** %15, align 8
  store i32 %492, i32* %493, align 4
  %494 = load i32, i32* %21, align 4
  %495 = icmp ne i32 %494, 0
  %496 = zext i1 %495 to i64
  %497 = select i1 %495, i32 1, i32 0
  store i32 %497, i32* %10, align 4
  br label %539

498:                                              ; preds = %488
  %499 = load i32, i32* %21, align 4
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %501, label %536

501:                                              ; preds = %498
  %502 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %503 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %504 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %503, i32 0, i32 8
  %505 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %506 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %505, i32 0, i32 0
  %507 = load i32, i32* %506, align 4
  %508 = call i32 @ff_rtp_finalize_packet(%struct.TYPE_11__* %502, i64* %504, i32 %507)
  store i32 %508, i32* %40, align 4
  %509 = load i32, i32* %40, align 4
  %510 = icmp slt i32 %509, 0
  br i1 %510, label %511, label %513

511:                                              ; preds = %501
  %512 = load i32, i32* %40, align 4
  store i32 %512, i32* %10, align 4
  br label %539

513:                                              ; preds = %501
  %514 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %515 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %514, i32 0, i32 0
  %516 = load i32, i32* %515, align 8
  %517 = icmp ne i32 %516, 0
  br i1 %517, label %518, label %524

518:                                              ; preds = %513
  %519 = load i32, i32* @AV_PKT_FLAG_CORRUPT, align 4
  %520 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %521 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %520, i32 0, i32 0
  %522 = load i32, i32* %521, align 4
  %523 = or i32 %522, %519
  store i32 %523, i32* %521, align 4
  br label %524

524:                                              ; preds = %518, %513
  %525 = load %struct.TYPE_9__*, %struct.TYPE_9__** %12, align 8
  %526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %525, i32 0, i32 3
  %527 = load i32, i32* %526, align 4
  %528 = icmp ne i32 %527, 0
  br i1 %528, label %529, label %535

529:                                              ; preds = %524
  %530 = load i32, i32* @AV_PKT_FLAG_KEY, align 4
  %531 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %532 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %531, i32 0, i32 0
  %533 = load i32, i32* %532, align 4
  %534 = or i32 %533, %530
  store i32 %534, i32* %532, align 4
  br label %535

535:                                              ; preds = %529, %524
  store i32 0, i32* %10, align 4
  br label %539

536:                                              ; preds = %498
  %537 = load i32, i32* @EAGAIN, align 4
  %538 = call i32 @AVERROR(i32 %537)
  store i32 %538, i32* %10, align 4
  br label %539

539:                                              ; preds = %536, %535, %511, %491, %469, %457, %434, %421, %411, %384, %350, %318, %310, %281, %269, %253, %245, %191, %149, %138, %109, %82, %76, %75, %58
  %540 = load i32, i32* %10, align 4
  ret i32 %540
}

declare dso_local i32 @ff_rtp_finalize_packet(%struct.TYPE_11__*, i64*, i32) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @AV_RB16(i32*) #1

declare dso_local i32 @ffio_free_dyn_buf(i64*) #1

declare dso_local i32 @avio_tell(i64) #1

declare dso_local i32 @vp8_broken_sequence(i32*, %struct.TYPE_9__*, i8*) #1

declare dso_local i32 @AV_RL16(i32*) #1

declare dso_local i32 @avio_open_dyn_buf(i64*) #1

declare dso_local i32 @avio_write(i64, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
