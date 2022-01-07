; ModuleID = '/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__process_marker.c'
source_filename = "/home/carl/AnghaBench/darknet/src/extr_stb_image.h_stbi__process_marker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32, i8, i32, %struct.TYPE_6__*, i32*, %struct.TYPE_5__*, i32** }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_5__ = type { i8* }

@.str = private unnamed_addr constant [16 x i8] c"expected marker\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"Corrupt JPEG\00", align 1
@.str.2 = private unnamed_addr constant [12 x i8] c"bad DRI len\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"bad DQT type\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"bad DQT table\00", align 1
@stbi__jpeg_dezigzag = common dso_local global i64* null, align 8
@.str.5 = private unnamed_addr constant [15 x i8] c"bad DHT header\00", align 1
@.str.6 = private unnamed_addr constant [12 x i8] c"bad COM len\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"bad APP len\00", align 1
@stbi__process_marker.tag = internal constant [5 x i8] c"JFIF\00", align 1
@stbi__process_marker.tag.8 = internal constant [6 x i8] c"Adobe\00", align 1
@.str.9 = private unnamed_addr constant [15 x i8] c"unknown marker\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32)* @stbi__process_marker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stbi__process_marker(%struct.TYPE_7__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca [16 x i32], align 16
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %261 [
    i32 128, label %24
    i32 221, label %26
    i32 219, label %41
    i32 196, label %122
  ]

24:                                               ; preds = %2
  %25 = call i32 @stbi__err(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %25, i32* %3, align 4
  br label %385

26:                                               ; preds = %2
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @stbi__get16be(i32 %29)
  %31 = icmp ne i32 %30, 4
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = call i32 @stbi__err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %33, i32* %3, align 4
  br label %385

34:                                               ; preds = %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @stbi__get16be(i32 %37)
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  store i32 1, i32* %3, align 4
  br label %385

41:                                               ; preds = %2
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @stbi__get16be(i32 %44)
  %46 = sub nsw i32 %45, 2
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %111, %41
  %48 = load i32, i32* %6, align 4
  %49 = icmp sgt i32 %48, 0
  br i1 %49, label %50, label %118

50:                                               ; preds = %47
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = call zeroext i8 @stbi__get8(i32 %53)
  %55 = zext i8 %54 to i32
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = ashr i32 %56, 4
  store i32 %57, i32* %8, align 4
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %9, align 4
  %61 = load i32, i32* %7, align 4
  %62 = and i32 %61, 15
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %8, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %50
  %66 = load i32, i32* %8, align 4
  %67 = icmp ne i32 %66, 1
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = call i32 @stbi__err(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %69, i32* %3, align 4
  br label %385

70:                                               ; preds = %65, %50
  %71 = load i32, i32* %10, align 4
  %72 = icmp sgt i32 %71, 3
  br i1 %72, label %73, label %75

73:                                               ; preds = %70
  %74 = call i32 @stbi__err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %74, i32* %3, align 4
  br label %385

75:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %76

76:                                               ; preds = %108, %75
  %77 = load i32, i32* %11, align 4
  %78 = icmp slt i32 %77, 64
  br i1 %78, label %79, label %111

79:                                               ; preds = %76
  %80 = load i32, i32* %9, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 3
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @stbi__get16be(i32 %85)
  br label %93

87:                                               ; preds = %79
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call zeroext i8 @stbi__get8(i32 %90)
  %92 = zext i8 %91 to i32
  br label %93

93:                                               ; preds = %87, %82
  %94 = phi i32 [ %86, %82 ], [ %92, %87 ]
  %95 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %96 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %95, i32 0, i32 7
  %97 = load i32**, i32*** %96, align 8
  %98 = load i32, i32* %10, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32*, i32** %97, i64 %99
  %101 = load i32*, i32** %100, align 8
  %102 = load i64*, i64** @stbi__jpeg_dezigzag, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i32, i32* %101, i64 %106
  store i32 %94, i32* %107, align 4
  br label %108

108:                                              ; preds = %93
  %109 = load i32, i32* %11, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %76

111:                                              ; preds = %76
  %112 = load i32, i32* %9, align 4
  %113 = icmp ne i32 %112, 0
  %114 = zext i1 %113 to i64
  %115 = select i1 %113, i32 129, i32 65
  %116 = load i32, i32* %6, align 4
  %117 = sub nsw i32 %116, %115
  store i32 %117, i32* %6, align 4
  br label %47

118:                                              ; preds = %47
  %119 = load i32, i32* %6, align 4
  %120 = icmp eq i32 %119, 0
  %121 = zext i1 %120 to i32
  store i32 %121, i32* %3, align 4
  br label %385

122:                                              ; preds = %2
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 3
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @stbi__get16be(i32 %125)
  %127 = sub nsw i32 %126, 2
  store i32 %127, i32* %6, align 4
  br label %128

128:                                              ; preds = %253, %122
  %129 = load i32, i32* %6, align 4
  %130 = icmp sgt i32 %129, 0
  br i1 %130, label %131, label %257

131:                                              ; preds = %128
  store i32 0, i32* %15, align 4
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %133 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i32 0, i32 3
  %134 = load i32, i32* %133, align 4
  %135 = call zeroext i8 @stbi__get8(i32 %134)
  %136 = zext i8 %135 to i32
  store i32 %136, i32* %16, align 4
  %137 = load i32, i32* %16, align 4
  %138 = ashr i32 %137, 4
  store i32 %138, i32* %17, align 4
  %139 = load i32, i32* %16, align 4
  %140 = and i32 %139, 15
  store i32 %140, i32* %18, align 4
  %141 = load i32, i32* %17, align 4
  %142 = icmp sgt i32 %141, 1
  br i1 %142, label %146, label %143

143:                                              ; preds = %131
  %144 = load i32, i32* %18, align 4
  %145 = icmp sgt i32 %144, 3
  br i1 %145, label %146, label %148

146:                                              ; preds = %143, %131
  %147 = call i32 @stbi__err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %147, i32* %3, align 4
  br label %385

148:                                              ; preds = %143
  store i32 0, i32* %14, align 4
  br label %149

149:                                              ; preds = %167, %148
  %150 = load i32, i32* %14, align 4
  %151 = icmp slt i32 %150, 16
  br i1 %151, label %152, label %170

152:                                              ; preds = %149
  %153 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = call zeroext i8 @stbi__get8(i32 %155)
  %157 = zext i8 %156 to i32
  %158 = load i32, i32* %14, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %159
  store i32 %157, i32* %160, align 4
  %161 = load i32, i32* %14, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %15, align 4
  br label %167

167:                                              ; preds = %152
  %168 = load i32, i32* %14, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %14, align 4
  br label %149

170:                                              ; preds = %149
  %171 = load i32, i32* %6, align 4
  %172 = sub nsw i32 %171, 17
  store i32 %172, i32* %6, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %196

175:                                              ; preds = %170
  %176 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %177 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %176, i32 0, i32 6
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %177, align 8
  %179 = load i32, i32* %18, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i64 %180
  %182 = ptrtoint %struct.TYPE_5__* %181 to i32
  %183 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %184 = call i32 @stbi__build_huffman(i32 %182, i32* %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %187, label %186

186:                                              ; preds = %175
  store i32 0, i32* %3, align 4
  br label %385

187:                                              ; preds = %175
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 6
  %190 = load %struct.TYPE_5__*, %struct.TYPE_5__** %189, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i64 %192
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i8*, i8** %194, align 8
  store i8* %195, i8** %12, align 8
  br label %217

196:                                              ; preds = %170
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 4
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = load i32, i32* %18, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i64 %201
  %203 = ptrtoint %struct.TYPE_6__* %202 to i32
  %204 = getelementptr inbounds [16 x i32], [16 x i32]* %13, i64 0, i64 0
  %205 = call i32 @stbi__build_huffman(i32 %203, i32* %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %208, label %207

207:                                              ; preds = %196
  store i32 0, i32* %3, align 4
  br label %385

208:                                              ; preds = %196
  %209 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %209, i32 0, i32 4
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %210, align 8
  %212 = load i32, i32* %18, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i64 %213
  %215 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %214, i32 0, i32 0
  %216 = load i8*, i8** %215, align 8
  store i8* %216, i8** %12, align 8
  br label %217

217:                                              ; preds = %208, %187
  store i32 0, i32* %14, align 4
  br label %218

218:                                              ; preds = %231, %217
  %219 = load i32, i32* %14, align 4
  %220 = load i32, i32* %15, align 4
  %221 = icmp slt i32 %219, %220
  br i1 %221, label %222, label %234

222:                                              ; preds = %218
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = call zeroext i8 @stbi__get8(i32 %225)
  %227 = load i8*, i8** %12, align 8
  %228 = load i32, i32* %14, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i8, i8* %227, i64 %229
  store i8 %226, i8* %230, align 1
  br label %231

231:                                              ; preds = %222
  %232 = load i32, i32* %14, align 4
  %233 = add nsw i32 %232, 1
  store i32 %233, i32* %14, align 4
  br label %218

234:                                              ; preds = %218
  %235 = load i32, i32* %17, align 4
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %253

237:                                              ; preds = %234
  %238 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %239 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %238, i32 0, i32 5
  %240 = load i32*, i32** %239, align 8
  %241 = load i32, i32* %18, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  %244 = load i32, i32* %243, align 4
  %245 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %245, i32 0, i32 4
  %247 = load %struct.TYPE_6__*, %struct.TYPE_6__** %246, align 8
  %248 = load i32, i32* %18, align 4
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %247, i64 %249
  %251 = ptrtoint %struct.TYPE_6__* %250 to i32
  %252 = call i32 @stbi__build_fast_ac(i32 %244, i32 %251)
  br label %253

253:                                              ; preds = %237, %234
  %254 = load i32, i32* %15, align 4
  %255 = load i32, i32* %6, align 4
  %256 = sub nsw i32 %255, %254
  store i32 %256, i32* %6, align 4
  br label %128

257:                                              ; preds = %128
  %258 = load i32, i32* %6, align 4
  %259 = icmp eq i32 %258, 0
  %260 = zext i1 %259 to i32
  store i32 %260, i32* %3, align 4
  br label %385

261:                                              ; preds = %2
  %262 = load i32, i32* %5, align 4
  %263 = icmp sge i32 %262, 224
  br i1 %263, label %264, label %267

264:                                              ; preds = %261
  %265 = load i32, i32* %5, align 4
  %266 = icmp sle i32 %265, 239
  br i1 %266, label %270, label %267

267:                                              ; preds = %264, %261
  %268 = load i32, i32* %5, align 4
  %269 = icmp eq i32 %268, 254
  br i1 %269, label %270, label %383

270:                                              ; preds = %267, %264
  %271 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %272 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 4
  %274 = call i32 @stbi__get16be(i32 %273)
  store i32 %274, i32* %6, align 4
  %275 = load i32, i32* %6, align 4
  %276 = icmp slt i32 %275, 2
  br i1 %276, label %277, label %284

277:                                              ; preds = %270
  %278 = load i32, i32* %5, align 4
  %279 = icmp eq i32 %278, 254
  br i1 %279, label %280, label %282

280:                                              ; preds = %277
  %281 = call i32 @stbi__err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %281, i32* %3, align 4
  br label %385

282:                                              ; preds = %277
  %283 = call i32 @stbi__err(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %283, i32* %3, align 4
  br label %385

284:                                              ; preds = %270
  %285 = load i32, i32* %6, align 4
  %286 = sub nsw i32 %285, 2
  store i32 %286, i32* %6, align 4
  %287 = load i32, i32* %5, align 4
  %288 = icmp eq i32 %287, 224
  br i1 %288, label %289, label %322

289:                                              ; preds = %284
  %290 = load i32, i32* %6, align 4
  %291 = icmp sge i32 %290, 5
  br i1 %291, label %292, label %322

292:                                              ; preds = %289
  store i32 1, i32* %19, align 4
  store i32 0, i32* %20, align 4
  br label %293

293:                                              ; preds = %310, %292
  %294 = load i32, i32* %20, align 4
  %295 = icmp slt i32 %294, 5
  br i1 %295, label %296, label %313

296:                                              ; preds = %293
  %297 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %298 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %297, i32 0, i32 3
  %299 = load i32, i32* %298, align 4
  %300 = call zeroext i8 @stbi__get8(i32 %299)
  %301 = zext i8 %300 to i32
  %302 = load i32, i32* %20, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [5 x i8], [5 x i8]* @stbi__process_marker.tag, i64 0, i64 %303
  %305 = load i8, i8* %304, align 1
  %306 = zext i8 %305 to i32
  %307 = icmp ne i32 %301, %306
  br i1 %307, label %308, label %309

308:                                              ; preds = %296
  store i32 0, i32* %19, align 4
  br label %309

309:                                              ; preds = %308, %296
  br label %310

310:                                              ; preds = %309
  %311 = load i32, i32* %20, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %20, align 4
  br label %293

313:                                              ; preds = %293
  %314 = load i32, i32* %6, align 4
  %315 = sub nsw i32 %314, 5
  store i32 %315, i32* %6, align 4
  %316 = load i32, i32* %19, align 4
  %317 = icmp ne i32 %316, 0
  br i1 %317, label %318, label %321

318:                                              ; preds = %313
  %319 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %319, i32 0, i32 1
  store i32 1, i32* %320, align 4
  br label %321

321:                                              ; preds = %318, %313
  br label %377

322:                                              ; preds = %289, %284
  %323 = load i32, i32* %5, align 4
  %324 = icmp eq i32 %323, 238
  br i1 %324, label %325, label %376

325:                                              ; preds = %322
  %326 = load i32, i32* %6, align 4
  %327 = icmp sge i32 %326, 12
  br i1 %327, label %328, label %376

328:                                              ; preds = %325
  store i32 1, i32* %21, align 4
  store i32 0, i32* %22, align 4
  br label %329

329:                                              ; preds = %346, %328
  %330 = load i32, i32* %22, align 4
  %331 = icmp slt i32 %330, 6
  br i1 %331, label %332, label %349

332:                                              ; preds = %329
  %333 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %334 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %333, i32 0, i32 3
  %335 = load i32, i32* %334, align 4
  %336 = call zeroext i8 @stbi__get8(i32 %335)
  %337 = zext i8 %336 to i32
  %338 = load i32, i32* %22, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [6 x i8], [6 x i8]* @stbi__process_marker.tag.8, i64 0, i64 %339
  %341 = load i8, i8* %340, align 1
  %342 = zext i8 %341 to i32
  %343 = icmp ne i32 %337, %342
  br i1 %343, label %344, label %345

344:                                              ; preds = %332
  store i32 0, i32* %21, align 4
  br label %345

345:                                              ; preds = %344, %332
  br label %346

346:                                              ; preds = %345
  %347 = load i32, i32* %22, align 4
  %348 = add nsw i32 %347, 1
  store i32 %348, i32* %22, align 4
  br label %329

349:                                              ; preds = %329
  %350 = load i32, i32* %6, align 4
  %351 = sub nsw i32 %350, 6
  store i32 %351, i32* %6, align 4
  %352 = load i32, i32* %21, align 4
  %353 = icmp ne i32 %352, 0
  br i1 %353, label %354, label %375

354:                                              ; preds = %349
  %355 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %356 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %355, i32 0, i32 3
  %357 = load i32, i32* %356, align 4
  %358 = call zeroext i8 @stbi__get8(i32 %357)
  %359 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %360 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  %362 = call i32 @stbi__get16be(i32 %361)
  %363 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %363, i32 0, i32 3
  %365 = load i32, i32* %364, align 4
  %366 = call i32 @stbi__get16be(i32 %365)
  %367 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %367, i32 0, i32 3
  %369 = load i32, i32* %368, align 4
  %370 = call zeroext i8 @stbi__get8(i32 %369)
  %371 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %372 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %371, i32 0, i32 2
  store i8 %370, i8* %372, align 8
  %373 = load i32, i32* %6, align 4
  %374 = sub nsw i32 %373, 6
  store i32 %374, i32* %6, align 4
  br label %375

375:                                              ; preds = %354, %349
  br label %376

376:                                              ; preds = %375, %325, %322
  br label %377

377:                                              ; preds = %376, %321
  %378 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %378, i32 0, i32 3
  %380 = load i32, i32* %379, align 4
  %381 = load i32, i32* %6, align 4
  %382 = call i32 @stbi__skip(i32 %380, i32 %381)
  store i32 1, i32* %3, align 4
  br label %385

383:                                              ; preds = %267
  %384 = call i32 @stbi__err(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0))
  store i32 %384, i32* %3, align 4
  br label %385

385:                                              ; preds = %383, %377, %282, %280, %257, %207, %186, %146, %118, %73, %68, %34, %32, %24
  %386 = load i32, i32* %3, align 4
  ret i32 %386
}

declare dso_local i32 @stbi__err(i8*, i8*) #1

declare dso_local i32 @stbi__get16be(i32) #1

declare dso_local zeroext i8 @stbi__get8(i32) #1

declare dso_local i32 @stbi__build_huffman(i32, i32*) #1

declare dso_local i32 @stbi__build_fast_ac(i32, i32) #1

declare dso_local i32 @stbi__skip(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
