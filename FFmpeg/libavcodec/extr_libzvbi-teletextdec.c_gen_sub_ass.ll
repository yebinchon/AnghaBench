; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_gen_sub_ass.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_libzvbi-teletextdec.c_gen_sub_ass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i32*, i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.TYPE_19__ = type { i32, i32, i32, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i64 }
%struct.TYPE_23__ = type { i32, i64 }

@VBI_WHITE = common dso_local global i32 0, align 4
@VBI_BLACK = common dso_local global i32 0, align 4
@AV_BPRINT_SIZE_UNLIMITED = common dso_local global i32 0, align 4
@VBI_TRANSPARENT_SPACE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [8 x i8] c"{\\an%d}\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" \\N\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SUBTITLE_ASS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [9 x i8] c"Subtitle\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c"Teletext\00", align 1
@AV_LOG_DEBUG = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [20 x i8] c"subtext:%s:txetbus\0A\00", align 1
@SUBTITLE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.TYPE_19__*, i32)* @gen_sub_ass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gen_sub_ass(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1, %struct.TYPE_19__* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.TYPE_22__*, align 8
  %8 = alloca %struct.TYPE_19__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.TYPE_23__, align 8
  %28 = alloca %struct.TYPE_20__*, align 8
  %29 = alloca i32, align 4
  %30 = alloca %struct.TYPE_20__*, align 8
  %31 = alloca i32, align 4
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %6, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %7, align 8
  store %struct.TYPE_19__* %2, %struct.TYPE_19__** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 -1, i32* %14, align 4
  store i32 -1, i32* %15, align 4
  %32 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  store i32 %34, i32* %16, align 4
  %35 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  store i32 %37, i32* %17, align 4
  store i32 2, i32* %18, align 4
  store i32 -1, i32* %19, align 4
  store i32 1, i32* %20, align 4
  store i32 1, i32* %21, align 4
  store i32 1, i32* %22, align 4
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 2047
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* %23, align 4
  store i32 0, i32* %24, align 4
  %48 = load i32, i32* @VBI_WHITE, align 4
  store i32 %48, i32* %25, align 4
  %49 = load i32, i32* @VBI_BLACK, align 4
  store i32 %49, i32* %26, align 4
  %50 = load i32, i32* @AV_BPRINT_SIZE_UNLIMITED, align 4
  %51 = call i32 @av_bprint_init(%struct.TYPE_23__* %27, i32 0, i32 %50)
  %52 = load i32, i32* %9, align 4
  store i32 %52, i32* %10, align 4
  br label %53

53:                                               ; preds = %126, %4
  %54 = load i32, i32* %10, align 4
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %129

59:                                               ; preds = %53
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %60, i32 0, i32 3
  %62 = load %struct.TYPE_20__*, %struct.TYPE_20__** %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = mul nsw i32 %63, %66
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %62, i64 %68
  store %struct.TYPE_20__* %69, %struct.TYPE_20__** %28, align 8
  %70 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %71 = load %struct.TYPE_20__*, %struct.TYPE_20__** %28, align 8
  %72 = call i32 @get_trim_info(%struct.TYPE_19__* %70, %struct.TYPE_20__* %71, i32* %11, i32* %12, i32* %13)
  %73 = load i32, i32* %13, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %125

75:                                               ; preds = %59
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, -1
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* %11, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %85, label %82

82:                                               ; preds = %78, %75
  %83 = load i32, i32* %11, align 4
  %84 = icmp sgt i32 %83, 5
  br i1 %84, label %85, label %86

85:                                               ; preds = %82, %78
  store i32 0, i32* %20, align 4
  br label %86

86:                                               ; preds = %85, %82
  %87 = load i32, i32* %14, align 4
  %88 = icmp ne i32 %87, -1
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %90, %91
  br i1 %92, label %96, label %93

93:                                               ; preds = %89, %86
  %94 = load i32, i32* %12, align 4
  %95 = icmp sgt i32 %94, 2
  br i1 %95, label %96, label %97

96:                                               ; preds = %93, %89
  store i32 0, i32* %21, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, -1
  br i1 %99, label %100, label %110

100:                                              ; preds = %97
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = load i32, i32* %14, align 4
  %105 = load i32, i32* %15, align 4
  %106 = sub nsw i32 %104, %105
  %107 = sub nsw i32 %103, %106
  %108 = call i32 @FFABS(i32 %107)
  %109 = icmp sgt i32 %108, 1
  br i1 %109, label %115, label %110

110:                                              ; preds = %100, %97
  %111 = load i32, i32* %12, align 4
  %112 = load i32, i32* %11, align 4
  %113 = sub nsw i32 %111, %112
  %114 = icmp sgt i32 %113, 4
  br i1 %114, label %115, label %116

115:                                              ; preds = %110, %100
  store i32 0, i32* %22, align 4
  br label %116

116:                                              ; preds = %115, %110
  %117 = load i32, i32* %11, align 4
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* %12, align 4
  store i32 %118, i32* %14, align 4
  %119 = load i32, i32* %11, align 4
  %120 = load i32, i32* %17, align 4
  %121 = call i32 @FFMIN(i32 %119, i32 %120)
  store i32 %121, i32* %17, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call i32 @FFMIN(i32 %122, i32 %123)
  store i32 %124, i32* %16, align 4
  br label %125

125:                                              ; preds = %116, %59
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %53

129:                                              ; preds = %53
  %130 = load i32, i32* %21, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %129
  %133 = load i32, i32* %20, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %141

135:                                              ; preds = %132
  %136 = load i32, i32* %22, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %135
  store i32 1, i32* %18, align 4
  %139 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %139, i32 0, i32 1
  store i32 1, i32* %140, align 8
  br label %196

141:                                              ; preds = %135, %132, %129
  %142 = load i32, i32* %21, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %153, label %144

144:                                              ; preds = %141
  %145 = load i32, i32* %20, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %153, label %147

147:                                              ; preds = %144
  %148 = load i32, i32* %22, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %147
  store i32 2, i32* %18, align 4
  %151 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %152 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %151, i32 0, i32 1
  store i32 2, i32* %152, align 8
  br label %195

153:                                              ; preds = %147, %144, %141
  %154 = load i32, i32* %21, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %153
  %157 = load i32, i32* %20, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %165, label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %22, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %165, label %162

162:                                              ; preds = %159
  store i32 3, i32* %18, align 4
  %163 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %163, i32 0, i32 1
  store i32 3, i32* %164, align 8
  br label %194

165:                                              ; preds = %159, %156, %153
  %166 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %167 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %166, i32 0, i32 1
  %168 = load i32, i32* %167, align 8
  %169 = icmp eq i32 %168, 1
  br i1 %169, label %170, label %173

170:                                              ; preds = %165
  %171 = load i32, i32* %20, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %189, label %173

173:                                              ; preds = %170, %165
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 8
  %177 = icmp eq i32 %176, 2
  br i1 %177, label %178, label %181

178:                                              ; preds = %173
  %179 = load i32, i32* %22, align 4
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %178, %173
  %182 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %183 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %182, i32 0, i32 1
  %184 = load i32, i32* %183, align 8
  %185 = icmp eq i32 %184, 3
  br i1 %185, label %186, label %193

186:                                              ; preds = %181
  %187 = load i32, i32* %21, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %193

189:                                              ; preds = %186, %178, %170
  %190 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %18, align 4
  br label %193

193:                                              ; preds = %189, %186, %181
  br label %194

194:                                              ; preds = %193, %162
  br label %195

195:                                              ; preds = %194, %150
  br label %196

196:                                              ; preds = %195, %138
  %197 = load i32, i32* %9, align 4
  store i32 %197, i32* %10, align 4
  br label %198

198:                                              ; preds = %352, %196
  %199 = load i32, i32* %10, align 4
  %200 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 2
  %202 = load i32, i32* %201, align 8
  %203 = icmp slt i32 %199, %202
  br i1 %203, label %204, label %355

204:                                              ; preds = %198
  %205 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %206 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %205, i32 0, i32 3
  %207 = load %struct.TYPE_20__*, %struct.TYPE_20__** %206, align 8
  %208 = load i32, i32* %10, align 4
  %209 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %210 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = mul nsw i32 %208, %211
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %207, i64 %213
  store %struct.TYPE_20__* %214, %struct.TYPE_20__** %30, align 8
  store i32 0, i32* %29, align 4
  br label %215

215:                                              ; preds = %232, %204
  %216 = load i32, i32* %29, align 4
  %217 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 8
  %220 = icmp slt i32 %216, %219
  br i1 %220, label %221, label %235

221:                                              ; preds = %215
  %222 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %223 = load i32, i32* %29, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %222, i64 %224
  %226 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = load i64, i64* @VBI_TRANSPARENT_SPACE, align 8
  %229 = icmp ne i64 %227, %228
  br i1 %229, label %230, label %231

230:                                              ; preds = %221
  br label %235

231:                                              ; preds = %221
  br label %232

232:                                              ; preds = %231
  %233 = load i32, i32* %29, align 4
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* %29, align 4
  br label %215

235:                                              ; preds = %230, %215
  %236 = load i32, i32* %29, align 4
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = icmp eq i32 %236, %239
  %241 = zext i1 %240 to i32
  store i32 %241, i32* %31, align 4
  %242 = load i32, i32* %31, align 4
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  br label %249

245:                                              ; preds = %235
  %246 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %247 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  br label %249

249:                                              ; preds = %245, %244
  %250 = phi i32 [ 0, %244 ], [ %248, %245 ]
  store i32 %250, i32* %13, align 4
  %251 = load i32, i32* %31, align 4
  %252 = icmp ne i32 %251, 0
  br i1 %252, label %253, label %257

253:                                              ; preds = %249
  %254 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %255 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 8
  br label %258

257:                                              ; preds = %249
  br label %258

258:                                              ; preds = %257, %253
  %259 = phi i32 [ %256, %253 ], [ 0, %257 ]
  store i32 %259, i32* %12, align 4
  store i32 %259, i32* %11, align 4
  %260 = load i32, i32* %23, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %331

262:                                              ; preds = %258
  %263 = load i32, i32* %31, align 4
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %269, label %265

265:                                              ; preds = %262
  %266 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %267 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %268 = call i32 @get_trim_info(%struct.TYPE_19__* %266, %struct.TYPE_20__* %267, i32* %11, i32* %12, i32* %13)
  br label %269

269:                                              ; preds = %265, %262
  %270 = load i32, i32* %19, align 4
  %271 = icmp eq i32 %270, -1
  br i1 %271, label %272, label %290

272:                                              ; preds = %269
  %273 = load i32, i32* %13, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %290

275:                                              ; preds = %272
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  %278 = call i32 @av_clip(i32 %277, i32 0, i32 23)
  %279 = sdiv i32 %278, 8
  %280 = sub nsw i32 2, %279
  store i32 %280, i32* %19, align 4
  %281 = load i32, i32* %18, align 4
  %282 = load i32, i32* %19, align 4
  %283 = mul nsw i32 %282, 3
  %284 = add nsw i32 %281, %283
  %285 = call i32 (%struct.TYPE_23__*, i8*, ...) @av_bprintf(%struct.TYPE_23__* %27, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %284)
  %286 = load i32, i32* %19, align 4
  %287 = icmp ne i32 %286, 2
  br i1 %287, label %288, label %289

288:                                              ; preds = %275
  store i32 0, i32* %24, align 4
  br label %289

289:                                              ; preds = %288, %275
  br label %290

290:                                              ; preds = %289, %272, %269
  %291 = load i32, i32* %13, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %308

293:                                              ; preds = %290
  %294 = load i32, i32* %24, align 4
  %295 = icmp sgt i32 %294, 1
  br i1 %295, label %296, label %308

296:                                              ; preds = %293
  %297 = load i32, i32* %24, align 4
  %298 = sdiv i32 %297, 2
  store i32 %298, i32* %24, align 4
  br label %299

299:                                              ; preds = %304, %296
  %300 = load i32, i32* %24, align 4
  %301 = icmp sgt i32 %300, 0
  br i1 %301, label %302, label %307

302:                                              ; preds = %299
  %303 = call i32 (%struct.TYPE_23__*, i8*, ...) @av_bprintf(%struct.TYPE_23__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %304

304:                                              ; preds = %302
  %305 = load i32, i32* %24, align 4
  %306 = add nsw i32 %305, -1
  store i32 %306, i32* %24, align 4
  br label %299

307:                                              ; preds = %299
  br label %308

308:                                              ; preds = %307, %293, %290
  %309 = load i32, i32* %18, align 4
  %310 = icmp eq i32 %309, 1
  br i1 %310, label %317, label %311

311:                                              ; preds = %308
  %312 = load i32, i32* %18, align 4
  %313 = icmp eq i32 %312, 2
  br i1 %313, label %314, label %319

314:                                              ; preds = %311
  %315 = load i32, i32* %22, align 4
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %314, %308
  %318 = load i32, i32* %17, align 4
  store i32 %318, i32* %11, align 4
  br label %319

319:                                              ; preds = %317, %314, %311
  %320 = load i32, i32* %18, align 4
  %321 = icmp eq i32 %320, 3
  br i1 %321, label %328, label %322

322:                                              ; preds = %319
  %323 = load i32, i32* %18, align 4
  %324 = icmp eq i32 %323, 2
  br i1 %324, label %325, label %330

325:                                              ; preds = %322
  %326 = load i32, i32* %22, align 4
  %327 = icmp ne i32 %326, 0
  br i1 %327, label %330, label %328

328:                                              ; preds = %325, %319
  %329 = load i32, i32* %16, align 4
  store i32 %329, i32* %12, align 4
  br label %330

330:                                              ; preds = %328, %325, %322
  br label %331

331:                                              ; preds = %330, %258
  %332 = load i32, i32* %13, align 4
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %337, label %334

334:                                              ; preds = %331
  %335 = load i32, i32* %23, align 4
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %348, label %337

337:                                              ; preds = %334, %331
  %338 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %339 = load %struct.TYPE_20__*, %struct.TYPE_20__** %30, align 8
  %340 = load i32, i32* %11, align 4
  %341 = load %struct.TYPE_19__*, %struct.TYPE_19__** %8, align 8
  %342 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = load i32, i32* %12, align 4
  %345 = sub nsw i32 %343, %344
  %346 = call i32 @decode_string(%struct.TYPE_19__* %338, %struct.TYPE_20__* %339, %struct.TYPE_23__* %27, i32 %340, i32 %345, i32* %25, i32* %26)
  %347 = call i32 (%struct.TYPE_23__*, i8*, ...) @av_bprintf(%struct.TYPE_23__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %24, align 4
  br label %351

348:                                              ; preds = %334
  %349 = load i32, i32* %24, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %24, align 4
  br label %351

351:                                              ; preds = %348, %337
  br label %352

352:                                              ; preds = %351
  %353 = load i32, i32* %10, align 4
  %354 = add nsw i32 %353, 1
  store i32 %354, i32* %10, align 4
  br label %198

355:                                              ; preds = %198
  %356 = load i32, i32* %19, align 4
  %357 = icmp eq i32 %356, 0
  br i1 %357, label %358, label %371

358:                                              ; preds = %355
  %359 = load i32, i32* %24, align 4
  %360 = sub nsw i32 %359, 1
  %361 = sdiv i32 %360, 2
  store i32 %361, i32* %24, align 4
  br label %362

362:                                              ; preds = %367, %358
  %363 = load i32, i32* %24, align 4
  %364 = icmp sgt i32 %363, 0
  br i1 %364, label %365, label %370

365:                                              ; preds = %362
  %366 = call i32 (%struct.TYPE_23__*, i8*, ...) @av_bprintf(%struct.TYPE_23__* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  br label %367

367:                                              ; preds = %365
  %368 = load i32, i32* %24, align 4
  %369 = add nsw i32 %368, -1
  store i32 %369, i32* %24, align 4
  br label %362

370:                                              ; preds = %362
  br label %371

371:                                              ; preds = %370, %355
  %372 = call i32 @av_bprint_is_complete(%struct.TYPE_23__* %27)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %378, label %374

374:                                              ; preds = %371
  %375 = call i32 @av_bprint_finalize(%struct.TYPE_23__* %27, i32* null)
  %376 = load i32, i32* @ENOMEM, align 4
  %377 = call i32 @AVERROR(i32 %376)
  store i32 %377, i32* %5, align 4
  br label %420

378:                                              ; preds = %371
  %379 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 1
  %380 = load i64, i64* %379, align 8
  %381 = icmp ne i64 %380, 0
  br i1 %381, label %382, label %414

382:                                              ; preds = %378
  %383 = load i32, i32* @SUBTITLE_ASS, align 4
  %384 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %385 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %384, i32 0, i32 0
  store i32 %383, i32* %385, align 4
  %386 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %387 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %386, i32 0, i32 2
  %388 = load i32, i32* %387, align 4
  %389 = add nsw i32 %388, 1
  store i32 %389, i32* %387, align 4
  %390 = load i32, i32* %23, align 4
  %391 = icmp ne i32 %390, 0
  %392 = zext i1 %391 to i64
  %393 = select i1 %391, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0)
  %394 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %27, i32 0, i32 0
  %395 = load i32, i32* %394, align 8
  %396 = call i32 @ff_ass_get_dialog(i32 %388, i32 0, i8* %393, i32* null, i32 %395)
  %397 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %398 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %397, i32 0, i32 1
  store i32 %396, i32* %398, align 4
  %399 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %400 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %399, i32 0, i32 1
  %401 = load i32, i32* %400, align 4
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %407, label %403

403:                                              ; preds = %382
  %404 = call i32 @av_bprint_finalize(%struct.TYPE_23__* %27, i32* null)
  %405 = load i32, i32* @ENOMEM, align 4
  %406 = call i32 @AVERROR(i32 %405)
  store i32 %406, i32* %5, align 4
  br label %420

407:                                              ; preds = %382
  %408 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %409 = load i32, i32* @AV_LOG_DEBUG, align 4
  %410 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %411 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %410, i32 0, i32 1
  %412 = load i32, i32* %411, align 4
  %413 = call i32 @av_log(%struct.TYPE_21__* %408, i32 %409, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i64 0, i64 0), i32 %412)
  br label %418

414:                                              ; preds = %378
  %415 = load i32, i32* @SUBTITLE_NONE, align 4
  %416 = load %struct.TYPE_22__*, %struct.TYPE_22__** %7, align 8
  %417 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %416, i32 0, i32 0
  store i32 %415, i32* %417, align 4
  br label %418

418:                                              ; preds = %414, %407
  %419 = call i32 @av_bprint_finalize(%struct.TYPE_23__* %27, i32* null)
  store i32 0, i32* %5, align 4
  br label %420

420:                                              ; preds = %418, %403, %374
  %421 = load i32, i32* %5, align 4
  ret i32 %421
}

declare dso_local i32 @av_bprint_init(%struct.TYPE_23__*, i32, i32) #1

declare dso_local i32 @get_trim_info(%struct.TYPE_19__*, %struct.TYPE_20__*, i32*, i32*, i32*) #1

declare dso_local i32 @FFABS(i32) #1

declare dso_local i32 @FFMIN(i32, i32) #1

declare dso_local i32 @av_clip(i32, i32, i32) #1

declare dso_local i32 @av_bprintf(%struct.TYPE_23__*, i8*, ...) #1

declare dso_local i32 @decode_string(%struct.TYPE_19__*, %struct.TYPE_20__*, %struct.TYPE_23__*, i32, i32, i32*, i32*) #1

declare dso_local i32 @av_bprint_is_complete(%struct.TYPE_23__*) #1

declare dso_local i32 @av_bprint_finalize(%struct.TYPE_23__*, i32*) #1

declare dso_local i32 @AVERROR(i32) #1

declare dso_local i32 @ff_ass_get_dialog(i32, i32, i8*, i32*, i32) #1

declare dso_local i32 @av_log(%struct.TYPE_21__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
