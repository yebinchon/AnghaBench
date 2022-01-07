; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tkhd_tag.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_movenc.c_mov_write_tkhd_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32, i64 }
%struct.TYPE_16__ = type { i32, i64, i32, i32, i64, %struct.TYPE_15__*, i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }
%struct.TYPE_18__ = type { i32, %struct.TYPE_14__, i64, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32 }

@MOV_TIMESCALE = common dso_local global i32 0, align 4
@AV_ROUND_UP = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@MOV_TKHD_FLAG_IN_MOVIE = common dso_local global i32 0, align 4
@AV_PKT_DATA_DISPLAYMATRIX = common dso_local global i32 0, align 4
@MOV_TRACK_ENABLED = common dso_local global i32 0, align 4
@MOV_TKHD_FLAG_ENABLED = common dso_local global i32 0, align 4
@MODE_ISM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"tkhd\00", align 1
@AVMEDIA_TYPE_AUDIO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_VIDEO = common dso_local global i64 0, align 8
@AVMEDIA_TYPE_SUBTITLE = common dso_local global i64 0, align 8
@MODE_MOV = common dso_local global i64 0, align 8
@UINT32_MAX = common dso_local global i32 0, align 4
@AV_LOG_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"track width is too large\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"track height is too large\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_17__*, %struct.TYPE_16__*, %struct.TYPE_18__*)* @mov_write_tkhd_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mov_write_tkhd_tag(i32* %0, %struct.TYPE_17__* %1, %struct.TYPE_16__* %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_16__* %2, %struct.TYPE_16__** %7, align 8
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 8
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @MOV_TIMESCALE, align 4
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 7
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @AV_ROUND_UP, align 4
  %26 = call i32 @av_rescale_rnd(i32 %20, i32 %21, i32 %24, i32 %25)
  store i32 %26, i32* %9, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* @INT32_MAX, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 0, i32 1
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* @MOV_TKHD_FLAG_IN_MOVIE, align 4
  store i32 %32, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32* null, i32** %14, align 8
  %33 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %34 = icmp ne %struct.TYPE_18__* %33, null
  br i1 %34, label %35, label %63

35:                                               ; preds = %4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %35
  %41 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  store i32 %43, i32* %13, align 4
  br label %50

44:                                               ; preds = %35
  %45 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %46 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %45, i32 0, i32 3
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %13, align 4
  br label %50

50:                                               ; preds = %44, %40
  %51 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %52 = load i32, i32* @AV_PKT_DATA_DISPLAYMATRIX, align 4
  %53 = call i64 @av_stream_get_side_data(%struct.TYPE_18__* %51, i32 %52, i32* %15)
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %14, align 8
  %55 = load i32*, i32** %14, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load i32, i32* %15, align 4
  %59 = sext i32 %58 to i64
  %60 = icmp ult i64 %59, 36
  br i1 %60, label %61, label %62

61:                                               ; preds = %57
  store i32* null, i32** %14, align 8
  br label %62

62:                                               ; preds = %61, %57, %50
  br label %63

63:                                               ; preds = %62, %4
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @MOV_TRACK_ENABLED, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %63
  %71 = load i32, i32* @MOV_TKHD_FLAG_ENABLED, align 4
  %72 = load i32, i32* %11, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %11, align 4
  br label %74

74:                                               ; preds = %70, %63
  %75 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %76 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MODE_ISM, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %80, %74
  %82 = load i32, i32* %10, align 4
  %83 = icmp eq i32 %82, 1
  br i1 %83, label %84, label %87

84:                                               ; preds = %81
  %85 = load i32*, i32** %5, align 8
  %86 = call i32 @avio_wb32(i32* %85, i32 104)
  br label %90

87:                                               ; preds = %81
  %88 = load i32*, i32** %5, align 8
  %89 = call i32 @avio_wb32(i32* %88, i32 92)
  br label %90

90:                                               ; preds = %87, %84
  %91 = phi i32 [ %86, %84 ], [ %89, %87 ]
  %92 = load i32*, i32** %5, align 8
  %93 = call i32 @ffio_wfourcc(i32* %92, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %94 = load i32*, i32** %5, align 8
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @avio_w8(i32* %94, i32 %95)
  %97 = load i32*, i32** %5, align 8
  %98 = load i32, i32* %11, align 4
  %99 = call i32 @avio_wb24(i32* %97, i32 %98)
  %100 = load i32, i32* %10, align 4
  %101 = icmp eq i32 %100, 1
  br i1 %101, label %102, label %113

102:                                              ; preds = %90
  %103 = load i32*, i32** %5, align 8
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %105 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @avio_wb64(i32* %103, i32 %106)
  %108 = load i32*, i32** %5, align 8
  %109 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %110 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i32 @avio_wb64(i32* %108, i32 %111)
  br label %124

113:                                              ; preds = %90
  %114 = load i32*, i32** %5, align 8
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %116 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @avio_wb32(i32* %114, i32 %117)
  %119 = load i32*, i32** %5, align 8
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @avio_wb32(i32* %119, i32 %122)
  br label %124

124:                                              ; preds = %113, %102
  %125 = load i32*, i32** %5, align 8
  %126 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @avio_wb32(i32* %125, i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = call i32 @avio_wb32(i32* %130, i32 0)
  %132 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %133 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %132, i32 0, i32 6
  %134 = load i32, i32* %133, align 8
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %154, label %136

136:                                              ; preds = %124
  %137 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @MODE_ISM, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load i32, i32* %10, align 4
  %144 = icmp eq i32 %143, 1
  br i1 %144, label %145, label %149

145:                                              ; preds = %142
  %146 = load i32*, i32** %5, align 8
  %147 = call i32 @UINT64_C(i32 -1)
  %148 = call i32 @avio_wb64(i32* %146, i32 %147)
  br label %152

149:                                              ; preds = %142
  %150 = load i32*, i32** %5, align 8
  %151 = call i32 @avio_wb32(i32* %150, i32 -1)
  br label %152

152:                                              ; preds = %149, %145
  %153 = phi i32 [ %148, %145 ], [ %151, %149 ]
  br label %184

154:                                              ; preds = %136, %124
  %155 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %155, i32 0, i32 6
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* %10, align 4
  %161 = icmp eq i32 %160, 1
  br i1 %161, label %162, label %165

162:                                              ; preds = %159
  %163 = load i32*, i32** %5, align 8
  %164 = call i32 @avio_wb64(i32* %163, i32 0)
  br label %168

165:                                              ; preds = %159
  %166 = load i32*, i32** %5, align 8
  %167 = call i32 @avio_wb32(i32* %166, i32 0)
  br label %168

168:                                              ; preds = %165, %162
  %169 = phi i32 [ %164, %162 ], [ %167, %165 ]
  br label %183

170:                                              ; preds = %154
  %171 = load i32, i32* %10, align 4
  %172 = icmp eq i32 %171, 1
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load i32*, i32** %5, align 8
  %175 = load i32, i32* %9, align 4
  %176 = call i32 @avio_wb64(i32* %174, i32 %175)
  br label %181

177:                                              ; preds = %170
  %178 = load i32*, i32** %5, align 8
  %179 = load i32, i32* %9, align 4
  %180 = call i32 @avio_wb32(i32* %178, i32 %179)
  br label %181

181:                                              ; preds = %177, %173
  %182 = phi i32 [ %176, %173 ], [ %180, %177 ]
  br label %183

183:                                              ; preds = %181, %168
  br label %184

184:                                              ; preds = %183, %152
  %185 = load i32*, i32** %5, align 8
  %186 = call i32 @avio_wb32(i32* %185, i32 0)
  %187 = load i32*, i32** %5, align 8
  %188 = call i32 @avio_wb32(i32* %187, i32 0)
  %189 = load i32*, i32** %5, align 8
  %190 = call i32 @avio_wb16(i32* %189, i32 0)
  %191 = load i32*, i32** %5, align 8
  %192 = load i32, i32* %13, align 4
  %193 = call i32 @avio_wb16(i32* %191, i32 %192)
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 5
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @AVMEDIA_TYPE_AUDIO, align 8
  %200 = icmp eq i64 %198, %199
  br i1 %200, label %201, label %204

201:                                              ; preds = %184
  %202 = load i32*, i32** %5, align 8
  %203 = call i32 @avio_wb16(i32* %202, i32 256)
  br label %207

204:                                              ; preds = %184
  %205 = load i32*, i32** %5, align 8
  %206 = call i32 @avio_wb16(i32* %205, i32 0)
  br label %207

207:                                              ; preds = %204, %201
  %208 = load i32*, i32** %5, align 8
  %209 = call i32 @avio_wb16(i32* %208, i32 0)
  %210 = load i32*, i32** %14, align 8
  %211 = icmp ne i32* %210, null
  br i1 %211, label %212, label %228

212:                                              ; preds = %207
  store i32 0, i32* %16, align 4
  br label %213

213:                                              ; preds = %224, %212
  %214 = load i32, i32* %16, align 4
  %215 = icmp slt i32 %214, 9
  br i1 %215, label %216, label %227

216:                                              ; preds = %213
  %217 = load i32*, i32** %5, align 8
  %218 = load i32*, i32** %14, align 8
  %219 = load i32, i32* %16, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, i32* %218, i64 %220
  %222 = load i32, i32* %221, align 4
  %223 = call i32 @avio_wb32(i32* %217, i32 %222)
  br label %224

224:                                              ; preds = %216
  %225 = load i32, i32* %16, align 4
  %226 = add nsw i32 %225, 1
  store i32 %226, i32* %16, align 4
  br label %213

227:                                              ; preds = %213
  br label %231

228:                                              ; preds = %207
  %229 = load i32*, i32** %5, align 8
  %230 = call i32 @write_matrix(i32* %229, i32 1, i32 0, i32 0, i32 1, i64 0, i64 0)
  br label %231

231:                                              ; preds = %228, %227
  %232 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %233 = icmp ne %struct.TYPE_18__* %232, null
  br i1 %233, label %234, label %341

234:                                              ; preds = %231
  %235 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %235, i32 0, i32 5
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @AVMEDIA_TYPE_VIDEO, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %250, label %242

242:                                              ; preds = %234
  %243 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %244 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %243, i32 0, i32 5
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %244, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i64, i64* @AVMEDIA_TYPE_SUBTITLE, align 8
  %249 = icmp eq i64 %247, %248
  br i1 %249, label %250, label %341

250:                                              ; preds = %242, %234
  %251 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 1
  %253 = load i64, i64* %252, align 8
  %254 = load i64, i64* @MODE_MOV, align 8
  %255 = icmp eq i64 %253, %254
  br i1 %255, label %256, label %264

256:                                              ; preds = %250
  %257 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %258 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %257, i32 0, i32 5
  %259 = load %struct.TYPE_15__*, %struct.TYPE_15__** %258, align 8
  %260 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %259, i32 0, i32 2
  %261 = load i64, i64* %260, align 8
  %262 = mul i64 %261, 65536
  %263 = trunc i64 %262 to i32
  store i32 %263, i32* %17, align 4
  br label %306

264:                                              ; preds = %250
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %270 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %269, i32 0, i32 5
  %271 = load %struct.TYPE_15__*, %struct.TYPE_15__** %270, align 8
  %272 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %271, i32 0, i32 2
  %273 = load i64, i64* %272, align 8
  %274 = mul nsw i64 %273, 65536
  %275 = trunc i64 %274 to i32
  %276 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %277 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %276, i32 0, i32 1
  %278 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i32 @av_rescale(i32 %268, i32 %275, i32 %279)
  store i32 %280, i32* %17, align 4
  %281 = load i32, i32* %17, align 4
  %282 = icmp ne i32 %281, 0
  br i1 %282, label %283, label %297

283:                                              ; preds = %264
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 4
  %286 = load i64, i64* %285, align 8
  %287 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %288 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %287, i32 0, i32 5
  %289 = load %struct.TYPE_15__*, %struct.TYPE_15__** %288, align 8
  %290 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %289, i32 0, i32 1
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %286, %291
  br i1 %292, label %297, label %293

293:                                              ; preds = %283
  %294 = load i32, i32* %17, align 4
  %295 = load i32, i32* @UINT32_MAX, align 4
  %296 = icmp sgt i32 %294, %295
  br i1 %296, label %297, label %305

297:                                              ; preds = %293, %283, %264
  %298 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %299 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %298, i32 0, i32 5
  %300 = load %struct.TYPE_15__*, %struct.TYPE_15__** %299, align 8
  %301 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %300, i32 0, i32 2
  %302 = load i64, i64* %301, align 8
  %303 = mul i64 %302, 65536
  %304 = trunc i64 %303 to i32
  store i32 %304, i32* %17, align 4
  br label %305

305:                                              ; preds = %297, %293
  br label %306

306:                                              ; preds = %305, %256
  %307 = load i32, i32* %17, align 4
  %308 = load i32, i32* @UINT32_MAX, align 4
  %309 = icmp sgt i32 %307, %308
  br i1 %309, label %310, label %316

310:                                              ; preds = %306
  %311 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %312 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 8
  %314 = load i32, i32* @AV_LOG_WARNING, align 4
  %315 = call i32 @av_log(i32 %313, i32 %314, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %17, align 4
  br label %316

316:                                              ; preds = %310, %306
  %317 = load i32*, i32** %5, align 8
  %318 = load i32, i32* %17, align 4
  %319 = call i32 @avio_wb32(i32* %317, i32 %318)
  %320 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 4
  %322 = load i64, i64* %321, align 8
  %323 = icmp sgt i64 %322, 65535
  br i1 %323, label %324, label %332

324:                                              ; preds = %316
  %325 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %326 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %325, i32 0, i32 1
  %327 = load i32, i32* %326, align 8
  %328 = load i32, i32* @AV_LOG_WARNING, align 4
  %329 = call i32 @av_log(i32 %327, i32 %328, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %330 = load i32*, i32** %5, align 8
  %331 = call i32 @avio_wb32(i32* %330, i32 0)
  br label %340

332:                                              ; preds = %316
  %333 = load i32*, i32** %5, align 8
  %334 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %335 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %334, i32 0, i32 4
  %336 = load i64, i64* %335, align 8
  %337 = mul nsw i64 %336, 65536
  %338 = trunc i64 %337 to i32
  %339 = call i32 @avio_wb32(i32* %333, i32 %338)
  br label %340

340:                                              ; preds = %332, %324
  br label %346

341:                                              ; preds = %242, %231
  %342 = load i32*, i32** %5, align 8
  %343 = call i32 @avio_wb32(i32* %342, i32 0)
  %344 = load i32*, i32** %5, align 8
  %345 = call i32 @avio_wb32(i32* %344, i32 0)
  br label %346

346:                                              ; preds = %341, %340
  ret i32 92
}

declare dso_local i32 @av_rescale_rnd(i32, i32, i32, i32) #1

declare dso_local i64 @av_stream_get_side_data(%struct.TYPE_18__*, i32, i32*) #1

declare dso_local i32 @avio_wb32(i32*, i32) #1

declare dso_local i32 @ffio_wfourcc(i32*, i8*) #1

declare dso_local i32 @avio_w8(i32*, i32) #1

declare dso_local i32 @avio_wb24(i32*, i32) #1

declare dso_local i32 @avio_wb64(i32*, i32) #1

declare dso_local i32 @UINT64_C(i32) #1

declare dso_local i32 @avio_wb16(i32*, i32) #1

declare dso_local i32 @write_matrix(i32*, i32, i32, i32, i32, i64, i64) #1

declare dso_local i32 @av_rescale(i32, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
