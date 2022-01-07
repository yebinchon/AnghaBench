; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdsample.c_jinit_upsampler.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/jpeg-6/extr_jdsample.c_jinit_upsampler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32, i32, i32, i64, %struct.TYPE_9__*, %struct.TYPE_11__*, i64, i64, %struct.jpeg_upsampler* }
%struct.TYPE_9__ = type { i32 (i32, i32, i32, i32)*, i64 (i32, i32, i32)* }
%struct.TYPE_11__ = type { i32, i32, i32, i32, i32 }
%struct.jpeg_upsampler = type { i32 }
%struct.TYPE_10__ = type { i32*, i32*, i8**, i8**, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i8*, i32, i32 }

@JPOOL_IMAGE = common dso_local global i32 0, align 4
@my_upsampler = common dso_local global i32 0, align 4
@start_pass_upsample = common dso_local global i32 0, align 4
@sep_upsample = common dso_local global i32 0, align 4
@FALSE = common dso_local global i8* null, align 8
@JERR_CCIR601_NOTIMPL = common dso_local global i32 0, align 4
@TRUE = common dso_local global i8* null, align 8
@noop_upsample = common dso_local global i32 0, align 4
@fullsize_upsample = common dso_local global i32 0, align 4
@h2v1_fancy_upsample = common dso_local global i32 0, align 4
@h2v1_upsample = common dso_local global i32 0, align 4
@h2v2_fancy_upsample = common dso_local global i32 0, align 4
@h2v2_upsample = common dso_local global i32 0, align 4
@int_upsample = common dso_local global i32 0, align 4
@JERR_FRACT_SAMPLE_NOTIMPL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jinit_upsampler(%struct.TYPE_12__* %0) #0 {
  %2 = alloca %struct.TYPE_12__*, align 8
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_11__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %2, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %14, i32 0, i32 1
  %16 = load i64 (i32, i32, i32)*, i64 (i32, i32, i32)** %15, align 8
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %18 = ptrtoint %struct.TYPE_12__* %17 to i32
  %19 = load i32, i32* @JPOOL_IMAGE, align 4
  %20 = load i32, i32* @my_upsampler, align 4
  %21 = call i32 @SIZEOF(i32 %20)
  %22 = call i64 %16(i32 %18, i32 %19, i32 %21)
  %23 = inttoptr i64 %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %3, align 8
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %25 = bitcast %struct.TYPE_10__* %24 to %struct.jpeg_upsampler*
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 9
  store %struct.jpeg_upsampler* %25, %struct.jpeg_upsampler** %27, align 8
  %28 = load i32, i32* @start_pass_upsample, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 2
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @sep_upsample, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %34, i32 0, i32 1
  store i32 %32, i32* %35, align 8
  %36 = load i8*, i8** @FALSE, align 8
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 5
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store i8* %36, i8** %39, align 8
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 8
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %1
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %46 = load i32, i32* @JERR_CCIR601_NOTIMPL, align 4
  %47 = call i32 @ERREXIT(%struct.TYPE_12__* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %1
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sgt i32 %56, 1
  br label %58

58:                                               ; preds = %53, %48
  %59 = phi i1 [ false, %48 ], [ %57, %53 ]
  %60 = zext i1 %59 to i32
  store i32 %60, i32* %7, align 4
  store i32 0, i32* %4, align 4
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 6
  %63 = load %struct.TYPE_11__*, %struct.TYPE_11__** %62, align 8
  store %struct.TYPE_11__* %63, %struct.TYPE_11__** %5, align 8
  br label %64

64:                                               ; preds = %293, %58
  %65 = load i32, i32* %4, align 4
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %65, %68
  br i1 %69, label %70, label %298

70:                                               ; preds = %64
  %71 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %73, %76
  %78 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = sdiv i32 %77, %80
  store i32 %81, i32* %8, align 4
  %82 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = mul nsw i32 %84, %87
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = sdiv i32 %88, %91
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  store i32 %95, i32* %10, align 4
  %96 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  store i32 %98, i32* %11, align 4
  %99 = load i32, i32* %9, align 4
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %4, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %99, i32* %105, align 4
  %106 = load i8*, i8** @TRUE, align 8
  %107 = ptrtoint i8* %106 to i32
  store i32 %107, i32* %6, align 4
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %122, label %112

112:                                              ; preds = %70
  %113 = load i32, i32* @noop_upsample, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 4
  %116 = load i32*, i32** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %113, i32* %119, align 4
  %120 = load i8*, i8** @FALSE, align 8
  %121 = ptrtoint i8* %120 to i32
  store i32 %121, i32* %6, align 4
  br label %261

122:                                              ; preds = %70
  %123 = load i32, i32* %8, align 4
  %124 = load i32, i32* %10, align 4
  %125 = icmp eq i32 %123, %124
  br i1 %125, label %126, label %140

126:                                              ; preds = %122
  %127 = load i32, i32* %9, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp eq i32 %127, %128
  br i1 %129, label %130, label %140

130:                                              ; preds = %126
  %131 = load i32, i32* @fullsize_upsample, align 4
  %132 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %133 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %132, i32 0, i32 4
  %134 = load i32*, i32** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds i32, i32* %134, i64 %136
  store i32 %131, i32* %137, align 4
  %138 = load i8*, i8** @FALSE, align 8
  %139 = ptrtoint i8* %138 to i32
  store i32 %139, i32* %6, align 4
  br label %260

140:                                              ; preds = %126, %122
  %141 = load i32, i32* %8, align 4
  %142 = mul nsw i32 %141, 2
  %143 = load i32, i32* %10, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %174

145:                                              ; preds = %140
  %146 = load i32, i32* %9, align 4
  %147 = load i32, i32* %11, align 4
  %148 = icmp eq i32 %146, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %145
  %150 = load i32, i32* %7, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %165

152:                                              ; preds = %149
  %153 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %153, i32 0, i32 3
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 2
  br i1 %156, label %157, label %165

157:                                              ; preds = %152
  %158 = load i32, i32* @h2v1_fancy_upsample, align 4
  %159 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %160 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %4, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 %158, i32* %164, align 4
  br label %173

165:                                              ; preds = %152, %149
  %166 = load i32, i32* @h2v1_upsample, align 4
  %167 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %168 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %167, i32 0, i32 4
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds i32, i32* %169, i64 %171
  store i32 %166, i32* %172, align 4
  br label %173

173:                                              ; preds = %165, %157
  br label %259

174:                                              ; preds = %145, %140
  %175 = load i32, i32* %8, align 4
  %176 = mul nsw i32 %175, 2
  %177 = load i32, i32* %10, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %213

179:                                              ; preds = %174
  %180 = load i32, i32* %9, align 4
  %181 = mul nsw i32 %180, 2
  %182 = load i32, i32* %11, align 4
  %183 = icmp eq i32 %181, %182
  br i1 %183, label %184, label %213

184:                                              ; preds = %179
  %185 = load i32, i32* %7, align 4
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %204

187:                                              ; preds = %184
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = icmp sgt i32 %190, 2
  br i1 %191, label %192, label %204

192:                                              ; preds = %187
  %193 = load i32, i32* @h2v2_fancy_upsample, align 4
  %194 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %195 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %194, i32 0, i32 4
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %4, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %193, i32* %199, align 4
  %200 = load i8*, i8** @TRUE, align 8
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 5
  %203 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %202, i32 0, i32 0
  store i8* %200, i8** %203, align 8
  br label %212

204:                                              ; preds = %187, %184
  %205 = load i32, i32* @h2v2_upsample, align 4
  %206 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %206, i32 0, i32 4
  %208 = load i32*, i32** %207, align 8
  %209 = load i32, i32* %4, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %208, i64 %210
  store i32 %205, i32* %211, align 4
  br label %212

212:                                              ; preds = %204, %192
  br label %258

213:                                              ; preds = %179, %174
  %214 = load i32, i32* %10, align 4
  %215 = load i32, i32* %8, align 4
  %216 = srem i32 %214, %215
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %253

218:                                              ; preds = %213
  %219 = load i32, i32* %11, align 4
  %220 = load i32, i32* %9, align 4
  %221 = srem i32 %219, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %253

223:                                              ; preds = %218
  %224 = load i32, i32* @int_upsample, align 4
  %225 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %225, i32 0, i32 4
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %4, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  store i32 %224, i32* %230, align 4
  %231 = load i32, i32* %10, align 4
  %232 = load i32, i32* %8, align 4
  %233 = sdiv i32 %231, %232
  %234 = sext i32 %233 to i64
  %235 = inttoptr i64 %234 to i8*
  %236 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %236, i32 0, i32 3
  %238 = load i8**, i8*** %237, align 8
  %239 = load i32, i32* %4, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i8*, i8** %238, i64 %240
  store i8* %235, i8** %241, align 8
  %242 = load i32, i32* %11, align 4
  %243 = load i32, i32* %9, align 4
  %244 = sdiv i32 %242, %243
  %245 = sext i32 %244 to i64
  %246 = inttoptr i64 %245 to i8*
  %247 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %248 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %247, i32 0, i32 2
  %249 = load i8**, i8*** %248, align 8
  %250 = load i32, i32* %4, align 4
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds i8*, i8** %249, i64 %251
  store i8* %246, i8** %252, align 8
  br label %257

253:                                              ; preds = %218, %213
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %255 = load i32, i32* @JERR_FRACT_SAMPLE_NOTIMPL, align 4
  %256 = call i32 @ERREXIT(%struct.TYPE_12__* %254, i32 %255)
  br label %257

257:                                              ; preds = %253, %223
  br label %258

258:                                              ; preds = %257, %212
  br label %259

259:                                              ; preds = %258, %173
  br label %260

260:                                              ; preds = %259, %130
  br label %261

261:                                              ; preds = %260, %112
  %262 = load i32, i32* %6, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %292

264:                                              ; preds = %261
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 5
  %267 = load %struct.TYPE_9__*, %struct.TYPE_9__** %266, align 8
  %268 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %267, i32 0, i32 0
  %269 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %268, align 8
  %270 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %271 = ptrtoint %struct.TYPE_12__* %270 to i32
  %272 = load i32, i32* @JPOOL_IMAGE, align 4
  %273 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %274 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %277 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %276, i32 0, i32 2
  %278 = load i32, i32* %277, align 8
  %279 = sext i32 %278 to i64
  %280 = call i64 @jround_up(i64 %275, i64 %279)
  %281 = trunc i64 %280 to i32
  %282 = load %struct.TYPE_12__*, %struct.TYPE_12__** %2, align 8
  %283 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %282, i32 0, i32 3
  %284 = load i32, i32* %283, align 4
  %285 = call i32 %269(i32 %271, i32 %272, i32 %281, i32 %284)
  %286 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %4, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  store i32 %285, i32* %291, align 4
  br label %292

292:                                              ; preds = %264, %261
  br label %293

293:                                              ; preds = %292
  %294 = load i32, i32* %4, align 4
  %295 = add nsw i32 %294, 1
  store i32 %295, i32* %4, align 4
  %296 = load %struct.TYPE_11__*, %struct.TYPE_11__** %5, align 8
  %297 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %296, i32 1
  store %struct.TYPE_11__* %297, %struct.TYPE_11__** %5, align 8
  br label %64

298:                                              ; preds = %64
  ret void
}

declare dso_local i32 @SIZEOF(i32) #1

declare dso_local i32 @ERREXIT(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @jround_up(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
