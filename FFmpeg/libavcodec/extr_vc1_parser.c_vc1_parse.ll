; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_parser.c_vc1_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_vc1_parser.c_vc1_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32*, i64, i64, i32, i32, %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 (i32*, i32)* }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@UNESCAPED_THRESHOLD = common dso_local global i64 0, align 8
@ONE_ZERO = common dso_local global i64 0, align 8
@NO_MATCH = common dso_local global i64 0, align 8
@TWO_ZEROS = common dso_local global i64 0, align 8
@ONE = common dso_local global i64 0, align 8
@PARSER_FLAG_COMPLETE_FRAMES = common dso_local global i32 0, align 4
@VC1_CODE_FRAME = common dso_local global i32 0, align 4
@VC1_CODE_FIELD = common dso_local global i32 0, align 4
@VC1_CODE_SLICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32**, i32*, i32*, i32)* @vc1_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vc1_parse(%struct.TYPE_11__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %23 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %23, i32 0, i32 1
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  store %struct.TYPE_10__* %25, %struct.TYPE_10__** %14, align 8
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %15, align 4
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  store i32* %32, i32** %16, align 8
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %17, align 8
  %36 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %37 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  store i64 %38, i64* %18, align 8
  store i32 0, i32* %19, align 4
  %39 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %39, i32* %20, align 4
  %40 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %21, align 4
  %43 = load i32, i32* %15, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %61

45:                                               ; preds = %6
  %46 = load i32, i32* %13, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %45
  %49 = load i32*, i32** %16, align 8
  %50 = load i64, i64* %17, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i64, i64* @UNESCAPED_THRESHOLD, align 8
  %53 = load i64, i64* %17, align 8
  %54 = sub i64 %52, %53
  %55 = call i32 @memset(i32* %51, i32 0, i64 %54)
  %56 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %57 = load i32*, i32** %9, align 8
  %58 = load i32*, i32** %16, align 8
  %59 = load i64, i64* %17, align 8
  %60 = call i32 @vc1_extract_header(%struct.TYPE_11__* %56, i32* %57, i32* %58, i64 %59)
  store i32 0, i32* %20, align 4
  br label %61

61:                                               ; preds = %48, %45, %6
  br label %62

62:                                               ; preds = %292, %61
  %63 = load i32, i32* %21, align 4
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %63, %64
  br i1 %65, label %66, label %293

66:                                               ; preds = %62
  store i32 0, i32* %19, align 4
  br label %67

67:                                               ; preds = %127, %66
  %68 = load i32, i32* %21, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load i64, i64* %17, align 8
  %73 = load i64, i64* @UNESCAPED_THRESHOLD, align 8
  %74 = icmp ult i64 %72, %73
  br label %75

75:                                               ; preds = %71, %67
  %76 = phi i1 [ false, %67 ], [ %74, %71 ]
  br i1 %76, label %77, label %128

77:                                               ; preds = %75
  %78 = load i32*, i32** %12, align 8
  %79 = load i32, i32* %21, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %21, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds i32, i32* %78, i64 %81
  %83 = load i32, i32* %82, align 4
  store i32 %83, i32* %22, align 4
  %84 = load i32, i32* %22, align 4
  %85 = load i32*, i32** %16, align 8
  %86 = load i64, i64* %17, align 8
  %87 = add i64 %86, 1
  store i64 %87, i64* %17, align 8
  %88 = getelementptr inbounds i32, i32* %85, i64 %86
  store i32 %84, i32* %88, align 4
  %89 = load i64, i64* %18, align 8
  %90 = load i64, i64* @ONE_ZERO, align 8
  %91 = icmp sle i64 %89, %90
  br i1 %91, label %92, label %102

92:                                               ; preds = %77
  %93 = load i32, i32* %22, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i64, i64* @NO_MATCH, align 8
  br label %100

97:                                               ; preds = %92
  %98 = load i64, i64* %18, align 8
  %99 = add nsw i64 %98, 1
  br label %100

100:                                              ; preds = %97, %95
  %101 = phi i64 [ %96, %95 ], [ %99, %97 ]
  store i64 %101, i64* %18, align 8
  br label %127

102:                                              ; preds = %77
  %103 = load i64, i64* %18, align 8
  %104 = load i64, i64* @TWO_ZEROS, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %124

106:                                              ; preds = %102
  %107 = load i32, i32* %22, align 4
  %108 = icmp eq i32 %107, 1
  br i1 %108, label %109, label %111

109:                                              ; preds = %106
  %110 = load i64, i64* @ONE, align 8
  store i64 %110, i64* %18, align 8
  br label %123

111:                                              ; preds = %106
  %112 = load i32, i32* %22, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %22, align 4
  %116 = icmp eq i32 %115, 3
  br i1 %116, label %117, label %120

117:                                              ; preds = %114
  %118 = load i64, i64* %17, align 8
  %119 = add i64 %118, -1
  store i64 %119, i64* %17, align 8
  br label %120

120:                                              ; preds = %117, %114
  %121 = load i64, i64* @NO_MATCH, align 8
  store i64 %121, i64* %18, align 8
  br label %122

122:                                              ; preds = %120, %111
  br label %123

123:                                              ; preds = %122, %109
  br label %126

124:                                              ; preds = %102
  %125 = load i64, i64* @NO_MATCH, align 8
  store i64 %125, i64* %18, align 8
  store i32 1, i32* %19, align 4
  br label %128

126:                                              ; preds = %123
  br label %127

127:                                              ; preds = %126, %100
  br label %67

128:                                              ; preds = %124, %75
  %129 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %130 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %152

135:                                              ; preds = %128
  %136 = load i64, i64* %17, align 8
  %137 = load i64, i64* @UNESCAPED_THRESHOLD, align 8
  %138 = icmp uge i64 %136, %137
  br i1 %138, label %139, label %152

139:                                              ; preds = %135
  %140 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %141 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* @VC1_CODE_FRAME, align 4
  %144 = and i32 %143, 255
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %152

146:                                              ; preds = %139
  %147 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %148 = load i32*, i32** %9, align 8
  %149 = load i32*, i32** %16, align 8
  %150 = load i64, i64* %17, align 8
  %151 = call i32 @vc1_extract_header(%struct.TYPE_11__* %147, i32* %148, i32* %149, i64 %150)
  br label %293

152:                                              ; preds = %139, %135, %128
  %153 = load i64, i64* %17, align 8
  %154 = load i64, i64* @UNESCAPED_THRESHOLD, align 8
  %155 = icmp uge i64 %153, %154
  br i1 %155, label %156, label %236

156:                                              ; preds = %152
  %157 = load i32, i32* %19, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %236, label %159

159:                                              ; preds = %156
  br label %160

160:                                              ; preds = %234, %159
  %161 = load i32, i32* %21, align 4
  %162 = load i32, i32* %13, align 4
  %163 = icmp slt i32 %161, %162
  br i1 %163, label %164, label %235

164:                                              ; preds = %160
  %165 = load i64, i64* %18, align 8
  %166 = load i64, i64* @NO_MATCH, align 8
  %167 = icmp eq i64 %165, %166
  br i1 %167, label %168, label %194

168:                                              ; preds = %164
  %169 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 6
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 0
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 0
  %173 = load i64 (i32*, i32)*, i64 (i32*, i32)** %172, align 8
  %174 = load i32*, i32** %12, align 8
  %175 = load i32, i32* %21, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds i32, i32* %174, i64 %176
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* %21, align 4
  %180 = sub nsw i32 %178, %179
  %181 = call i64 %173(i32* %177, i32 %180)
  %182 = load i32, i32* %21, align 4
  %183 = sext i32 %182 to i64
  %184 = add nsw i64 %183, %181
  %185 = trunc i64 %184 to i32
  store i32 %185, i32* %21, align 4
  %186 = load i32, i32* %21, align 4
  %187 = load i32, i32* %13, align 4
  %188 = icmp slt i32 %186, %187
  br i1 %188, label %189, label %191

189:                                              ; preds = %168
  %190 = load i64, i64* @ONE_ZERO, align 8
  store i64 %190, i64* %18, align 8
  br label %191

191:                                              ; preds = %189, %168
  %192 = load i32, i32* %21, align 4
  %193 = add nsw i32 %192, 1
  store i32 %193, i32* %21, align 4
  br label %234

194:                                              ; preds = %164
  %195 = load i32*, i32** %12, align 8
  %196 = load i32, i32* %21, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %21, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %195, i64 %198
  %200 = load i32, i32* %199, align 4
  store i32 %200, i32* %22, align 4
  %201 = load i64, i64* %18, align 8
  %202 = load i64, i64* @ONE_ZERO, align 8
  %203 = icmp eq i64 %201, %202
  br i1 %203, label %204, label %213

204:                                              ; preds = %194
  %205 = load i32, i32* %22, align 4
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %207, label %209

207:                                              ; preds = %204
  %208 = load i64, i64* @NO_MATCH, align 8
  br label %211

209:                                              ; preds = %204
  %210 = load i64, i64* @TWO_ZEROS, align 8
  br label %211

211:                                              ; preds = %209, %207
  %212 = phi i64 [ %208, %207 ], [ %210, %209 ]
  store i64 %212, i64* %18, align 8
  br label %233

213:                                              ; preds = %194
  %214 = load i64, i64* %18, align 8
  %215 = load i64, i64* @TWO_ZEROS, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %230

217:                                              ; preds = %213
  %218 = load i32, i32* %22, align 4
  %219 = icmp sge i32 %218, 1
  br i1 %219, label %220, label %229

220:                                              ; preds = %217
  %221 = load i32, i32* %22, align 4
  %222 = icmp eq i32 %221, 1
  br i1 %222, label %223, label %225

223:                                              ; preds = %220
  %224 = load i64, i64* @ONE, align 8
  br label %227

225:                                              ; preds = %220
  %226 = load i64, i64* @NO_MATCH, align 8
  br label %227

227:                                              ; preds = %225, %223
  %228 = phi i64 [ %224, %223 ], [ %226, %225 ]
  store i64 %228, i64* %18, align 8
  br label %229

229:                                              ; preds = %227, %217
  br label %232

230:                                              ; preds = %213
  %231 = load i64, i64* @NO_MATCH, align 8
  store i64 %231, i64* %18, align 8
  store i32 1, i32* %19, align 4
  br label %235

232:                                              ; preds = %229
  br label %233

233:                                              ; preds = %232, %211
  br label %234

234:                                              ; preds = %233, %191
  br label %160

235:                                              ; preds = %230, %160
  br label %236

236:                                              ; preds = %235, %156, %152
  %237 = load i32, i32* %19, align 4
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %292

239:                                              ; preds = %236
  %240 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %241 = load i32*, i32** %9, align 8
  %242 = load i32*, i32** %16, align 8
  %243 = load i64, i64* %17, align 8
  %244 = call i32 @vc1_extract_header(%struct.TYPE_11__* %240, i32* %241, i32* %242, i64 %243)
  %245 = load i32, i32* %22, align 4
  %246 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %247 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %246, i32 0, i32 4
  store i32 %245, i32* %247, align 4
  store i64 0, i64* %17, align 8
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 0
  %250 = load i32, i32* %249, align 8
  %251 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %252 = and i32 %250, %251
  %253 = icmp ne i32 %252, 0
  br i1 %253, label %291, label %254

254:                                              ; preds = %239
  %255 = load i32, i32* %15, align 4
  %256 = icmp ne i32 %255, 0
  br i1 %256, label %268, label %257

257:                                              ; preds = %254
  %258 = load i32, i32* %22, align 4
  %259 = load i32, i32* @VC1_CODE_FRAME, align 4
  %260 = and i32 %259, 255
  %261 = icmp eq i32 %258, %260
  br i1 %261, label %267, label %262

262:                                              ; preds = %257
  %263 = load i32, i32* %22, align 4
  %264 = load i32, i32* @VC1_CODE_FIELD, align 4
  %265 = and i32 %264, 255
  %266 = icmp eq i32 %263, %265
  br i1 %266, label %267, label %268

267:                                              ; preds = %262, %257
  store i32 1, i32* %15, align 4
  br label %290

268:                                              ; preds = %262, %254
  %269 = load i32, i32* %15, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %289

271:                                              ; preds = %268
  %272 = load i32, i32* %22, align 4
  %273 = load i32, i32* @VC1_CODE_FIELD, align 4
  %274 = and i32 %273, 255
  %275 = icmp ne i32 %272, %274
  br i1 %275, label %276, label %289

276:                                              ; preds = %271
  %277 = load i32, i32* %22, align 4
  %278 = load i32, i32* @VC1_CODE_SLICE, align 4
  %279 = and i32 %278, 255
  %280 = icmp ne i32 %277, %279
  br i1 %280, label %281, label %289

281:                                              ; preds = %276
  %282 = load i32, i32* %21, align 4
  %283 = sub nsw i32 %282, 4
  store i32 %283, i32* %20, align 4
  %284 = load i32, i32* %22, align 4
  %285 = load i32, i32* @VC1_CODE_FRAME, align 4
  %286 = and i32 %285, 255
  %287 = icmp eq i32 %284, %286
  %288 = zext i1 %287 to i32
  store i32 %288, i32* %15, align 4
  br label %293

289:                                              ; preds = %276, %271, %268
  br label %290

290:                                              ; preds = %289, %267
  br label %291

291:                                              ; preds = %290, %239
  br label %292

292:                                              ; preds = %291, %236
  br label %62

293:                                              ; preds = %281, %146, %62
  %294 = load i32, i32* %15, align 4
  %295 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %296 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %295, i32 0, i32 5
  %297 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %296, i32 0, i32 0
  store i32 %294, i32* %297, align 8
  %298 = load i64, i64* %17, align 8
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 1
  store i64 %298, i64* %300, align 8
  %301 = load i64, i64* %18, align 8
  %302 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %303 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %302, i32 0, i32 2
  store i64 %301, i64* %303, align 8
  %304 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 8
  %307 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %308 = and i32 %306, %307
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %312

310:                                              ; preds = %293
  %311 = load i32, i32* %13, align 4
  store i32 %311, i32* %20, align 4
  br label %325

312:                                              ; preds = %293
  %313 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %314 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %313, i32 0, i32 5
  %315 = load i32, i32* %20, align 4
  %316 = call i64 @ff_combine_frame(%struct.TYPE_12__* %314, i32 %315, i32** %12, i32* %13)
  %317 = icmp slt i64 %316, 0
  br i1 %317, label %318, label %324

318:                                              ; preds = %312
  %319 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %320 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %319, i32 0, i32 3
  store i32 0, i32* %320, align 8
  %321 = load i32**, i32*** %10, align 8
  store i32* null, i32** %321, align 8
  %322 = load i32*, i32** %11, align 8
  store i32 0, i32* %322, align 4
  %323 = load i32, i32* %13, align 4
  store i32 %323, i32* %7, align 4
  br label %346

324:                                              ; preds = %312
  br label %325

325:                                              ; preds = %324, %310
  %326 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %327 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %326, i32 0, i32 3
  store i32 4, i32* %327, align 8
  %328 = load i32, i32* %20, align 4
  %329 = icmp slt i32 %328, 0
  br i1 %329, label %330, label %340

330:                                              ; preds = %325
  %331 = load i32, i32* %20, align 4
  %332 = load i32, i32* @END_NOT_FOUND, align 4
  %333 = icmp ne i32 %331, %332
  br i1 %333, label %334, label %340

334:                                              ; preds = %330
  %335 = load i32, i32* %20, align 4
  %336 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %337 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %336, i32 0, i32 3
  %338 = load i32, i32* %337, align 8
  %339 = add nsw i32 %338, %335
  store i32 %339, i32* %337, align 8
  br label %340

340:                                              ; preds = %334, %330, %325
  %341 = load i32*, i32** %12, align 8
  %342 = load i32**, i32*** %10, align 8
  store i32* %341, i32** %342, align 8
  %343 = load i32, i32* %13, align 4
  %344 = load i32*, i32** %11, align 8
  store i32 %343, i32* %344, align 4
  %345 = load i32, i32* %20, align 4
  store i32 %345, i32* %7, align 4
  br label %346

346:                                              ; preds = %340, %318
  %347 = load i32, i32* %7, align 4
  ret i32 %347
}

declare dso_local i32 @memset(i32*, i32, i64) #1

declare dso_local i32 @vc1_extract_header(%struct.TYPE_11__*, i32*, i32*, i64) #1

declare dso_local i64 @ff_combine_frame(%struct.TYPE_12__*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
