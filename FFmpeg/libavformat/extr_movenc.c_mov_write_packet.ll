; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_packet.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_25__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { i32, %struct.TYPE_22__* }
%struct.TYPE_22__ = type { i64, i64, i32, i64, %struct.TYPE_21__*, i32, i32, i64, i32, %struct.TYPE_20__* }
%struct.TYPE_21__ = type { i64, i64, i32, i32, i64 }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { i64, i32, i64, i32* }

@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Got more than one picture in stream %d, ignoring.\0A\00", align 1
@AV_CODEC_ID_MOV_TEXT = common dso_local global i64 0, align 8
@MODE_MOV = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AV_PIX_FMT_PAL8 = common dso_local global i64 0, align 8
@AV_CODEC_ID_RAWVIDEO = common dso_local global i64 0, align 8
@AV_PIX_FMT_GRAY8 = common dso_local global i64 0, align 8
@AV_PIX_FMT_MONOBLACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_25__*, %struct.TYPE_24__*)* @mov_write_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_packet(%struct.TYPE_25__* %0, %struct.TYPE_24__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_25__*, align 8
  %5 = alloca %struct.TYPE_24__*, align 8
  %6 = alloca %struct.TYPE_23__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_22__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_24__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_25__* %0, %struct.TYPE_25__** %4, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %5, align 8
  %17 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_23__*, %struct.TYPE_23__** %18, align 8
  store %struct.TYPE_23__* %19, %struct.TYPE_23__** %6, align 8
  %20 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %21 = icmp ne %struct.TYPE_24__* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %24 = call i32 @mov_flush_fragment(%struct.TYPE_25__* %23, i32 1)
  store i32 1, i32* %3, align 4
  br label %296

25:                                               ; preds = %2
  %26 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %27 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %26, i32 0, i32 1
  %28 = load %struct.TYPE_22__*, %struct.TYPE_22__** %27, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %28, i64 %31
  store %struct.TYPE_22__* %32, %struct.TYPE_22__** %7, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 9
  %35 = load %struct.TYPE_20__*, %struct.TYPE_20__** %34, align 8
  %36 = call i64 @is_cover_image(%struct.TYPE_20__* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %69

38:                                               ; preds = %25
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 9
  %41 = load %struct.TYPE_20__*, %struct.TYPE_20__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp sge i32 %43, 1
  br i1 %44, label %45, label %60

45:                                               ; preds = %38
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 9
  %48 = load %struct.TYPE_20__*, %struct.TYPE_20__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %52, label %59

52:                                               ; preds = %45
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %54 = load i32, i32* @AV_LOG_WARNING, align 4
  %55 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = call i32 @av_log(%struct.TYPE_25__* %53, i32 %54, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %57)
  br label %59

59:                                               ; preds = %52, %45
  store i32 0, i32* %3, align 4
  br label %296

60:                                               ; preds = %38
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 8
  %63 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %64 = call i32 @av_packet_ref(i32* %62, %struct.TYPE_24__* %63)
  store i32 %64, i32* %8, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %60
  %67 = load i32, i32* %8, align 4
  store i32 %67, i32* %3, align 4
  br label %296

68:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  br label %296

69:                                               ; preds = %25
  %70 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %76 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %77 = call i32 @mov_write_single_packet(%struct.TYPE_25__* %75, %struct.TYPE_24__* %76)
  store i32 %77, i32* %3, align 4
  br label %296

78:                                               ; preds = %69
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %132, %78
  %80 = load i32, i32* %9, align 4
  %81 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = icmp slt i32 %80, %83
  br i1 %84, label %85, label %135

85:                                               ; preds = %79
  %86 = load %struct.TYPE_23__*, %struct.TYPE_23__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %86, i32 0, i32 1
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %87, align 8
  %89 = load i32, i32* %9, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i64 %90
  store %struct.TYPE_22__* %91, %struct.TYPE_22__** %10, align 8
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %93 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %92, i32 0, i32 4
  %94 = load %struct.TYPE_21__*, %struct.TYPE_21__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @AV_CODEC_ID_MOV_TEXT, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %131

99:                                               ; preds = %85
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = icmp slt i64 %102, %105
  br i1 %106, label %107, label %131

107:                                              ; preds = %99
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %110, 0
  br i1 %111, label %117, label %112

112:                                              ; preds = %107
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %131, label %117

117:                                              ; preds = %112, %107
  %118 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @mov_write_subtitle_end_packet(%struct.TYPE_25__* %118, i32 %119, i64 %122)
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %11, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %117
  %127 = load i32, i32* %11, align 4
  store i32 %127, i32* %3, align 4
  br label %296

128:                                              ; preds = %117
  %129 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  %130 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %129, i32 0, i32 2
  store i32 1, i32* %130, align 8
  br label %131

131:                                              ; preds = %128, %112, %99, %85
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %9, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %9, align 4
  br label %79

135:                                              ; preds = %79
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @MODE_MOV, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %292

141:                                              ; preds = %135
  %142 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_21__*, %struct.TYPE_21__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %148 = icmp eq i64 %146, %147
  br i1 %148, label %149, label %292

149:                                              ; preds = %141
  %150 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  store %struct.TYPE_24__* %150, %struct.TYPE_24__** %12, align 8
  %151 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %151, i32 0, i32 7
  %153 = load i64, i64* %152, align 8
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %192

155:                                              ; preds = %149
  %156 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %157 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %156, i32 0, i32 4
  %158 = load %struct.TYPE_21__*, %struct.TYPE_21__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 8
  %161 = icmp ne i32 %160, 15
  br i1 %161, label %162, label %168

162:                                              ; preds = %155
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 4
  %165 = load %struct.TYPE_21__*, %struct.TYPE_21__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  br label %169

168:                                              ; preds = %155
  br label %169

169:                                              ; preds = %168, %162
  %170 = phi i32 [ %167, %162 ], [ 16, %168 ]
  store i32 %170, i32* %15, align 4
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 4
  %173 = load %struct.TYPE_21__*, %struct.TYPE_21__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 4
  %176 = load i32, i32* %15, align 4
  %177 = mul nsw i32 %175, %176
  %178 = add nsw i32 %177, 15
  %179 = ashr i32 %178, 4
  %180 = mul nsw i32 %179, 2
  store i32 %180, i32* %16, align 4
  %181 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %182, i32 0, i32 4
  %184 = load %struct.TYPE_21__*, %struct.TYPE_21__** %183, align 8
  %185 = load i32, i32* %16, align 4
  %186 = call i32 @ff_reshuffle_raw_rgb(%struct.TYPE_25__* %181, %struct.TYPE_24__** %5, %struct.TYPE_21__* %184, i32 %185)
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %187, 0
  br i1 %188, label %189, label %191

189:                                              ; preds = %169
  %190 = load i32, i32* %13, align 4
  store i32 %190, i32* %3, align 4
  br label %296

191:                                              ; preds = %169
  br label %193

192:                                              ; preds = %149
  store i32 0, i32* %13, align 4
  br label %193

193:                                              ; preds = %192, %191
  %194 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %194, i32 0, i32 4
  %196 = load %struct.TYPE_21__*, %struct.TYPE_21__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %196, i32 0, i32 4
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @AV_PIX_FMT_PAL8, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %226

201:                                              ; preds = %193
  %202 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %203 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 8
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %226, label %206

206:                                              ; preds = %201
  %207 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %208 = load %struct.TYPE_24__*, %struct.TYPE_24__** %12, align 8
  %209 = load i32, i32* %13, align 4
  %210 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %211 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %210, i32 0, i32 6
  %212 = load i32, i32* %211, align 4
  %213 = call i32 @ff_get_packet_palette(%struct.TYPE_25__* %207, %struct.TYPE_24__* %208, i32 %209, i32 %212)
  store i32 %213, i32* %14, align 4
  %214 = load i32, i32* %14, align 4
  %215 = icmp slt i32 %214, 0
  br i1 %215, label %216, label %217

216:                                              ; preds = %206
  br label %284

217:                                              ; preds = %206
  %218 = load i32, i32* %14, align 4
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %217
  %221 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %222 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %221, i32 0, i32 5
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  br label %225

225:                                              ; preds = %220, %217
  br label %277

226:                                              ; preds = %201, %193
  %227 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %228 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %227, i32 0, i32 4
  %229 = load %struct.TYPE_21__*, %struct.TYPE_21__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %229, i32 0, i32 0
  %231 = load i64, i64* %230, align 8
  %232 = load i64, i64* @AV_CODEC_ID_RAWVIDEO, align 8
  %233 = icmp eq i64 %231, %232
  br i1 %233, label %234, label %276

234:                                              ; preds = %226
  %235 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %235, i32 0, i32 4
  %237 = load %struct.TYPE_21__*, %struct.TYPE_21__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %237, i32 0, i32 4
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @AV_PIX_FMT_GRAY8, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %250, label %242

242:                                              ; preds = %234
  %243 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %243, i32 0, i32 4
  %245 = load %struct.TYPE_21__*, %struct.TYPE_21__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %245, i32 0, i32 4
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @AV_PIX_FMT_MONOBLACK, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %276

250:                                              ; preds = %242, %234
  store i32 0, i32* %9, align 4
  br label %251

251:                                              ; preds = %272, %250
  %252 = load i32, i32* %9, align 4
  %253 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %254 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %253, i32 0, i32 1
  %255 = load i32, i32* %254, align 8
  %256 = icmp slt i32 %252, %255
  br i1 %256, label %257, label %275

257:                                              ; preds = %251
  %258 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %259 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %258, i32 0, i32 3
  %260 = load i32*, i32** %259, align 8
  %261 = load i32, i32* %9, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = load i32, i32* %263, align 4
  %265 = xor i32 %264, -1
  %266 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %267 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %266, i32 0, i32 3
  %268 = load i32*, i32** %267, align 8
  %269 = load i32, i32* %9, align 4
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds i32, i32* %268, i64 %270
  store i32 %265, i32* %271, align 4
  br label %272

272:                                              ; preds = %257
  %273 = load i32, i32* %9, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %9, align 4
  br label %251

275:                                              ; preds = %251
  br label %276

276:                                              ; preds = %275, %242, %226
  br label %277

277:                                              ; preds = %276, %225
  %278 = load i32, i32* %13, align 4
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %291

280:                                              ; preds = %277
  %281 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %282 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %283 = call i32 @mov_write_single_packet(%struct.TYPE_25__* %281, %struct.TYPE_24__* %282)
  store i32 %283, i32* %14, align 4
  br label %284

284:                                              ; preds = %280, %216
  %285 = load i32, i32* %13, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %289

287:                                              ; preds = %284
  %288 = call i32 @av_packet_free(%struct.TYPE_24__** %5)
  br label %289

289:                                              ; preds = %287, %284
  %290 = load i32, i32* %14, align 4
  store i32 %290, i32* %3, align 4
  br label %296

291:                                              ; preds = %277
  br label %292

292:                                              ; preds = %291, %141, %135
  %293 = load %struct.TYPE_25__*, %struct.TYPE_25__** %4, align 8
  %294 = load %struct.TYPE_24__*, %struct.TYPE_24__** %5, align 8
  %295 = call i32 @mov_write_single_packet(%struct.TYPE_25__* %293, %struct.TYPE_24__* %294)
  store i32 %295, i32* %3, align 4
  br label %296

296:                                              ; preds = %292, %289, %189, %126, %74, %68, %66, %59, %22
  %297 = load i32, i32* %3, align 4
  ret i32 %297
}

declare dso_local i32 @mov_flush_fragment(%struct.TYPE_25__*, i32) #1

declare dso_local i64 @is_cover_image(%struct.TYPE_20__*) #1

declare dso_local i32 @av_log(%struct.TYPE_25__*, i32, i8*, i64) #1

declare dso_local i32 @av_packet_ref(i32*, %struct.TYPE_24__*) #1

declare dso_local i32 @mov_write_single_packet(%struct.TYPE_25__*, %struct.TYPE_24__*) #1

declare dso_local i32 @mov_write_subtitle_end_packet(%struct.TYPE_25__*, i32, i64) #1

declare dso_local i32 @ff_reshuffle_raw_rgb(%struct.TYPE_25__*, %struct.TYPE_24__**, %struct.TYPE_21__*, i32) #1

declare dso_local i32 @ff_get_packet_palette(%struct.TYPE_25__*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i32 @av_packet_free(%struct.TYPE_24__**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
