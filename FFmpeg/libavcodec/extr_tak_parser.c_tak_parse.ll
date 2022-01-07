; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak_parser.c_tak_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_tak_parser.c_tak_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__, %struct.TYPE_10__ }
%struct.TYPE_8__ = type { i32, i64, i64 }
%struct.TYPE_10__ = type { i32, i32*, i32, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@TAK_MAX_FRAME_HEADER_BYTES = common dso_local global i32 0, align 4
@PARSER_FLAG_COMPLETE_FRAMES = common dso_local global i32 0, align 4
@TAK_FRAME_FLAG_HAS_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, i32*, i32**, i32*, i32*, i32)* @tak_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tak_parse(%struct.TYPE_11__* %0, i32* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_11__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_9__*, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.TYPE_8__, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca %struct.TYPE_8__, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %8, align 8
  store i32* %1, i32** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 3
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  store %struct.TYPE_9__* %27, %struct.TYPE_9__** %14, align 8
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 2
  store %struct.TYPE_10__* %29, %struct.TYPE_10__** %15, align 8
  %30 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %30, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %31 = load i32, i32* %13, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %6
  %34 = load i32, i32* @TAK_MAX_FRAME_HEADER_BYTES, align 4
  br label %36

35:                                               ; preds = %6
  br label %36

36:                                               ; preds = %35, %33
  %37 = phi i32 [ %34, %33 ], [ 8, %35 ]
  store i32 %37, i32* %19, align 4
  %38 = load i32*, i32** %12, align 8
  %39 = load i32**, i32*** %10, align 8
  store i32* %38, i32** %39, align 8
  %40 = load i32, i32* %13, align 4
  %41 = load i32*, i32** %11, align 8
  store i32 %40, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @PARSER_FLAG_COMPLETE_FRAMES, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %81

48:                                               ; preds = %36
  %49 = load i32*, i32** %12, align 8
  %50 = load i32, i32* %13, align 4
  %51 = call i32 @init_get_bits8(i32* %17, i32* %49, i32 %50)
  store i32 %51, i32* %20, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %13, align 4
  store i32 %54, i32* %7, align 4
  br label %313

55:                                               ; preds = %48
  %56 = load i32*, i32** %9, align 8
  %57 = call i32 @ff_tak_decode_frame_header(i32* %56, i32* %17, %struct.TYPE_8__* %21, i32 127)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %79, label %59

59:                                               ; preds = %55
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %72 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  br label %75

75:                                               ; preds = %70, %65
  %76 = phi i64 [ %69, %65 ], [ %74, %70 ]
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 2
  store i64 %76, i64* %78, align 8
  br label %79

79:                                               ; preds = %75, %55
  %80 = load i32, i32* %13, align 4
  store i32 %80, i32* %7, align 4
  br label %313

81:                                               ; preds = %36
  br label %82

82:                                               ; preds = %270, %81
  %83 = load i32, i32* %13, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %95, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %19, align 4
  %90 = add nsw i32 %88, %89
  %91 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %92 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = icmp sle i32 %90, %93
  br label %95

95:                                               ; preds = %85, %82
  %96 = phi i1 [ true, %82 ], [ %94, %85 ]
  br i1 %96, label %97, label %271

97:                                               ; preds = %95
  %98 = load i32, i32* %13, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %131

100:                                              ; preds = %97
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @TAK_MAX_FRAME_HEADER_BYTES, align 4
  %105 = add nsw i32 %103, %104
  %106 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %107 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = icmp sgt i32 %105, %108
  br i1 %109, label %110, label %131

110:                                              ; preds = %100
  %111 = load i32, i32* @TAK_MAX_FRAME_HEADER_BYTES, align 4
  %112 = load i32, i32* %13, align 4
  %113 = call i32 @FFMIN(i32 %111, i32 %112)
  store i32 %113, i32* %22, align 4
  %114 = load i32*, i32** %12, align 8
  store i32* %114, i32** %23, align 8
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %116 = load i32, i32* @END_NOT_FOUND, align 4
  %117 = call i64 @ff_combine_frame(%struct.TYPE_10__* %115, i32 %116, i32** %23, i32* %22)
  %118 = icmp ne i64 %117, -1
  br i1 %118, label %119, label %120

119:                                              ; preds = %110
  br label %307

120:                                              ; preds = %110
  %121 = load i32, i32* %22, align 4
  %122 = load i32, i32* %18, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %18, align 4
  %124 = load i32, i32* %22, align 4
  %125 = load i32*, i32** %12, align 8
  %126 = sext i32 %124 to i64
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  store i32* %127, i32** %12, align 8
  %128 = load i32, i32* %22, align 4
  %129 = load i32, i32* %13, align 4
  %130 = sub nsw i32 %129, %128
  store i32 %130, i32* %13, align 4
  br label %131

131:                                              ; preds = %120, %100, %97
  br label %132

132:                                              ; preds = %265, %131
  %133 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %139 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = icmp sle i32 %137, %140
  br i1 %141, label %142, label %270

142:                                              ; preds = %132
  %143 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %144 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %143, i32 0, i32 1
  %145 = load i32*, i32** %144, align 8
  %146 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %145, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = icmp eq i32 %151, 255
  br i1 %152, label %153, label %264

153:                                              ; preds = %142
  %154 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %155 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %154, i32 0, i32 1
  %156 = load i32*, i32** %155, align 8
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = add nsw i32 %159, 1
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %156, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp eq i32 %163, 160
  br i1 %164, label %165, label %264

165:                                              ; preds = %153
  %166 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %167 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %166, i32 0, i32 1
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %168, i64 %172
  %174 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %175 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = sub nsw i32 %176, %179
  %181 = call i32 @init_get_bits8(i32* %17, i32* %173, i32 %180)
  store i32 %181, i32* %20, align 4
  %182 = icmp slt i32 %181, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %165
  br label %307

184:                                              ; preds = %165
  %185 = load i32*, i32** %9, align 8
  %186 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %187 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %184
  br label %194

191:                                              ; preds = %184
  %192 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %193 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %192, i32 0, i32 1
  br label %194

194:                                              ; preds = %191, %190
  %195 = phi %struct.TYPE_8__* [ %24, %190 ], [ %193, %191 ]
  %196 = call i32 @ff_tak_decode_frame_header(i32* %185, i32* %17, %struct.TYPE_8__* %195, i32 127)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %263, label %198

198:                                              ; preds = %194
  %199 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %200 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %199, i32 0, i32 1
  %201 = load i32*, i32** %200, align 8
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %201, i64 %205
  %207 = call i32 @get_bits_count(i32* %17)
  %208 = sdiv i32 %207, 8
  %209 = call i32 @ff_tak_check_crc(i32* %206, i32 %208)
  %210 = icmp ne i32 %209, 0
  br i1 %210, label %263, label %211

211:                                              ; preds = %198
  %212 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %213 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %212, i32 0, i32 2
  %214 = load i32, i32* %213, align 8
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %250, label %216

216:                                              ; preds = %211
  %217 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %218 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %217, i32 0, i32 2
  store i32 1, i32* %218, align 8
  %219 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %220 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 2
  %222 = load i64, i64* %221, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %229

224:                                              ; preds = %216
  %225 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %226 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %225, i32 0, i32 1
  %227 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %226, i32 0, i32 2
  %228 = load i64, i64* %227, align 8
  br label %234

229:                                              ; preds = %216
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %231, i32 0, i32 1
  %233 = load i64, i64* %232, align 8
  br label %234

234:                                              ; preds = %229, %224
  %235 = phi i64 [ %228, %224 ], [ %233, %229 ]
  %236 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %237 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %236, i32 0, i32 2
  store i64 %235, i64* %237, align 8
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 1
  %240 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 8
  %242 = load i32, i32* @TAK_FRAME_FLAG_HAS_INFO, align 4
  %243 = and i32 %241, %242
  %244 = icmp ne i32 %243, 0
  %245 = xor i1 %244, true
  %246 = xor i1 %245, true
  %247 = zext i1 %246 to i32
  %248 = load %struct.TYPE_11__*, %struct.TYPE_11__** %8, align 8
  %249 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %248, i32 0, i32 1
  store i32 %247, i32* %249, align 4
  br label %262

250:                                              ; preds = %211
  %251 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %252 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %251, i32 0, i32 2
  store i32 0, i32* %252, align 8
  %253 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %254 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %253, i32 0, i32 0
  %255 = load i32, i32* %254, align 8
  %256 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %257 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 8
  %259 = sub nsw i32 %255, %258
  store i32 %259, i32* %16, align 4
  %260 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 0
  store i32 0, i32* %261, align 8
  br label %272

262:                                              ; preds = %234
  br label %263

263:                                              ; preds = %262, %198, %194
  br label %264

264:                                              ; preds = %263, %153, %142
  br label %265

265:                                              ; preds = %264
  %266 = load %struct.TYPE_9__*, %struct.TYPE_9__** %14, align 8
  %267 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* %267, align 8
  br label %132

270:                                              ; preds = %132
  br label %82

271:                                              ; preds = %95
  br label %272

272:                                              ; preds = %271, %250
  %273 = load i32, i32* %18, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %282

275:                                              ; preds = %272
  %276 = load i32, i32* %13, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %282, label %278

278:                                              ; preds = %275
  %279 = load i32, i32* %16, align 4
  %280 = load i32, i32* @END_NOT_FOUND, align 4
  %281 = icmp eq i32 %279, %280
  br i1 %281, label %287, label %282

282:                                              ; preds = %278, %275, %272
  %283 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %284 = load i32, i32* %16, align 4
  %285 = call i64 @ff_combine_frame(%struct.TYPE_10__* %283, i32 %284, i32** %12, i32* %13)
  %286 = icmp slt i64 %285, 0
  br i1 %286, label %287, label %288

287:                                              ; preds = %282, %278
  br label %307

288:                                              ; preds = %282
  %289 = load i32, i32* %16, align 4
  %290 = load i32, i32* @END_NOT_FOUND, align 4
  %291 = icmp ne i32 %289, %290
  br i1 %291, label %292, label %301

292:                                              ; preds = %288
  %293 = load i32, i32* %18, align 4
  %294 = load i32, i32* %16, align 4
  %295 = add nsw i32 %294, %293
  store i32 %295, i32* %16, align 4
  %296 = load i32, i32* %16, align 4
  %297 = sub nsw i32 0, %296
  %298 = call i32 @FFMAX(i32 0, i32 %297)
  %299 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %300 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %299, i32 0, i32 3
  store i32 %298, i32* %300, align 4
  br label %301

301:                                              ; preds = %292, %288
  %302 = load i32*, i32** %12, align 8
  %303 = load i32**, i32*** %10, align 8
  store i32* %302, i32** %303, align 8
  %304 = load i32, i32* %13, align 4
  %305 = load i32*, i32** %11, align 8
  store i32 %304, i32* %305, align 4
  %306 = load i32, i32* %16, align 4
  store i32 %306, i32* %7, align 4
  br label %313

307:                                              ; preds = %287, %183, %119
  %308 = load i32**, i32*** %10, align 8
  store i32* null, i32** %308, align 8
  %309 = load i32*, i32** %11, align 8
  store i32 0, i32* %309, align 4
  %310 = load i32, i32* %13, align 4
  %311 = load i32, i32* %18, align 4
  %312 = add nsw i32 %310, %311
  store i32 %312, i32* %7, align 4
  br label %313

313:                                              ; preds = %307, %301, %79, %53
  %314 = load i32, i32* %7, align 4
  ret i32 %314
}

declare dso_local i32 @init_get_bits8(i32*, i32*, i32) #1

declare dso_local i32 @ff_tak_decode_frame_header(i32*, i32*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @ff_combine_frame(%struct.TYPE_10__*, i32, i32**, i32*) #1

declare dso_local i32 @ff_tak_check_crc(i32*, i32) #1

declare dso_local i32 @get_bits_count(i32*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
