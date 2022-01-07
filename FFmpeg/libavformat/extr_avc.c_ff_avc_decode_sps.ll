; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_avc_decode_sps.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavformat/extr_avc.c_ff_avc_decode_sps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_7__, i8* }

@avc_sample_aspect_ratio = common dso_local global %struct.TYPE_7__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @ff_avc_decode_sps(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_6__*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 8, i32* %14, align 4
  store i32 8, i32* %15, align 4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %17, align 8
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32* @ff_nal_unit_extract_rbsp(i32* %20, i32 %21, i32* %9, i32 0)
  store i32* %22, i32** %19, align 8
  %23 = load i32*, i32** %19, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %2
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %3, align 8
  br label %325

26:                                               ; preds = %2
  %27 = load i32*, i32** %19, align 8
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @init_get_bits8(i32* %18, i32* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %321

33:                                               ; preds = %26
  %34 = call %struct.TYPE_6__* @av_mallocz(i32 40)
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %17, align 8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %36 = icmp ne %struct.TYPE_6__* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  br label %321

38:                                               ; preds = %33
  %39 = call i8* @get_bits(i32* %18, i32 8)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = call i32 @get_bits1(i32* %18)
  %44 = shl i32 %43, 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = call i32 @get_bits1(i32* %18)
  %50 = shl i32 %49, 1
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = call i32 @get_bits1(i32* %18)
  %56 = shl i32 %55, 2
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = or i32 %59, %56
  store i32 %60, i32* %58, align 4
  %61 = call i32 @get_bits1(i32* %18)
  %62 = shl i32 %61, 3
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %62
  store i32 %66, i32* %64, align 4
  %67 = call i32 @get_bits1(i32* %18)
  %68 = shl i32 %67, 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = or i32 %71, %68
  store i32 %72, i32* %70, align 4
  %73 = call i32 @get_bits1(i32* %18)
  %74 = shl i32 %73, 5
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = call i32 @skip_bits(i32* %18, i32 2)
  %80 = call i8* @get_bits(i32* %18, i32 8)
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 7
  store i8* %80, i8** %82, align 8
  %83 = call i32 @get_ue_golomb(i32* %18)
  %84 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  store i32 %83, i32* %85, align 8
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = icmp eq i32 %88, 100
  br i1 %89, label %145, label %90

90:                                               ; preds = %38
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 110
  br i1 %94, label %145, label %95

95:                                               ; preds = %90
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = icmp eq i32 %98, 122
  br i1 %99, label %145, label %100

100:                                              ; preds = %95
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = icmp eq i32 %103, 244
  br i1 %104, label %145, label %105

105:                                              ; preds = %100
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp eq i32 %108, 44
  br i1 %109, label %145, label %110

110:                                              ; preds = %105
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp eq i32 %113, 83
  br i1 %114, label %145, label %115

115:                                              ; preds = %110
  %116 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp eq i32 %118, 86
  br i1 %119, label %145, label %120

120:                                              ; preds = %115
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = icmp eq i32 %123, 118
  br i1 %124, label %145, label %125

125:                                              ; preds = %120
  %126 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = icmp eq i32 %128, 128
  br i1 %129, label %145, label %130

130:                                              ; preds = %125
  %131 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = icmp eq i32 %133, 138
  br i1 %134, label %145, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp eq i32 %138, 139
  br i1 %139, label %145, label %140

140:                                              ; preds = %135
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %142 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %141, i32 0, i32 0
  %143 = load i32, i32* %142, align 8
  %144 = icmp eq i32 %143, 134
  br i1 %144, label %145, label %214

145:                                              ; preds = %140, %135, %130, %125, %120, %115, %110, %105, %100, %95, %90, %38
  %146 = call i32 @get_ue_golomb(i32* %18)
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  store i32 %146, i32* %148, align 4
  %149 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 3
  br i1 %152, label %153, label %155

153:                                              ; preds = %145
  %154 = call i32 @skip_bits1(i32* %18)
  br label %155

155:                                              ; preds = %153, %145
  %156 = call i32 @get_ue_golomb(i32* %18)
  %157 = add nsw i32 %156, 8
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 4
  store i32 %157, i32* %159, align 8
  %160 = call i32 @get_ue_golomb(i32* %18)
  %161 = call i32 @skip_bits1(i32* %18)
  %162 = call i32 @get_bits1(i32* %18)
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %213

164:                                              ; preds = %155
  store i32 0, i32* %6, align 4
  br label %165

165:                                              ; preds = %209, %164
  %166 = load i32, i32* %6, align 4
  %167 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 3
  %169 = load i32, i32* %168, align 4
  %170 = icmp ne i32 %169, 3
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i32 8, i32 12
  %173 = icmp slt i32 %166, %172
  br i1 %173, label %174, label %212

174:                                              ; preds = %165
  %175 = call i32 @get_bits1(i32* %18)
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %178, label %177

177:                                              ; preds = %174
  br label %209

178:                                              ; preds = %174
  store i32 8, i32* %14, align 4
  store i32 8, i32* %15, align 4
  %179 = load i32, i32* %6, align 4
  %180 = icmp slt i32 %179, 6
  %181 = zext i1 %180 to i64
  %182 = select i1 %180, i32 16, i32 64
  store i32 %182, i32* %16, align 4
  store i32 0, i32* %7, align 4
  br label %183

183:                                              ; preds = %205, %178
  %184 = load i32, i32* %7, align 4
  %185 = load i32, i32* %16, align 4
  %186 = icmp slt i32 %184, %185
  br i1 %186, label %187, label %208

187:                                              ; preds = %183
  %188 = load i32, i32* %15, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %196

190:                                              ; preds = %187
  %191 = call i32 @get_se_golomb(i32* %18)
  store i32 %191, i32* %13, align 4
  %192 = load i32, i32* %14, align 4
  %193 = load i32, i32* %13, align 4
  %194 = add nsw i32 %192, %193
  %195 = and i32 %194, 255
  store i32 %195, i32* %15, align 4
  br label %196

196:                                              ; preds = %190, %187
  %197 = load i32, i32* %15, align 4
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %201

199:                                              ; preds = %196
  %200 = load i32, i32* %14, align 4
  br label %203

201:                                              ; preds = %196
  %202 = load i32, i32* %15, align 4
  br label %203

203:                                              ; preds = %201, %199
  %204 = phi i32 [ %200, %199 ], [ %202, %201 ]
  store i32 %204, i32* %14, align 4
  br label %205

205:                                              ; preds = %203
  %206 = load i32, i32* %7, align 4
  %207 = add nsw i32 %206, 1
  store i32 %207, i32* %7, align 4
  br label %183

208:                                              ; preds = %183
  br label %209

209:                                              ; preds = %208, %177
  %210 = load i32, i32* %6, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %6, align 4
  br label %165

212:                                              ; preds = %165
  br label %213

213:                                              ; preds = %212, %155
  br label %219

214:                                              ; preds = %140
  %215 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %216 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %215, i32 0, i32 3
  store i32 1, i32* %216, align 4
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 4
  store i32 8, i32* %218, align 8
  br label %219

219:                                              ; preds = %214, %213
  %220 = call i32 @get_ue_golomb(i32* %18)
  %221 = call i32 @get_ue_golomb(i32* %18)
  store i32 %221, i32* %11, align 4
  %222 = load i32, i32* %11, align 4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

224:                                              ; preds = %219
  %225 = call i32 @get_ue_golomb(i32* %18)
  br label %245

226:                                              ; preds = %219
  %227 = load i32, i32* %11, align 4
  %228 = icmp eq i32 %227, 1
  br i1 %228, label %229, label %244

229:                                              ; preds = %226
  %230 = call i32 @skip_bits1(i32* %18)
  %231 = call i32 @get_se_golomb(i32* %18)
  %232 = call i32 @get_se_golomb(i32* %18)
  %233 = call i32 @get_ue_golomb(i32* %18)
  store i32 %233, i32* %12, align 4
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %240, %229
  %235 = load i32, i32* %6, align 4
  %236 = load i32, i32* %12, align 4
  %237 = icmp slt i32 %235, %236
  br i1 %237, label %238, label %243

238:                                              ; preds = %234
  %239 = call i32 @get_se_golomb(i32* %18)
  br label %240

240:                                              ; preds = %238
  %241 = load i32, i32* %6, align 4
  %242 = add nsw i32 %241, 1
  store i32 %242, i32* %6, align 4
  br label %234

243:                                              ; preds = %234
  br label %244

244:                                              ; preds = %243, %226
  br label %245

245:                                              ; preds = %244, %224
  %246 = call i32 @get_ue_golomb(i32* %18)
  %247 = call i32 @skip_bits1(i32* %18)
  %248 = call i32 @get_ue_golomb(i32* %18)
  %249 = call i32 @get_ue_golomb(i32* %18)
  %250 = call i32 @get_bits1(i32* %18)
  %251 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %252 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %251, i32 0, i32 5
  store i32 %250, i32* %252, align 4
  %253 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %254 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %253, i32 0, i32 5
  %255 = load i32, i32* %254, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %259, label %257

257:                                              ; preds = %245
  %258 = call i32 @skip_bits1(i32* %18)
  br label %259

259:                                              ; preds = %257, %245
  %260 = call i32 @skip_bits1(i32* %18)
  %261 = call i32 @get_bits1(i32* %18)
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %259
  %264 = call i32 @get_ue_golomb(i32* %18)
  %265 = call i32 @get_ue_golomb(i32* %18)
  %266 = call i32 @get_ue_golomb(i32* %18)
  %267 = call i32 @get_ue_golomb(i32* %18)
  br label %268

268:                                              ; preds = %263, %259
  %269 = call i32 @get_bits1(i32* %18)
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %307

271:                                              ; preds = %268
  %272 = call i32 @get_bits1(i32* %18)
  %273 = icmp ne i32 %272, 0
  br i1 %273, label %274, label %306

274:                                              ; preds = %271
  %275 = call i8* @get_bits(i32* %18, i32 8)
  %276 = ptrtoint i8* %275 to i32
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* %10, align 4
  %278 = icmp eq i32 %277, 255
  br i1 %278, label %279, label %290

279:                                              ; preds = %274
  %280 = call i8* @get_bits(i32* %18, i32 16)
  %281 = ptrtoint i8* %280 to i32
  %282 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %283 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %282, i32 0, i32 6
  %284 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %283, i32 0, i32 0
  store i32 %281, i32* %284, align 8
  %285 = call i8* @get_bits(i32* %18, i32 16)
  %286 = ptrtoint i8* %285 to i32
  %287 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %288 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %287, i32 0, i32 6
  %289 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %288, i32 0, i32 1
  store i32 %286, i32* %289, align 4
  br label %305

290:                                              ; preds = %274
  %291 = load i32, i32* %10, align 4
  %292 = load %struct.TYPE_7__*, %struct.TYPE_7__** @avc_sample_aspect_ratio, align 8
  %293 = call i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__* %292)
  %294 = icmp slt i32 %291, %293
  br i1 %294, label %295, label %304

295:                                              ; preds = %290
  %296 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %297 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %296, i32 0, i32 6
  %298 = load %struct.TYPE_7__*, %struct.TYPE_7__** @avc_sample_aspect_ratio, align 8
  %299 = load i32, i32* %10, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %298, i64 %300
  %302 = bitcast %struct.TYPE_7__* %297 to i8*
  %303 = bitcast %struct.TYPE_7__* %301 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %302, i8* align 4 %303, i64 8, i1 false)
  br label %304

304:                                              ; preds = %295, %290
  br label %305

305:                                              ; preds = %304, %279
  br label %306

306:                                              ; preds = %305, %271
  br label %307

307:                                              ; preds = %306, %268
  %308 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %309 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %308, i32 0, i32 6
  %310 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %309, i32 0, i32 1
  %311 = load i32, i32* %310, align 4
  %312 = icmp ne i32 %311, 0
  br i1 %312, label %320, label %313

313:                                              ; preds = %307
  %314 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %315 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %314, i32 0, i32 6
  %316 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %315, i32 0, i32 0
  store i32 1, i32* %316, align 8
  %317 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %318 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %317, i32 0, i32 6
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 1
  store i32 1, i32* %319, align 4
  br label %320

320:                                              ; preds = %313, %307
  br label %321

321:                                              ; preds = %320, %37, %32
  %322 = load i32*, i32** %19, align 8
  %323 = call i32 @av_free(i32* %322)
  %324 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  store %struct.TYPE_6__* %324, %struct.TYPE_6__** %3, align 8
  br label %325

325:                                              ; preds = %321, %25
  %326 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  ret %struct.TYPE_6__* %326
}

declare dso_local i32* @ff_nal_unit_extract_rbsp(i32*, i32, i32*, i32) #1

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local %struct.TYPE_6__* @av_mallocz(i32) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @get_bits1(i32*) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i32 @get_ue_golomb(i32*) #1

declare dso_local i32 @skip_bits1(i32*) #1

declare dso_local i32 @get_se_golomb(i32*) #1

declare dso_local i32 @FF_ARRAY_ELEMS(%struct.TYPE_7__*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @av_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
