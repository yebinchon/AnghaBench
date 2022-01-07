; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pnm_parser.c_pnm_parse.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_pnm_parser.c_pnm_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, i64, i64, i64 }
%struct.TYPE_15__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i64, i64, i64, i32 }

@END_NOT_FOUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_15__*, i32**, i32*, i32*, i32)* @pnm_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnm_parse(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1, i32** %2, i32* %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_14__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_12__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.TYPE_13__, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %8, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %9, align 8
  store i32** %2, i32*** %10, align 8
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  store %struct.TYPE_12__* %28, %struct.TYPE_12__** %14, align 8
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  store %struct.TYPE_11__* %30, %struct.TYPE_11__** %15, align 8
  %31 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %31, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sgt i64 %34, 0
  br i1 %35, label %36, label %71

36:                                               ; preds = %6
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %38 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = add nsw i64 %39, %42
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @memmove(i64 %43, i64 %50, i64 %53)
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %56 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = add nsw i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %65, i32 0, i32 3
  %67 = load i64, i64* %66, align 8
  %68 = add nsw i64 %67, %64
  store i64 %68, i64* %66, align 8
  %69 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  store i64 0, i64* %70, align 8
  br label %71

71:                                               ; preds = %36, %6
  %72 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %97

76:                                               ; preds = %71
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load i32, i32* %13, align 4
  %81 = call i32 @FFMIN(i32 %79, i32 %80)
  store i32 %81, i32* %19, align 4
  %82 = load i32, i32* %19, align 4
  %83 = load i32, i32* %18, align 4
  %84 = add nsw i32 %83, %82
  store i32 %84, i32* %18, align 4
  %85 = load i32, i32* %19, align 4
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sub nsw i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %96, label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %18, align 4
  store i32 %95, i32* %17, align 4
  br label %96

96:                                               ; preds = %94, %76
  br label %324

97:                                               ; preds = %71
  br label %98

98:                                               ; preds = %166, %97
  %99 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %117

103:                                              ; preds = %98
  %104 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %105 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i64 %106, i64* %107, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %110 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %113 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i32 0, i32 2
  %114 = load i64, i64* %113, align 8
  %115 = add nsw i64 %111, %114
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i64 %115, i64* %116, align 8
  br label %135

117:                                              ; preds = %98
  %118 = load i32*, i32** %12, align 8
  %119 = load i32, i32* %18, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = ptrtoint i32* %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  store i64 %122, i64* %123, align 8
  %124 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  store i64 %122, i64* %124, align 8
  %125 = load i32*, i32** %12, align 8
  %126 = load i32, i32* %13, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = load i32, i32* %18, align 4
  %130 = sext i32 %129 to i64
  %131 = sub i64 0, %130
  %132 = getelementptr inbounds i32, i32* %128, i64 %131
  %133 = ptrtoint i32* %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  store i64 %133, i64* %134, align 8
  br label %135

135:                                              ; preds = %117, %103
  %136 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %137 = call i64 @ff_pnm_decode_header(%struct.TYPE_15__* %136, %struct.TYPE_13__* %16)
  %138 = icmp slt i64 %137, 0
  br i1 %138, label %139, label %168

139:                                              ; preds = %135
  %140 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %143 = load i64, i64* %142, align 8
  %144 = icmp slt i64 %141, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %139
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %155

150:                                              ; preds = %145
  %151 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 2
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 1
  store i32 0, i32* %154, align 4
  br label %166

155:                                              ; preds = %145
  %156 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = sub nsw i64 %157, %159
  %161 = trunc i64 %160 to i32
  %162 = call i32 @FFMAX(i32 1, i32 %161)
  store i32 %162, i32* %20, align 4
  %163 = load i32, i32* %20, align 4
  %164 = load i32, i32* %18, align 4
  %165 = add i32 %164, %163
  store i32 %165, i32* %18, align 4
  br label %166

166:                                              ; preds = %155, %150
  br label %98

167:                                              ; preds = %139
  br label %291

168:                                              ; preds = %135
  %169 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 3
  %170 = load i32, i32* %169, align 8
  %171 = icmp slt i32 %170, 4
  br i1 %171, label %172, label %268

172:                                              ; preds = %168
  %173 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = inttoptr i64 %174 to i32*
  store i32* %175, i32** %21, align 8
  %176 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 2
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  store i32* %178, i32** %22, align 8
  %179 = load i32*, i32** %21, align 8
  store i32* %179, i32** %23, align 8
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 2
  %182 = load i64, i64* %181, align 8
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %204

184:                                              ; preds = %172
  %185 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %186 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %185, i32 0, i32 1
  %187 = load i32, i32* %186, align 4
  %188 = sext i32 %187 to i64
  %189 = load i32*, i32** %22, align 8
  %190 = load i32*, i32** %21, align 8
  %191 = ptrtoint i32* %189 to i64
  %192 = ptrtoint i32* %190 to i64
  %193 = sub i64 %191, %192
  %194 = sdiv exact i64 %193, 4
  %195 = icmp sle i64 %188, %194
  %196 = zext i1 %195 to i32
  %197 = call i32 @av_assert0(i32 %196)
  %198 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32*, i32** %21, align 8
  %202 = sext i32 %200 to i64
  %203 = getelementptr inbounds i32, i32* %201, i64 %202
  store i32* %203, i32** %21, align 8
  br label %204

204:                                              ; preds = %184, %172
  br label %205

205:                                              ; preds = %250, %204
  %206 = load i32*, i32** %21, align 8
  %207 = load i32*, i32** %22, align 8
  %208 = icmp ult i32* %206, %207
  br i1 %208, label %209, label %251

209:                                              ; preds = %205
  %210 = load i32*, i32** %21, align 8
  store i32* %210, i32** %23, align 8
  %211 = load i32*, i32** %21, align 8
  %212 = getelementptr inbounds i32, i32* %211, i32 1
  store i32* %212, i32** %21, align 8
  %213 = load i32, i32* %211, align 4
  store i32 %213, i32* %24, align 4
  %214 = load i32, i32* %24, align 4
  %215 = icmp eq i32 %214, 35
  br i1 %215, label %216, label %233

216:                                              ; preds = %209
  %217 = load i32*, i32** %21, align 8
  %218 = load i32*, i32** %22, align 8
  %219 = load i32*, i32** %21, align 8
  %220 = ptrtoint i32* %218 to i64
  %221 = ptrtoint i32* %219 to i64
  %222 = sub i64 %220, %221
  %223 = sdiv exact i64 %222, 4
  %224 = trunc i64 %223 to i32
  %225 = call i32* @memchr(i32* %217, i8 signext 10, i32 %224)
  store i32* %225, i32** %25, align 8
  %226 = load i32*, i32** %25, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %231

228:                                              ; preds = %216
  %229 = load i32*, i32** %25, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  store i32* %230, i32** %21, align 8
  br label %232

231:                                              ; preds = %216
  br label %251

232:                                              ; preds = %228
  br label %250

233:                                              ; preds = %209
  %234 = load i32, i32* %24, align 4
  %235 = icmp eq i32 %234, 80
  br i1 %235, label %236, label %249

236:                                              ; preds = %233
  %237 = load i32*, i32** %21, align 8
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = sub i64 0, %239
  %241 = getelementptr inbounds i32, i32* %237, i64 %240
  %242 = load i32, i32* %18, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds i32, i32* %241, i64 %243
  %245 = getelementptr inbounds i32, i32* %244, i64 -1
  %246 = ptrtoint i32* %245 to i32
  store i32 %246, i32* %17, align 4
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  store i32 0, i32* %248, align 4
  br label %251

249:                                              ; preds = %233
  br label %250

250:                                              ; preds = %249, %232
  br label %205

251:                                              ; preds = %236, %231, %205
  %252 = load i32, i32* %17, align 4
  %253 = load i32, i32* @END_NOT_FOUND, align 4
  %254 = icmp eq i32 %252, %253
  br i1 %254, label %255, label %267

255:                                              ; preds = %251
  %256 = load i32*, i32** %23, align 8
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %258 = load i64, i64* %257, align 8
  %259 = sub i64 0, %258
  %260 = getelementptr inbounds i32, i32* %256, i64 %259
  %261 = load i32, i32* %18, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds i32, i32* %260, i64 %262
  %264 = ptrtoint i32* %263 to i32
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  br label %267

267:                                              ; preds = %255, %251
  br label %290

268:                                              ; preds = %168
  %269 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 1
  %270 = load i64, i64* %269, align 8
  %271 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %272 = load i64, i64* %271, align 8
  %273 = sub nsw i64 %270, %272
  %274 = load i32, i32* %18, align 4
  %275 = sext i32 %274 to i64
  %276 = add nsw i64 %273, %275
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 2
  %279 = load i32, i32* %278, align 4
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %281 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %280, i32 0, i32 1
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %283, i32 0, i32 0
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @av_image_get_buffer_size(i32 %279, i32 %282, i32 %285, i32 1)
  %287 = sext i32 %286 to i64
  %288 = add nsw i64 %276, %287
  %289 = trunc i64 %288 to i32
  store i32 %289, i32* %17, align 4
  br label %290

290:                                              ; preds = %268, %267
  br label %291

291:                                              ; preds = %290, %167
  %292 = load i32, i32* %17, align 4
  %293 = load i32, i32* @END_NOT_FOUND, align 4
  %294 = icmp ne i32 %292, %293
  br i1 %294, label %295, label %312

295:                                              ; preds = %291
  %296 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %16, i32 0, i32 0
  %297 = load i64, i64* %296, align 8
  %298 = inttoptr i64 %297 to i32*
  %299 = load i32*, i32** %12, align 8
  %300 = load i32, i32* %18, align 4
  %301 = sext i32 %300 to i64
  %302 = getelementptr inbounds i32, i32* %299, i64 %301
  %303 = icmp ne i32* %298, %302
  br i1 %303, label %304, label %312

304:                                              ; preds = %295
  %305 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %306 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %305, i32 0, i32 2
  %307 = load i64, i64* %306, align 8
  %308 = load i32, i32* %17, align 4
  %309 = sext i32 %308 to i64
  %310 = sub nsw i64 %309, %307
  %311 = trunc i64 %310 to i32
  store i32 %311, i32* %17, align 4
  br label %312

312:                                              ; preds = %304, %295, %291
  %313 = load i32, i32* %17, align 4
  %314 = load i32, i32* %13, align 4
  %315 = icmp sgt i32 %313, %314
  br i1 %315, label %316, label %323

316:                                              ; preds = %312
  %317 = load i32, i32* %17, align 4
  %318 = load i32, i32* %13, align 4
  %319 = sub nsw i32 %317, %318
  %320 = load %struct.TYPE_12__*, %struct.TYPE_12__** %14, align 8
  %321 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 8
  %322 = load i32, i32* @END_NOT_FOUND, align 4
  store i32 %322, i32* %17, align 4
  br label %323

323:                                              ; preds = %316, %312
  br label %324

324:                                              ; preds = %323, %96
  %325 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %326 = load i32, i32* %17, align 4
  %327 = call i64 @ff_combine_frame(%struct.TYPE_11__* %325, i32 %326, i32** %12, i32* %13)
  %328 = icmp slt i64 %327, 0
  br i1 %328, label %329, label %333

329:                                              ; preds = %324
  %330 = load i32**, i32*** %10, align 8
  store i32* null, i32** %330, align 8
  %331 = load i32*, i32** %11, align 8
  store i32 0, i32* %331, align 4
  %332 = load i32, i32* %13, align 4
  store i32 %332, i32* %7, align 4
  br label %339

333:                                              ; preds = %324
  %334 = load i32*, i32** %12, align 8
  %335 = load i32**, i32*** %10, align 8
  store i32* %334, i32** %335, align 8
  %336 = load i32, i32* %13, align 4
  %337 = load i32*, i32** %11, align 8
  store i32 %336, i32* %337, align 4
  %338 = load i32, i32* %17, align 4
  store i32 %338, i32* %7, align 4
  br label %339

339:                                              ; preds = %333, %329
  %340 = load i32, i32* %7, align 4
  ret i32 %340
}

declare dso_local i32 @memmove(i64, i64, i64) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i64 @ff_pnm_decode_header(%struct.TYPE_15__*, %struct.TYPE_13__*) #1

declare dso_local i32 @FFMAX(i32, i32) #1

declare dso_local i32 @av_assert0(i32) #1

declare dso_local i32* @memchr(i32*, i8 signext, i32) #1

declare dso_local i32 @av_image_get_buffer_size(i32, i32, i32, i32) #1

declare dso_local i64 @ff_combine_frame(%struct.TYPE_11__*, i32, i32**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
