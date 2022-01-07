; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_OPLL_writeReg.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/boards/extr_emu2413.c_OPLL_writeReg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @OPLL_writeReg(%struct.TYPE_13__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = and i32 %10, 255
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 63
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  switch i32 %14, label %408 [
    i32 0, label %15
    i32 1, label %54
    i32 2, label %93
    i32 3, label %124
    i32 4, label %159
    i32 5, label %190
    i32 6, label %221
    i32 7, label %252
    i32 16, label %283
    i32 17, label %283
    i32 18, label %283
    i32 19, label %283
    i32 20, label %283
    i32 21, label %283
    i32 32, label %315
    i32 33, label %315
    i32 34, label %315
    i32 35, label %315
    i32 36, label %315
    i32 37, label %315
    i32 48, label %373
    i32 49, label %373
    i32 50, label %373
    i32 51, label %373
    i32 52, label %373
    i32 53, label %373
  ]

15:                                               ; preds = %3
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32 %16, i32* %20, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %50, %15
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 6
  br i1 %23, label %24, label %53

24:                                               ; preds = %21
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 4
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %24
  %34 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %35 = load i32, i32* %7, align 4
  %36 = call i32 @setInstrument(%struct.TYPE_13__* %34, i32 %35, i32 0)
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @MOD(%struct.TYPE_13__* %37, i32 %38)
  %40 = call i32 @UPDATE_PG(i32 %39)
  %41 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @MOD(%struct.TYPE_13__* %41, i32 %42)
  %44 = call i32 @UPDATE_RKS(i32 %43)
  %45 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @MOD(%struct.TYPE_13__* %45, i32 %46)
  %48 = call i32 @UPDATE_EG(i32 %47)
  br label %49

49:                                               ; preds = %33, %24
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %7, align 4
  br label %21

53:                                               ; preds = %21
  br label %409

54:                                               ; preds = %3
  %55 = load i32, i32* %6, align 4
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 %55, i32* %59, align 4
  store i32 0, i32* %7, align 4
  br label %60

60:                                               ; preds = %89, %54
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 6
  br i1 %62, label %63, label %92

63:                                               ; preds = %60
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %88

72:                                               ; preds = %63
  %73 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %74 = load i32, i32* %7, align 4
  %75 = call i32 @setInstrument(%struct.TYPE_13__* %73, i32 %74, i32 0)
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @CAR(%struct.TYPE_13__* %76, i32 %77)
  %79 = call i32 @UPDATE_PG(i32 %78)
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @CAR(%struct.TYPE_13__* %80, i32 %81)
  %83 = call i32 @UPDATE_RKS(i32 %82)
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %85 = load i32, i32* %7, align 4
  %86 = call i32 @CAR(%struct.TYPE_13__* %84, i32 %85)
  %87 = call i32 @UPDATE_EG(i32 %86)
  br label %88

88:                                               ; preds = %72, %63
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %7, align 4
  br label %60

92:                                               ; preds = %60
  br label %409

93:                                               ; preds = %3
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 2
  store i32 %94, i32* %98, align 4
  store i32 0, i32* %7, align 4
  br label %99

99:                                               ; preds = %120, %93
  %100 = load i32, i32* %7, align 4
  %101 = icmp slt i32 %100, 6
  br i1 %101, label %102, label %123

102:                                              ; preds = %99
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 4
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %102
  %112 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %113 = load i32, i32* %7, align 4
  %114 = call i32 @setInstrument(%struct.TYPE_13__* %112, i32 %113, i32 0)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %116 = load i32, i32* %7, align 4
  %117 = call i32 @MOD(%struct.TYPE_13__* %115, i32 %116)
  %118 = call i32 @UPDATE_TLL(i32 %117)
  br label %119

119:                                              ; preds = %111, %102
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %7, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %7, align 4
  br label %99

123:                                              ; preds = %99
  br label %409

124:                                              ; preds = %3
  %125 = load i32, i32* %6, align 4
  %126 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %127 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = getelementptr inbounds i32, i32* %128, i64 3
  store i32 %125, i32* %129, align 4
  store i32 0, i32* %7, align 4
  br label %130

130:                                              ; preds = %155, %124
  %131 = load i32, i32* %7, align 4
  %132 = icmp slt i32 %131, 6
  br i1 %132, label %133, label %158

133:                                              ; preds = %130
  %134 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %134, i32 0, i32 4
  %136 = load i32*, i32** %135, align 8
  %137 = load i32, i32* %7, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = icmp eq i32 %140, 0
  br i1 %141, label %142, label %154

142:                                              ; preds = %133
  %143 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %144 = load i32, i32* %7, align 4
  %145 = call i32 @setInstrument(%struct.TYPE_13__* %143, i32 %144, i32 0)
  %146 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %147 = load i32, i32* %7, align 4
  %148 = call i32 @MOD(%struct.TYPE_13__* %146, i32 %147)
  %149 = call i32 @UPDATE_WF(i32 %148)
  %150 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %151 = load i32, i32* %7, align 4
  %152 = call i32 @CAR(%struct.TYPE_13__* %150, i32 %151)
  %153 = call i32 @UPDATE_WF(i32 %152)
  br label %154

154:                                              ; preds = %142, %133
  br label %155

155:                                              ; preds = %154
  %156 = load i32, i32* %7, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %7, align 4
  br label %130

158:                                              ; preds = %130
  br label %409

159:                                              ; preds = %3
  %160 = load i32, i32* %6, align 4
  %161 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %162 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %161, i32 0, i32 0
  %163 = load i32*, i32** %162, align 8
  %164 = getelementptr inbounds i32, i32* %163, i64 4
  store i32 %160, i32* %164, align 4
  store i32 0, i32* %7, align 4
  br label %165

165:                                              ; preds = %186, %159
  %166 = load i32, i32* %7, align 4
  %167 = icmp slt i32 %166, 6
  br i1 %167, label %168, label %189

168:                                              ; preds = %165
  %169 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 4
  %171 = load i32*, i32** %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %171, i64 %173
  %175 = load i32, i32* %174, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %185

177:                                              ; preds = %168
  %178 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %179 = load i32, i32* %7, align 4
  %180 = call i32 @setInstrument(%struct.TYPE_13__* %178, i32 %179, i32 0)
  %181 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %182 = load i32, i32* %7, align 4
  %183 = call i32 @MOD(%struct.TYPE_13__* %181, i32 %182)
  %184 = call i32 @UPDATE_EG(i32 %183)
  br label %185

185:                                              ; preds = %177, %168
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %7, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %7, align 4
  br label %165

189:                                              ; preds = %165
  br label %409

190:                                              ; preds = %3
  %191 = load i32, i32* %6, align 4
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 5
  store i32 %191, i32* %195, align 4
  store i32 0, i32* %7, align 4
  br label %196

196:                                              ; preds = %217, %190
  %197 = load i32, i32* %7, align 4
  %198 = icmp slt i32 %197, 6
  br i1 %198, label %199, label %220

199:                                              ; preds = %196
  %200 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %201 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %200, i32 0, i32 4
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %216

208:                                              ; preds = %199
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %210 = load i32, i32* %7, align 4
  %211 = call i32 @setInstrument(%struct.TYPE_13__* %209, i32 %210, i32 0)
  %212 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %213 = load i32, i32* %7, align 4
  %214 = call i32 @CAR(%struct.TYPE_13__* %212, i32 %213)
  %215 = call i32 @UPDATE_EG(i32 %214)
  br label %216

216:                                              ; preds = %208, %199
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %7, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %7, align 4
  br label %196

220:                                              ; preds = %196
  br label %409

221:                                              ; preds = %3
  %222 = load i32, i32* %6, align 4
  %223 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 6
  store i32 %222, i32* %226, align 4
  store i32 0, i32* %7, align 4
  br label %227

227:                                              ; preds = %248, %221
  %228 = load i32, i32* %7, align 4
  %229 = icmp slt i32 %228, 6
  br i1 %229, label %230, label %251

230:                                              ; preds = %227
  %231 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 4
  %233 = load i32*, i32** %232, align 8
  %234 = load i32, i32* %7, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds i32, i32* %233, i64 %235
  %237 = load i32, i32* %236, align 4
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

239:                                              ; preds = %230
  %240 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %241 = load i32, i32* %7, align 4
  %242 = call i32 @setInstrument(%struct.TYPE_13__* %240, i32 %241, i32 0)
  %243 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %244 = load i32, i32* %7, align 4
  %245 = call i32 @MOD(%struct.TYPE_13__* %243, i32 %244)
  %246 = call i32 @UPDATE_EG(i32 %245)
  br label %247

247:                                              ; preds = %239, %230
  br label %248

248:                                              ; preds = %247
  %249 = load i32, i32* %7, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %7, align 4
  br label %227

251:                                              ; preds = %227
  br label %409

252:                                              ; preds = %3
  %253 = load i32, i32* %6, align 4
  %254 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %254, i32 0, i32 0
  %256 = load i32*, i32** %255, align 8
  %257 = getelementptr inbounds i32, i32* %256, i64 7
  store i32 %253, i32* %257, align 4
  store i32 0, i32* %7, align 4
  br label %258

258:                                              ; preds = %279, %252
  %259 = load i32, i32* %7, align 4
  %260 = icmp slt i32 %259, 6
  br i1 %260, label %261, label %282

261:                                              ; preds = %258
  %262 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 4
  %264 = load i32*, i32** %263, align 8
  %265 = load i32, i32* %7, align 4
  %266 = sext i32 %265 to i64
  %267 = getelementptr inbounds i32, i32* %264, i64 %266
  %268 = load i32, i32* %267, align 4
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %270, label %278

270:                                              ; preds = %261
  %271 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %272 = load i32, i32* %7, align 4
  %273 = call i32 @setInstrument(%struct.TYPE_13__* %271, i32 %272, i32 0)
  %274 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %275 = load i32, i32* %7, align 4
  %276 = call i32 @CAR(%struct.TYPE_13__* %274, i32 %275)
  %277 = call i32 @UPDATE_EG(i32 %276)
  br label %278

278:                                              ; preds = %270, %261
  br label %279

279:                                              ; preds = %278
  %280 = load i32, i32* %7, align 4
  %281 = add nsw i32 %280, 1
  store i32 %281, i32* %7, align 4
  br label %258

282:                                              ; preds = %258
  br label %409

283:                                              ; preds = %3, %3, %3, %3, %3, %3
  %284 = load i32, i32* %5, align 4
  %285 = sub nsw i32 %284, 16
  store i32 %285, i32* %9, align 4
  %286 = load i32, i32* %6, align 4
  %287 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %288 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %287, i32 0, i32 1
  %289 = load i32*, i32** %288, align 8
  %290 = load i32, i32* %9, align 4
  %291 = sext i32 %290 to i64
  %292 = getelementptr inbounds i32, i32* %289, i64 %291
  store i32 %286, i32* %292, align 4
  %293 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %294 = load i32, i32* %9, align 4
  %295 = load i32, i32* %6, align 4
  %296 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 2
  %298 = load i32*, i32** %297, align 8
  %299 = load i32, i32* %9, align 4
  %300 = sext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %298, i64 %300
  %302 = load i32, i32* %301, align 4
  %303 = and i32 %302, 1
  %304 = shl i32 %303, 8
  %305 = add nsw i32 %295, %304
  %306 = call i32 @setFnumber(%struct.TYPE_13__* %293, i32 %294, i32 %305)
  %307 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %308 = load i32, i32* %9, align 4
  %309 = call i32 @MOD(%struct.TYPE_13__* %307, i32 %308)
  %310 = call i32 @UPDATE_ALL(i32 %309)
  %311 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %312 = load i32, i32* %9, align 4
  %313 = call i32 @CAR(%struct.TYPE_13__* %311, i32 %312)
  %314 = call i32 @UPDATE_ALL(i32 %313)
  br label %409

315:                                              ; preds = %3, %3, %3, %3, %3, %3
  %316 = load i32, i32* %5, align 4
  %317 = sub nsw i32 %316, 32
  store i32 %317, i32* %9, align 4
  %318 = load i32, i32* %6, align 4
  %319 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %319, i32 0, i32 2
  %321 = load i32*, i32** %320, align 8
  %322 = load i32, i32* %9, align 4
  %323 = sext i32 %322 to i64
  %324 = getelementptr inbounds i32, i32* %321, i64 %323
  store i32 %318, i32* %324, align 4
  %325 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %326 = load i32, i32* %9, align 4
  %327 = load i32, i32* %6, align 4
  %328 = and i32 %327, 1
  %329 = shl i32 %328, 8
  %330 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %331 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %330, i32 0, i32 1
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %9, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = add nsw i32 %329, %336
  %338 = call i32 @setFnumber(%struct.TYPE_13__* %325, i32 %326, i32 %337)
  %339 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %340 = load i32, i32* %9, align 4
  %341 = load i32, i32* %6, align 4
  %342 = ashr i32 %341, 1
  %343 = and i32 %342, 7
  %344 = call i32 @setBlock(%struct.TYPE_13__* %339, i32 %340, i32 %343)
  %345 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %346 = load i32, i32* %9, align 4
  %347 = load i32, i32* %6, align 4
  %348 = ashr i32 %347, 5
  %349 = and i32 %348, 1
  %350 = call i32 @setSustine(%struct.TYPE_13__* %345, i32 %346, i32 %349)
  %351 = load i32, i32* %6, align 4
  %352 = and i32 %351, 16
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %358

354:                                              ; preds = %315
  %355 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %356 = load i32, i32* %9, align 4
  %357 = call i32 @keyOn(%struct.TYPE_13__* %355, i32 %356)
  br label %362

358:                                              ; preds = %315
  %359 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %360 = load i32, i32* %9, align 4
  %361 = call i32 @keyOff(%struct.TYPE_13__* %359, i32 %360)
  br label %362

362:                                              ; preds = %358, %354
  %363 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %364 = load i32, i32* %9, align 4
  %365 = call i32 @MOD(%struct.TYPE_13__* %363, i32 %364)
  %366 = call i32 @UPDATE_ALL(i32 %365)
  %367 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %368 = load i32, i32* %9, align 4
  %369 = call i32 @CAR(%struct.TYPE_13__* %367, i32 %368)
  %370 = call i32 @UPDATE_ALL(i32 %369)
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %372 = call i32 @update_key_status(%struct.TYPE_13__* %371)
  br label %409

373:                                              ; preds = %3, %3, %3, %3, %3, %3
  %374 = load i32, i32* %6, align 4
  %375 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %376 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %375, i32 0, i32 3
  %377 = load i32*, i32** %376, align 8
  %378 = load i32, i32* %5, align 4
  %379 = sub nsw i32 %378, 48
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds i32, i32* %377, i64 %380
  store i32 %374, i32* %381, align 4
  %382 = load i32, i32* %6, align 4
  %383 = ashr i32 %382, 4
  %384 = and i32 %383, 15
  store i32 %384, i32* %7, align 4
  %385 = load i32, i32* %6, align 4
  %386 = and i32 %385, 15
  store i32 %386, i32* %8, align 4
  %387 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %388 = load i32, i32* %5, align 4
  %389 = sub nsw i32 %388, 48
  %390 = load i32, i32* %7, align 4
  %391 = call i32 @setInstrument(%struct.TYPE_13__* %387, i32 %389, i32 %390)
  %392 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %393 = load i32, i32* %5, align 4
  %394 = sub nsw i32 %393, 48
  %395 = load i32, i32* %8, align 4
  %396 = shl i32 %395, 2
  %397 = call i32 @setVolume(%struct.TYPE_13__* %392, i32 %394, i32 %396)
  %398 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %399 = load i32, i32* %5, align 4
  %400 = sub nsw i32 %399, 48
  %401 = call i32 @MOD(%struct.TYPE_13__* %398, i32 %400)
  %402 = call i32 @UPDATE_ALL(i32 %401)
  %403 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %404 = load i32, i32* %5, align 4
  %405 = sub nsw i32 %404, 48
  %406 = call i32 @CAR(%struct.TYPE_13__* %403, i32 %405)
  %407 = call i32 @UPDATE_ALL(i32 %406)
  br label %409

408:                                              ; preds = %3
  br label %409

409:                                              ; preds = %408, %373, %362, %283, %282, %251, %220, %189, %158, %123, %92, %53
  ret void
}

declare dso_local i32 @setInstrument(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @UPDATE_PG(i32) #1

declare dso_local i32 @MOD(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @UPDATE_RKS(i32) #1

declare dso_local i32 @UPDATE_EG(i32) #1

declare dso_local i32 @CAR(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @UPDATE_TLL(i32) #1

declare dso_local i32 @UPDATE_WF(i32) #1

declare dso_local i32 @setFnumber(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @UPDATE_ALL(i32) #1

declare dso_local i32 @setBlock(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @setSustine(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @keyOn(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @keyOff(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @update_key_status(%struct.TYPE_13__*) #1

declare dso_local i32 @setVolume(%struct.TYPE_13__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
