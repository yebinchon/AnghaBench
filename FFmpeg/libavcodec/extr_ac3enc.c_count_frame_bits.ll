; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_count_frame_bits.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_ac3enc.c_count_frame_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32, i32, i32, i32, i32, i64**, i32, i32, i32, i64, %struct.TYPE_7__*, i64, i64, i64, i64, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32, i32*, i32, i64, i64*, i64, i64, i64 }
%struct.TYPE_6__ = type { i64, i64, i64, i64, i64 }

@AC3_CHMODE_STEREO = common dso_local global i64 0, align 8
@AC3_CHMODE_2F2R = common dso_local global i64 0, align 8
@AC3_CHMODE_MONO = common dso_local global i64 0, align 8
@EXP_REUSE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @count_frame_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @count_frame_bits(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 17
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %3, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 11
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %182

15:                                               ; preds = %1
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %66

20:                                               ; preds = %15
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @AC3_CHMODE_STEREO, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 2
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %20
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 16
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %29
  %35 = load i32, i32* %6, align 4
  %36 = add nsw i32 %35, 6
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %34, %29
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 15
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* %6, align 4
  %44 = add nsw i32 %43, 6
  store i32 %44, i32* %6, align 4
  br label %45

45:                                               ; preds = %42, %37
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 14
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %50, %48
  %52 = trunc i64 %51 to i32
  store i32 %52, i32* %6, align 4
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 4
  store i32 %54, i32* %6, align 4
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %56 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @AC3_CHMODE_STEREO, align 8
  %59 = icmp slt i64 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %45
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %63

63:                                               ; preds = %60, %45
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %63, %15
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %104

71:                                               ; preds = %66
  %72 = load i32, i32* %6, align 4
  %73 = add nsw i32 %72, 5
  store i32 %73, i32* %6, align 4
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @AC3_CHMODE_STEREO, align 8
  %78 = icmp eq i64 %76, %77
  br i1 %78, label %79, label %82

79:                                               ; preds = %71
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 4
  store i32 %81, i32* %6, align 4
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @AC3_CHMODE_2F2R, align 8
  %87 = icmp sge i64 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %82
  %89 = load i32, i32* %6, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %88, %82
  %92 = load i32, i32* %6, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %6, align 4
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i64, i64* %95, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %101

98:                                               ; preds = %91
  %99 = load i32, i32* %6, align 4
  %100 = add nsw i32 %99, 8
  store i32 %100, i32* %6, align 4
  br label %101

101:                                              ; preds = %98, %91
  %102 = load i32, i32* %6, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %101, %66
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @AC3_CHMODE_MONO, align 8
  %109 = icmp sgt i64 %107, %108
  br i1 %109, label %110, label %140

110:                                              ; preds = %104
  %111 = load i32, i32* %6, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %6, align 4
  store i32 1, i32* %4, align 4
  br label %113

113:                                              ; preds = %136, %110
  %114 = load i32, i32* %4, align 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp slt i32 %114, %117
  br i1 %118, label %119, label %139

119:                                              ; preds = %113
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 12
  %122 = load %struct.TYPE_7__*, %struct.TYPE_7__** %121, align 8
  %123 = load i32, i32* %4, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i64 %124
  store %struct.TYPE_7__* %125, %struct.TYPE_7__** %7, align 8
  %126 = load i32, i32* %6, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %6, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %128, i32 0, i32 7
  %130 = load i64, i64* %129, align 8
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %135

132:                                              ; preds = %119
  %133 = load i32, i32* %6, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %6, align 4
  br label %135

135:                                              ; preds = %132, %119
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %4, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %4, align 4
  br label %113

139:                                              ; preds = %113
  br label %140

140:                                              ; preds = %139, %104
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %181

145:                                              ; preds = %140
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 13
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %157

150:                                              ; preds = %145
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = mul nsw i32 5, %153
  %155 = load i32, i32* %6, align 4
  %156 = add nsw i32 %155, %154
  store i32 %156, i32* %6, align 4
  br label %180

157:                                              ; preds = %145
  store i32 0, i32* %4, align 4
  br label %158

158:                                              ; preds = %176, %157
  %159 = load i32, i32* %4, align 4
  %160 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = icmp slt i32 %159, %162
  br i1 %163, label %164, label %179

164:                                              ; preds = %158
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %166 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i32 0, i32 12
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** %166, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i64 %169
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = mul nsw i32 2, %172
  %174 = load i32, i32* %6, align 4
  %175 = add nsw i32 %174, %173
  store i32 %175, i32* %6, align 4
  br label %176

176:                                              ; preds = %164
  %177 = load i32, i32* %4, align 4
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %4, align 4
  br label %158

179:                                              ; preds = %158
  br label %180

180:                                              ; preds = %179, %150
  br label %181

181:                                              ; preds = %180, %140
  br label %213

182:                                              ; preds = %1
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  %185 = load i64, i64* %184, align 8
  %186 = icmp ne i64 %185, 0
  br i1 %186, label %187, label %190

187:                                              ; preds = %182
  %188 = load i32, i32* %6, align 4
  %189 = add nsw i32 %188, 7
  store i32 %189, i32* %6, align 4
  br label %190

190:                                              ; preds = %187, %182
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 8
  %194 = icmp eq i32 %193, 6
  br i1 %194, label %195, label %212

195:                                              ; preds = %190
  %196 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = icmp ne i64 %198, 0
  br i1 %199, label %200, label %203

200:                                              ; preds = %195
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %201, 14
  store i32 %202, i32* %6, align 4
  br label %203

203:                                              ; preds = %200, %195
  %204 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load i64, i64* %205, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %211

208:                                              ; preds = %203
  %209 = load i32, i32* %6, align 4
  %210 = add nsw i32 %209, 14
  store i32 %210, i32* %6, align 4
  br label %211

211:                                              ; preds = %208, %203
  br label %212

212:                                              ; preds = %211, %190
  br label %213

213:                                              ; preds = %212, %181
  store i32 0, i32* %4, align 4
  br label %214

214:                                              ; preds = %509, %213
  %215 = load i32, i32* %4, align 4
  %216 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %217 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 8
  %219 = icmp slt i32 %215, %218
  br i1 %219, label %220, label %512

220:                                              ; preds = %214
  %221 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %222 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %221, i32 0, i32 12
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i64 %225
  store %struct.TYPE_7__* %226, %struct.TYPE_7__** %8, align 8
  %227 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %228 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %227, i32 0, i32 11
  %229 = load i64, i64* %228, align 8
  %230 = icmp ne i64 %229, 0
  br i1 %230, label %234, label %231

231:                                              ; preds = %220
  %232 = load i32, i32* %6, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %6, align 4
  br label %234

234:                                              ; preds = %231, %220
  %235 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %236 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %235, i32 0, i32 7
  %237 = load i64, i64* %236, align 8
  %238 = icmp ne i64 %237, 0
  br i1 %238, label %239, label %305

239:                                              ; preds = %234
  %240 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %241 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %240, i32 0, i32 11
  %242 = load i64, i64* %241, align 8
  %243 = icmp ne i64 %242, 0
  br i1 %243, label %247, label %244

244:                                              ; preds = %239
  %245 = load i32, i32* %6, align 4
  %246 = add nsw i32 %245, 1
  store i32 %246, i32* %6, align 4
  br label %247

247:                                              ; preds = %244, %239
  %248 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = icmp ne i32 %250, 0
  br i1 %251, label %252, label %304

252:                                              ; preds = %247
  %253 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %254 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %253, i32 0, i32 11
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %252
  %258 = load i32, i32* %6, align 4
  %259 = add nsw i32 %258, 1
  store i32 %259, i32* %6, align 4
  br label %260

260:                                              ; preds = %257, %252
  %261 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %262 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %261, i32 0, i32 11
  %263 = load i64, i64* %262, align 8
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %271

265:                                              ; preds = %260
  %266 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = load i64, i64* @AC3_CHMODE_STEREO, align 8
  %270 = icmp ne i64 %268, %269
  br i1 %270, label %271, label %277

271:                                              ; preds = %265, %260
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 4
  %274 = load i32, i32* %273, align 4
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %6, align 4
  br label %277

277:                                              ; preds = %271, %265
  %278 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %279 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %278, i32 0, i32 0
  %280 = load i64, i64* %279, align 8
  %281 = load i64, i64* @AC3_CHMODE_STEREO, align 8
  %282 = icmp eq i64 %280, %281
  br i1 %282, label %283, label %286

283:                                              ; preds = %277
  %284 = load i32, i32* %6, align 4
  %285 = add nsw i32 %284, 1
  store i32 %285, i32* %6, align 4
  br label %286

286:                                              ; preds = %283, %277
  %287 = load i32, i32* %6, align 4
  %288 = add nsw i32 %287, 8
  store i32 %288, i32* %6, align 4
  %289 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 11
  %291 = load i64, i64* %290, align 8
  %292 = icmp ne i64 %291, 0
  br i1 %292, label %293, label %296

293:                                              ; preds = %286
  %294 = load i32, i32* %6, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %6, align 4
  br label %303

296:                                              ; preds = %286
  %297 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 5
  %299 = load i32, i32* %298, align 8
  %300 = sub nsw i32 %299, 1
  %301 = load i32, i32* %6, align 4
  %302 = add nsw i32 %301, %300
  store i32 %302, i32* %6, align 4
  br label %303

303:                                              ; preds = %296, %293
  br label %304

304:                                              ; preds = %303, %247
  br label %305

305:                                              ; preds = %304, %234
  %306 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %306, i32 0, i32 0
  %308 = load i32, i32* %307, align 8
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %367

310:                                              ; preds = %305
  store i32 1, i32* %5, align 4
  br label %311

311:                                              ; preds = %363, %310
  %312 = load i32, i32* %5, align 4
  %313 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %313, i32 0, i32 4
  %315 = load i32, i32* %314, align 4
  %316 = icmp sle i32 %312, %315
  br i1 %316, label %317, label %366

317:                                              ; preds = %311
  %318 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %319 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %318, i32 0, i32 4
  %320 = load i64*, i64** %319, align 8
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i64, i64* %320, i64 %322
  %324 = load i64, i64* %323, align 8
  %325 = icmp ne i64 %324, 0
  br i1 %325, label %326, label %362

326:                                              ; preds = %317
  %327 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %328 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %327, i32 0, i32 11
  %329 = load i64, i64* %328, align 8
  %330 = icmp ne i64 %329, 0
  br i1 %330, label %331, label %340

331:                                              ; preds = %326
  %332 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %333 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %332, i32 0, i32 1
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %5, align 4
  %336 = sext i32 %335 to i64
  %337 = getelementptr inbounds i32, i32* %334, i64 %336
  %338 = load i32, i32* %337, align 4
  %339 = icmp ne i32 %338, 2
  br i1 %339, label %340, label %343

340:                                              ; preds = %331, %326
  %341 = load i32, i32* %6, align 4
  %342 = add nsw i32 %341, 1
  store i32 %342, i32* %6, align 4
  br label %343

343:                                              ; preds = %340, %331
  %344 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %345 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %344, i32 0, i32 1
  %346 = load i32*, i32** %345, align 8
  %347 = load i32, i32* %5, align 4
  %348 = sext i32 %347 to i64
  %349 = getelementptr inbounds i32, i32* %346, i64 %348
  %350 = load i32, i32* %349, align 4
  %351 = icmp ne i32 %350, 0
  br i1 %351, label %352, label %361

352:                                              ; preds = %343
  %353 = load i32, i32* %6, align 4
  %354 = add nsw i32 %353, 2
  store i32 %354, i32* %6, align 4
  %355 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %356 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %355, i32 0, i32 6
  %357 = load i32, i32* %356, align 4
  %358 = mul nsw i32 8, %357
  %359 = load i32, i32* %6, align 4
  %360 = add nsw i32 %359, %358
  store i32 %360, i32* %6, align 4
  br label %361

361:                                              ; preds = %352, %343
  br label %362

362:                                              ; preds = %361, %317
  br label %363

363:                                              ; preds = %362
  %364 = load i32, i32* %5, align 4
  %365 = add nsw i32 %364, 1
  store i32 %365, i32* %5, align 4
  br label %311

366:                                              ; preds = %311
  br label %367

367:                                              ; preds = %366, %305
  %368 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %369 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %368, i32 0, i32 0
  %370 = load i64, i64* %369, align 8
  %371 = load i64, i64* @AC3_CHMODE_STEREO, align 8
  %372 = icmp eq i64 %370, %371
  br i1 %372, label %373, label %403

373:                                              ; preds = %367
  %374 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %375 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %374, i32 0, i32 11
  %376 = load i64, i64* %375, align 8
  %377 = icmp ne i64 %376, 0
  br i1 %377, label %378, label %381

378:                                              ; preds = %373
  %379 = load i32, i32* %4, align 4
  %380 = icmp sgt i32 %379, 0
  br i1 %380, label %381, label %384

381:                                              ; preds = %378, %373
  %382 = load i32, i32* %6, align 4
  %383 = add nsw i32 %382, 1
  store i32 %383, i32* %6, align 4
  br label %384

384:                                              ; preds = %381, %378
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %386 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i32 0, i32 12
  %387 = load %struct.TYPE_7__*, %struct.TYPE_7__** %386, align 8
  %388 = load i32, i32* %4, align 4
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %387, i64 %389
  %391 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %390, i32 0, i32 6
  %392 = load i64, i64* %391, align 8
  %393 = icmp ne i64 %392, 0
  br i1 %393, label %394, label %402

394:                                              ; preds = %384
  %395 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %396 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %395, i32 0, i32 5
  %397 = load i64, i64* %396, align 8
  %398 = load i32, i32* %6, align 4
  %399 = sext i32 %398 to i64
  %400 = add nsw i64 %399, %397
  %401 = trunc i64 %400 to i32
  store i32 %401, i32* %6, align 4
  br label %402

402:                                              ; preds = %394, %384
  br label %403

403:                                              ; preds = %402, %367
  store i32 1, i32* %5, align 4
  br label %404

404:                                              ; preds = %440, %403
  %405 = load i32, i32* %5, align 4
  %406 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %407 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %406, i32 0, i32 4
  %408 = load i32, i32* %407, align 4
  %409 = icmp sle i32 %405, %408
  br i1 %409, label %410, label %443

410:                                              ; preds = %404
  %411 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %412 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %411, i32 0, i32 7
  %413 = load i64**, i64*** %412, align 8
  %414 = load i32, i32* %5, align 4
  %415 = sext i32 %414 to i64
  %416 = getelementptr inbounds i64*, i64** %413, i64 %415
  %417 = load i64*, i64** %416, align 8
  %418 = load i32, i32* %4, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i64, i64* %417, i64 %419
  %421 = load i64, i64* %420, align 8
  %422 = load i64, i64* @EXP_REUSE, align 8
  %423 = icmp ne i64 %421, %422
  br i1 %423, label %424, label %439

424:                                              ; preds = %410
  %425 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %426 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %425, i32 0, i32 4
  %427 = load i64*, i64** %426, align 8
  %428 = load i32, i32* %5, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds i64, i64* %427, i64 %429
  %431 = load i64, i64* %430, align 8
  %432 = icmp ne i64 %431, 0
  br i1 %432, label %436, label %433

433:                                              ; preds = %424
  %434 = load i32, i32* %6, align 4
  %435 = add nsw i32 %434, 6
  store i32 %435, i32* %6, align 4
  br label %436

436:                                              ; preds = %433, %424
  %437 = load i32, i32* %6, align 4
  %438 = add nsw i32 %437, 2
  store i32 %438, i32* %6, align 4
  br label %439

439:                                              ; preds = %436, %410
  br label %440

440:                                              ; preds = %439
  %441 = load i32, i32* %5, align 4
  %442 = add nsw i32 %441, 1
  store i32 %442, i32* %5, align 4
  br label %404

443:                                              ; preds = %404
  %444 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %445 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %444, i32 0, i32 11
  %446 = load i64, i64* %445, align 8
  %447 = icmp ne i64 %446, 0
  br i1 %447, label %456, label %448

448:                                              ; preds = %443
  %449 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %450 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %456

453:                                              ; preds = %448
  %454 = load i32, i32* %6, align 4
  %455 = add nsw i32 %454, 2
  store i32 %455, i32* %6, align 4
  br label %456

456:                                              ; preds = %453, %448, %443
  %457 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %458 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %457, i32 0, i32 11
  %459 = load i64, i64* %458, align 8
  %460 = icmp ne i64 %459, 0
  br i1 %460, label %481, label %461

461:                                              ; preds = %456
  %462 = load i32, i32* %6, align 4
  %463 = add nsw i32 %462, 1
  store i32 %463, i32* %6, align 4
  %464 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %465 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %464, i32 0, i32 3
  %466 = load i64, i64* %465, align 8
  %467 = icmp ne i64 %466, 0
  br i1 %467, label %468, label %480

468:                                              ; preds = %461
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 8
  %471 = load i32, i32* %470, align 8
  %472 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %473 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %472, i32 0, i32 0
  %474 = load i32, i32* %473, align 8
  %475 = add nsw i32 %471, %474
  %476 = mul nsw i32 %475, 7
  %477 = add nsw i32 6, %476
  %478 = load i32, i32* %6, align 4
  %479 = add nsw i32 %478, %477
  store i32 %479, i32* %6, align 4
  br label %480

480:                                              ; preds = %468, %461
  br label %481

481:                                              ; preds = %480, %456
  %482 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %483 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %482, i32 0, i32 0
  %484 = load i32, i32* %483, align 8
  %485 = icmp ne i32 %484, 0
  br i1 %485, label %486, label %508

486:                                              ; preds = %481
  %487 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %488 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i32 0, i32 11
  %489 = load i64, i64* %488, align 8
  %490 = icmp ne i64 %489, 0
  br i1 %490, label %491, label %496

491:                                              ; preds = %486
  %492 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %493 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %492, i32 0, i32 2
  %494 = load i32, i32* %493, align 8
  %495 = icmp ne i32 %494, 2
  br i1 %495, label %496, label %499

496:                                              ; preds = %491, %486
  %497 = load i32, i32* %6, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %6, align 4
  br label %499

499:                                              ; preds = %496, %491
  %500 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %501 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %500, i32 0, i32 2
  %502 = load i32, i32* %501, align 8
  %503 = icmp ne i32 %502, 0
  br i1 %503, label %504, label %507

504:                                              ; preds = %499
  %505 = load i32, i32* %6, align 4
  %506 = add nsw i32 %505, 6
  store i32 %506, i32* %6, align 4
  br label %507

507:                                              ; preds = %504, %499
  br label %508

508:                                              ; preds = %507, %481
  br label %509

509:                                              ; preds = %508
  %510 = load i32, i32* %4, align 4
  %511 = add nsw i32 %510, 1
  store i32 %511, i32* %4, align 4
  br label %214

512:                                              ; preds = %214
  %513 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %514 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %513, i32 0, i32 10
  %515 = load i32, i32* %514, align 8
  %516 = load i32, i32* %6, align 4
  %517 = add nsw i32 %515, %516
  %518 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 9
  store i32 %517, i32* %519, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
