; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_mapping.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacsbr_template.c_sbr_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, i32, i32*, i32**, i32**, i32** }
%struct.TYPE_9__ = type { i32**, i32, i64*, i32, i64*, i64*, i32*, i64, i32**, i32** }

@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [76 x i8] c"kx != f_table{high,low}[0]. Derived frequency tables were not regenerated.\0A\00", align 1
@AVERROR_BUG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_8__*, %struct.TYPE_9__*, i32*)* @sbr_mapping to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbr_mapping(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1, %struct.TYPE_9__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %7, align 8
  store %struct.TYPE_9__* %2, %struct.TYPE_9__** %8, align 8
  store i32* %3, i32** %9, align 8
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = load i32**, i32*** %19, align 8
  %21 = getelementptr inbounds i32*, i32** %20, i64 1
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @memset(i32* %22, i32 0, i32 56)
  store i32 0, i32* %10, align 4
  br label %24

24:                                               ; preds = %393, %4
  %25 = load i32, i32* %10, align 4
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %396

30:                                               ; preds = %24
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 2
  %36 = load i64*, i64** %35, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i64, i64* %36, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %33, i64 %41
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %13, align 4
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 2
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = add nsw i32 %47, 1
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %46, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %30
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  br label %61

57:                                               ; preds = %30
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi i32* [ %56, %53 ], [ %60, %57 ]
  store i32* %62, i32** %14, align 8
  %63 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %64 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %63, i32 0, i32 3
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %67, %70
  br i1 %71, label %72, label %81

72:                                               ; preds = %61
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @AV_LOG_ERROR, align 4
  %77 = call i32 @av_log(i32 %75, i32 %76, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %78 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %79 = call i32 @sbr_turnoff(%struct.TYPE_8__* %78)
  %80 = load i32, i32* @AVERROR_BUG, align 4
  store i32 %80, i32* %5, align 4
  br label %412

81:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %82

82:                                               ; preds = %134, %81
  %83 = load i32, i32* %11, align 4
  %84 = load i32, i32* %13, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %137

86:                                               ; preds = %82
  %87 = load i32*, i32** %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  store i32 %91, i32* %12, align 4
  br label %92

92:                                               ; preds = %130, %86
  %93 = load i32, i32* %12, align 4
  %94 = load i32*, i32** %14, align 8
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %93, %99
  br i1 %100, label %101, label %133

101:                                              ; preds = %92
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 9
  %104 = load i32**, i32*** %103, align 8
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32*, i32** %104, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i32, i32* %109, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 8
  %116 = load i32**, i32*** %115, align 8
  %117 = load i32, i32* %10, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32*, i32** %116, i64 %118
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %12, align 4
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 3
  %124 = load i32*, i32** %123, align 8
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  %126 = load i32, i32* %125, align 4
  %127 = sub nsw i32 %121, %126
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %120, i64 %128
  store i32 %113, i32* %129, align 4
  br label %130

130:                                              ; preds = %101
  %131 = load i32, i32* %12, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %12, align 4
  br label %92

133:                                              ; preds = %92
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %11, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %11, align 4
  br label %82

137:                                              ; preds = %82
  %138 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = icmp sgt i32 %140, 1
  br i1 %141, label %142, label %156

142:                                              ; preds = %137
  %143 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %143, i32 0, i32 4
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %10, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  %149 = load i64, i64* %148, align 8
  %150 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %151 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %150, i32 0, i32 5
  %152 = load i64*, i64** %151, align 8
  %153 = getelementptr inbounds i64, i64* %152, i64 1
  %154 = load i64, i64* %153, align 8
  %155 = icmp sge i64 %149, %154
  br label %156

156:                                              ; preds = %142, %137
  %157 = phi i1 [ false, %137 ], [ %155, %142 ]
  %158 = zext i1 %157 to i32
  store i32 %158, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %159

159:                                              ; preds = %217, %156
  %160 = load i32, i32* %11, align 4
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 4
  %163 = load i32, i32* %162, align 8
  %164 = icmp slt i32 %160, %163
  br i1 %164, label %165, label %220

165:                                              ; preds = %159
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %167 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %166, i32 0, i32 5
  %168 = load i32*, i32** %167, align 8
  %169 = load i32, i32* %11, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i32, i32* %168, i64 %170
  %172 = load i32, i32* %171, align 4
  store i32 %172, i32* %12, align 4
  br label %173

173:                                              ; preds = %213, %165
  %174 = load i32, i32* %12, align 4
  %175 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %176 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %175, i32 0, i32 5
  %177 = load i32*, i32** %176, align 8
  %178 = load i32, i32* %11, align 4
  %179 = add nsw i32 %178, 1
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds i32, i32* %177, i64 %180
  %182 = load i32, i32* %181, align 4
  %183 = icmp slt i32 %174, %182
  br i1 %183, label %184, label %216

184:                                              ; preds = %173
  %185 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %186 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %185, i32 0, i32 8
  %187 = load i32**, i32*** %186, align 8
  %188 = load i32, i32* %15, align 4
  %189 = add nsw i32 %188, 1
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds i32*, i32** %187, i64 %190
  %192 = load i32*, i32** %191, align 8
  %193 = load i32, i32* %11, align 4
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %192, i64 %194
  %196 = load i32, i32* %195, align 4
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 7
  %199 = load i32**, i32*** %198, align 8
  %200 = load i32, i32* %10, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32*, i32** %199, i64 %201
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %12, align 4
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 3
  %207 = load i32*, i32** %206, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 1
  %209 = load i32, i32* %208, align 4
  %210 = sub nsw i32 %204, %209
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds i32, i32* %203, i64 %211
  store i32 %196, i32* %212, align 4
  br label %213

213:                                              ; preds = %184
  %214 = load i32, i32* %12, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %12, align 4
  br label %173

216:                                              ; preds = %173
  br label %217

217:                                              ; preds = %216
  %218 = load i32, i32* %11, align 4
  %219 = add nsw i32 %218, 1
  store i32 %219, i32* %11, align 4
  br label %159

220:                                              ; preds = %159
  store i32 0, i32* %11, align 4
  br label %221

221:                                              ; preds = %303, %220
  %222 = load i32, i32* %11, align 4
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 1
  %227 = load i32, i32* %226, align 4
  %228 = icmp ult i32 %222, %227
  br i1 %228, label %229, label %306

229:                                              ; preds = %221
  %230 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %231 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %230, i32 0, i32 7
  %232 = load i64, i64* %231, align 8
  %233 = icmp ne i64 %232, 0
  br i1 %233, label %234, label %302

234:                                              ; preds = %229
  %235 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %236 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %235, i32 0, i32 1
  %237 = load i32*, i32** %236, align 8
  %238 = load i32, i32* %11, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, i32* %237, i64 %239
  %241 = load i32, i32* %240, align 4
  %242 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %243 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %242, i32 0, i32 1
  %244 = load i32*, i32** %243, align 8
  %245 = load i32, i32* %11, align 4
  %246 = add nsw i32 %245, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds i32, i32* %244, i64 %247
  %249 = load i32, i32* %248, align 4
  %250 = add nsw i32 %241, %249
  %251 = ashr i32 %250, 1
  store i32 %251, i32* %16, align 4
  %252 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %252, i32 0, i32 6
  %254 = load i32*, i32** %253, align 8
  %255 = load i32, i32* %11, align 4
  %256 = sext i32 %255 to i64
  %257 = getelementptr inbounds i32, i32* %254, i64 %256
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %10, align 4
  %260 = load i32*, i32** %9, align 8
  %261 = getelementptr inbounds i32, i32* %260, i64 1
  %262 = load i32, i32* %261, align 4
  %263 = icmp sge i32 %259, %262
  br i1 %263, label %281, label %264

264:                                              ; preds = %234
  %265 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %265, i32 0, i32 0
  %267 = load i32**, i32*** %266, align 8
  %268 = getelementptr inbounds i32*, i32** %267, i64 0
  %269 = load i32*, i32** %268, align 8
  %270 = load i32, i32* %16, align 4
  %271 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %272 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %271, i32 0, i32 3
  %273 = load i32*, i32** %272, align 8
  %274 = getelementptr inbounds i32, i32* %273, i64 1
  %275 = load i32, i32* %274, align 4
  %276 = sub i32 %270, %275
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %269, i64 %277
  %279 = load i32, i32* %278, align 4
  %280 = icmp eq i32 %279, 1
  br label %281

281:                                              ; preds = %264, %234
  %282 = phi i1 [ true, %234 ], [ %280, %264 ]
  %283 = zext i1 %282 to i32
  %284 = mul nsw i32 %258, %283
  %285 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %286 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %285, i32 0, i32 0
  %287 = load i32**, i32*** %286, align 8
  %288 = load i32, i32* %10, align 4
  %289 = add nsw i32 %288, 1
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32*, i32** %287, i64 %290
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %16, align 4
  %294 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %295 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %294, i32 0, i32 3
  %296 = load i32*, i32** %295, align 8
  %297 = getelementptr inbounds i32, i32* %296, i64 1
  %298 = load i32, i32* %297, align 4
  %299 = sub i32 %293, %298
  %300 = zext i32 %299 to i64
  %301 = getelementptr inbounds i32, i32* %292, i64 %300
  store i32 %284, i32* %301, align 4
  br label %302

302:                                              ; preds = %281, %229
  br label %303

303:                                              ; preds = %302
  %304 = load i32, i32* %11, align 4
  %305 = add nsw i32 %304, 1
  store i32 %305, i32* %11, align 4
  br label %221

306:                                              ; preds = %221
  store i32 0, i32* %11, align 4
  br label %307

307:                                              ; preds = %389, %306
  %308 = load i32, i32* %11, align 4
  %309 = load i32, i32* %13, align 4
  %310 = icmp ult i32 %308, %309
  br i1 %310, label %311, label %392

311:                                              ; preds = %307
  store i32 0, i32* %17, align 4
  %312 = load i32*, i32** %14, align 8
  %313 = load i32, i32* %11, align 4
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds i32, i32* %312, i64 %314
  %316 = load i32, i32* %315, align 4
  store i32 %316, i32* %12, align 4
  br label %317

317:                                              ; preds = %348, %311
  %318 = load i32, i32* %12, align 4
  %319 = load i32*, i32** %14, align 8
  %320 = load i32, i32* %11, align 4
  %321 = add nsw i32 %320, 1
  %322 = sext i32 %321 to i64
  %323 = getelementptr inbounds i32, i32* %319, i64 %322
  %324 = load i32, i32* %323, align 4
  %325 = icmp slt i32 %318, %324
  br i1 %325, label %326, label %351

326:                                              ; preds = %317
  %327 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %328 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %327, i32 0, i32 0
  %329 = load i32**, i32*** %328, align 8
  %330 = load i32, i32* %10, align 4
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds i32*, i32** %329, i64 %332
  %334 = load i32*, i32** %333, align 8
  %335 = load i32, i32* %12, align 4
  %336 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %337 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %336, i32 0, i32 3
  %338 = load i32*, i32** %337, align 8
  %339 = getelementptr inbounds i32, i32* %338, i64 1
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %335, %340
  %342 = sext i32 %341 to i64
  %343 = getelementptr inbounds i32, i32* %334, i64 %342
  %344 = load i32, i32* %343, align 4
  %345 = icmp ne i32 %344, 0
  br i1 %345, label %346, label %347

346:                                              ; preds = %326
  store i32 1, i32* %17, align 4
  br label %351

347:                                              ; preds = %326
  br label %348

348:                                              ; preds = %347
  %349 = load i32, i32* %12, align 4
  %350 = add nsw i32 %349, 1
  store i32 %350, i32* %12, align 4
  br label %317

351:                                              ; preds = %346, %317
  %352 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %352, i32 0, i32 6
  %354 = load i32**, i32*** %353, align 8
  %355 = load i32, i32* %10, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32*, i32** %354, i64 %356
  %358 = load i32*, i32** %357, align 8
  %359 = load i32*, i32** %14, align 8
  %360 = load i32, i32* %11, align 4
  %361 = sext i32 %360 to i64
  %362 = getelementptr inbounds i32, i32* %359, i64 %361
  %363 = load i32, i32* %362, align 4
  %364 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %365 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %364, i32 0, i32 3
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 1
  %368 = load i32, i32* %367, align 4
  %369 = sub nsw i32 %363, %368
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds i32, i32* %358, i64 %370
  %372 = load i32, i32* %17, align 4
  %373 = load i32*, i32** %14, align 8
  %374 = load i32, i32* %11, align 4
  %375 = add nsw i32 %374, 1
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %373, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32*, i32** %14, align 8
  %380 = load i32, i32* %11, align 4
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds i32, i32* %379, i64 %381
  %383 = load i32, i32* %382, align 4
  %384 = sub nsw i32 %378, %383
  %385 = sext i32 %384 to i64
  %386 = mul i64 %385, 4
  %387 = trunc i64 %386 to i32
  %388 = call i32 @memset(i32* %371, i32 %372, i32 %387)
  br label %389

389:                                              ; preds = %351
  %390 = load i32, i32* %11, align 4
  %391 = add nsw i32 %390, 1
  store i32 %391, i32* %11, align 4
  br label %307

392:                                              ; preds = %307
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %10, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %10, align 4
  br label %24

396:                                              ; preds = %24
  %397 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %398 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %397, i32 0, i32 0
  %399 = load i32**, i32*** %398, align 8
  %400 = getelementptr inbounds i32*, i32** %399, i64 0
  %401 = load i32*, i32** %400, align 8
  %402 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %403 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %402, i32 0, i32 0
  %404 = load i32**, i32*** %403, align 8
  %405 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %406 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %405, i32 0, i32 1
  %407 = load i32, i32* %406, align 8
  %408 = sext i32 %407 to i64
  %409 = getelementptr inbounds i32*, i32** %404, i64 %408
  %410 = load i32*, i32** %409, align 8
  %411 = call i32 @memcpy(i32* %401, i32* %410, i32 8)
  store i32 0, i32* %5, align 4
  br label %412

412:                                              ; preds = %396, %72
  %413 = load i32, i32* %5, align 4
  ret i32 %413
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @sbr_turnoff(%struct.TYPE_8__*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
