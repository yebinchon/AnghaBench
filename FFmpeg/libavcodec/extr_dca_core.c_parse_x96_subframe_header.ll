; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_subframe_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_x96_subframe_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32*, i32*, i32, i32**, i32*, i32***, i32*, i32*, i32**, i32, i64, i32, i8***, i64** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@ff_dca_vlc_quant_index = common dso_local global i32* null, align 8
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Invalid X96 bit allocation index\0A\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Invalid X96 joint scale factor code book\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32)* @parse_x96_subframe_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_x96_subframe_header(%struct.TYPE_5__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_5__*, align 8
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
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 11
  %17 = call i64 @get_bits_left(i32* %16)
  %18 = icmp slt i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %20, i32* %3, align 4
  br label %406

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %61, %21
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %64

29:                                               ; preds = %23
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %57, %29
  %34 = load i32, i32* %7, align 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 2
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = icmp slt i32 %34, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %33
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 11
  %46 = call i64 @get_bits1(i32* %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 15
  %49 = load i64**, i64*** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64*, i64** %49, i64 %51
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  store i64 %46, i64* %56, align 8
  br label %57

57:                                               ; preds = %43
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %33

60:                                               ; preds = %33
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %6, align 4
  br label %23

64:                                               ; preds = %23
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %118, %64
  %67 = load i32, i32* %6, align 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = icmp slt i32 %67, %70
  br i1 %71, label %72, label %121

72:                                               ; preds = %66
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  store i32 %75, i32* %7, align 4
  br label %76

76:                                               ; preds = %114, %72
  %77 = load i32, i32* %7, align 4
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp slt i32 %77, %84
  br i1 %85, label %86, label %117

86:                                               ; preds = %76
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 15
  %89 = load i64**, i64*** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64*, i64** %89, i64 %91
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  %97 = load i64, i64* %96, align 8
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %113

99:                                               ; preds = %86
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 11
  %102 = call i8* @get_bits(i32* %101, i32 12)
  %103 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 14
  %105 = load i8***, i8**** %104, align 8
  %106 = load i32, i32* %6, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i8**, i8*** %105, i64 %107
  %109 = load i8**, i8*** %108, align 8
  %110 = load i32, i32* %7, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds i8*, i8** %109, i64 %111
  store i8* %102, i8** %112, align 8
  br label %113

113:                                              ; preds = %99, %86
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %7, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %7, align 4
  br label %76

117:                                              ; preds = %76
  br label %118

118:                                              ; preds = %117
  %119 = load i32, i32* %6, align 4
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %6, align 4
  br label %66

121:                                              ; preds = %66
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %6, align 4
  br label %123

123:                                              ; preds = %213, %121
  %124 = load i32, i32* %6, align 4
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = icmp slt i32 %124, %127
  br i1 %128, label %129, label %216

129:                                              ; preds = %123
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, i32* %132, i64 %134
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %7, align 4
  br label %140

140:                                              ; preds = %209, %129
  %141 = load i32, i32* %7, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 2
  %144 = load i32*, i32** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i32, i32* %144, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = icmp slt i32 %141, %148
  br i1 %149, label %150, label %212

150:                                              ; preds = %140
  %151 = load i32, i32* %9, align 4
  %152 = icmp slt i32 %151, 7
  br i1 %152, label %153, label %170

153:                                              ; preds = %150
  %154 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %154, i32 0, i32 11
  %156 = load i32*, i32** @ff_dca_vlc_quant_index, align 8
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = load i32, i32* %158, align 8
  %160 = mul nsw i32 2, %159
  %161 = add nsw i32 5, %160
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %156, i64 %162
  %164 = load i32, i32* %9, align 4
  %165 = call i64 @dca_get_vlc(i32* %155, i32* %163, i32 %164)
  %166 = load i32, i32* %10, align 4
  %167 = sext i32 %166 to i64
  %168 = add nsw i64 %167, %165
  %169 = trunc i64 %168 to i32
  store i32 %169, i32* %10, align 4
  br label %179

170:                                              ; preds = %150
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 11
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 4
  %175 = load i32, i32* %174, align 8
  %176 = add nsw i32 3, %175
  %177 = call i8* @get_bits(i32* %172, i32 %176)
  %178 = ptrtoint i8* %177 to i32
  store i32 %178, i32* %10, align 4
  br label %179

179:                                              ; preds = %170, %153
  %180 = load i32, i32* %10, align 4
  %181 = icmp slt i32 %180, 0
  br i1 %181, label %190, label %182

182:                                              ; preds = %179
  %183 = load i32, i32* %10, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = mul nsw i32 8, %186
  %188 = add nsw i32 7, %187
  %189 = icmp sgt i32 %183, %188
  br i1 %189, label %190, label %197

190:                                              ; preds = %182, %179
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 13
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* @AV_LOG_ERROR, align 4
  %195 = call i32 @av_log(i32 %193, i32 %194, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %196 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %196, i32* %3, align 4
  br label %406

197:                                              ; preds = %182
  %198 = load i32, i32* %10, align 4
  %199 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %200 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %199, i32 0, i32 5
  %201 = load i32**, i32*** %200, align 8
  %202 = load i32, i32* %6, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds i32*, i32** %201, i64 %203
  %205 = load i32*, i32** %204, align 8
  %206 = load i32, i32* %7, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds i32, i32* %205, i64 %207
  store i32 %198, i32* %208, align 4
  br label %209

209:                                              ; preds = %197
  %210 = load i32, i32* %7, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %7, align 4
  br label %140

212:                                              ; preds = %140
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %6, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %6, align 4
  br label %123

216:                                              ; preds = %123
  %217 = load i32, i32* %5, align 4
  store i32 %217, i32* %6, align 4
  br label %218

218:                                              ; preds = %274, %216
  %219 = load i32, i32* %6, align 4
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 8
  %223 = icmp slt i32 %219, %222
  br i1 %223, label %224, label %277

224:                                              ; preds = %218
  %225 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %225, i32 0, i32 6
  %227 = load i32*, i32** %226, align 8
  %228 = load i32, i32* %6, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds i32, i32* %227, i64 %229
  %231 = load i32, i32* %230, align 4
  store i32 %231, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %270, %224
  %236 = load i32, i32* %7, align 4
  %237 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %238 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %237, i32 0, i32 2
  %239 = load i32*, i32** %238, align 8
  %240 = load i32, i32* %6, align 4
  %241 = sext i32 %240 to i64
  %242 = getelementptr inbounds i32, i32* %239, i64 %241
  %243 = load i32, i32* %242, align 4
  %244 = icmp slt i32 %236, %243
  br i1 %244, label %245, label %273

245:                                              ; preds = %235
  %246 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %247 = load i32, i32* %11, align 4
  %248 = call i32 @parse_scale(%struct.TYPE_5__* %246, i32* %12, i32 %247)
  store i32 %248, i32* %8, align 4
  %249 = icmp slt i32 %248, 0
  br i1 %249, label %250, label %252

250:                                              ; preds = %245
  %251 = load i32, i32* %8, align 4
  store i32 %251, i32* %3, align 4
  br label %406

252:                                              ; preds = %245
  %253 = load i32, i32* %8, align 4
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 7
  %256 = load i32***, i32**** %255, align 8
  %257 = load i32, i32* %6, align 4
  %258 = sext i32 %257 to i64
  %259 = getelementptr inbounds i32**, i32*** %256, i64 %258
  %260 = load i32**, i32*** %259, align 8
  %261 = load i32, i32* %7, align 4
  %262 = ashr i32 %261, 1
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %260, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %7, align 4
  %267 = and i32 %266, 1
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  store i32 %253, i32* %269, align 4
  br label %270

270:                                              ; preds = %252
  %271 = load i32, i32* %7, align 4
  %272 = add nsw i32 %271, 1
  store i32 %272, i32* %7, align 4
  br label %235

273:                                              ; preds = %235
  br label %274

274:                                              ; preds = %273
  %275 = load i32, i32* %6, align 4
  %276 = add nsw i32 %275, 1
  store i32 %276, i32* %6, align 4
  br label %218

277:                                              ; preds = %218
  %278 = load i32, i32* %5, align 4
  store i32 %278, i32* %6, align 4
  br label %279

279:                                              ; preds = %322, %277
  %280 = load i32, i32* %6, align 4
  %281 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %282 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = icmp slt i32 %280, %283
  br i1 %284, label %285, label %325

285:                                              ; preds = %279
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 8
  %288 = load i32*, i32** %287, align 8
  %289 = load i32, i32* %6, align 4
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds i32, i32* %288, i64 %290
  %292 = load i32, i32* %291, align 4
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %294, label %321

294:                                              ; preds = %285
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %296 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %295, i32 0, i32 11
  %297 = call i8* @get_bits(i32* %296, i32 3)
  %298 = ptrtoint i8* %297 to i32
  %299 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %299, i32 0, i32 9
  %301 = load i32*, i32** %300, align 8
  %302 = load i32, i32* %6, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %301, i64 %303
  store i32 %298, i32* %304, align 4
  %305 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %305, i32 0, i32 9
  %307 = load i32*, i32** %306, align 8
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds i32, i32* %307, i64 %309
  %311 = load i32, i32* %310, align 4
  %312 = icmp eq i32 %311, 7
  br i1 %312, label %313, label %320

313:                                              ; preds = %294
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 13
  %316 = load i32, i32* %315, align 8
  %317 = load i32, i32* @AV_LOG_ERROR, align 4
  %318 = call i32 @av_log(i32 %316, i32 %317, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %319 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %319, i32* %3, align 4
  br label %406

320:                                              ; preds = %294
  br label %321

321:                                              ; preds = %320, %285
  br label %322

322:                                              ; preds = %321
  %323 = load i32, i32* %6, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* %6, align 4
  br label %279

325:                                              ; preds = %279
  %326 = load i32, i32* %5, align 4
  store i32 %326, i32* %6, align 4
  br label %327

327:                                              ; preds = %393, %325
  %328 = load i32, i32* %6, align 4
  %329 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %329, i32 0, i32 0
  %331 = load i32, i32* %330, align 8
  %332 = icmp slt i32 %328, %331
  br i1 %332, label %333, label %396

333:                                              ; preds = %327
  %334 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %335 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %334, i32 0, i32 8
  %336 = load i32*, i32** %335, align 8
  %337 = load i32, i32* %6, align 4
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds i32, i32* %336, i64 %338
  %340 = load i32, i32* %339, align 4
  %341 = sub nsw i32 %340, 1
  store i32 %341, i32* %13, align 4
  %342 = load i32, i32* %13, align 4
  %343 = icmp sge i32 %342, 0
  br i1 %343, label %344, label %392

344:                                              ; preds = %333
  %345 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %346 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %345, i32 0, i32 9
  %347 = load i32*, i32** %346, align 8
  %348 = load i32, i32* %6, align 4
  %349 = sext i32 %348 to i64
  %350 = getelementptr inbounds i32, i32* %347, i64 %349
  %351 = load i32, i32* %350, align 4
  store i32 %351, i32* %14, align 4
  %352 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %353 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %352, i32 0, i32 2
  %354 = load i32*, i32** %353, align 8
  %355 = load i32, i32* %6, align 4
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds i32, i32* %354, i64 %356
  %358 = load i32, i32* %357, align 4
  store i32 %358, i32* %7, align 4
  br label %359

359:                                              ; preds = %388, %344
  %360 = load i32, i32* %7, align 4
  %361 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %362 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %361, i32 0, i32 2
  %363 = load i32*, i32** %362, align 8
  %364 = load i32, i32* %13, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds i32, i32* %363, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = icmp slt i32 %360, %367
  br i1 %368, label %369, label %391

369:                                              ; preds = %359
  %370 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %371 = load i32, i32* %14, align 4
  %372 = call i32 @parse_joint_scale(%struct.TYPE_5__* %370, i32 %371)
  store i32 %372, i32* %8, align 4
  %373 = icmp slt i32 %372, 0
  br i1 %373, label %374, label %376

374:                                              ; preds = %369
  %375 = load i32, i32* %8, align 4
  store i32 %375, i32* %3, align 4
  br label %406

376:                                              ; preds = %369
  %377 = load i32, i32* %8, align 4
  %378 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %379 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %378, i32 0, i32 10
  %380 = load i32**, i32*** %379, align 8
  %381 = load i32, i32* %6, align 4
  %382 = sext i32 %381 to i64
  %383 = getelementptr inbounds i32*, i32** %380, i64 %382
  %384 = load i32*, i32** %383, align 8
  %385 = load i32, i32* %7, align 4
  %386 = sext i32 %385 to i64
  %387 = getelementptr inbounds i32, i32* %384, i64 %386
  store i32 %377, i32* %387, align 4
  br label %388

388:                                              ; preds = %376
  %389 = load i32, i32* %7, align 4
  %390 = add nsw i32 %389, 1
  store i32 %390, i32* %7, align 4
  br label %359

391:                                              ; preds = %359
  br label %392

392:                                              ; preds = %391, %333
  br label %393

393:                                              ; preds = %392
  %394 = load i32, i32* %6, align 4
  %395 = add nsw i32 %394, 1
  store i32 %395, i32* %6, align 4
  br label %327

396:                                              ; preds = %327
  %397 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 12
  %399 = load i64, i64* %398, align 8
  %400 = icmp ne i64 %399, 0
  br i1 %400, label %401, label %405

401:                                              ; preds = %396
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %403 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i32 0, i32 11
  %404 = call i32 @skip_bits(i32* %403, i32 16)
  br label %405

405:                                              ; preds = %401, %396
  store i32 0, i32* %3, align 4
  br label %406

406:                                              ; preds = %405, %374, %313, %250, %190, %19
  %407 = load i32, i32* %3, align 4
  ret i32 %407
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i64 @dca_get_vlc(i32*, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @parse_scale(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @parse_joint_scale(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
