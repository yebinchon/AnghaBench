; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_subframe_header.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_dca_core.c_parse_subframe_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32*, i32, i32*, i32*, i32*, i32**, i32*, i32*, i32***, i32*, i32*, i32**, i32, i64, i64, i32, i8****, i8***, i64** }

@AVERROR_INVALIDDATA = common dso_local global i32 0, align 4
@HEADER_CORE = common dso_local global i32 0, align 4
@ff_dca_vlc_bit_allocation = common dso_local global i32 0, align 4
@DCA_ABITS_MAX = common dso_local global i32 0, align 4
@AV_LOG_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Invalid bit allocation index\0A\00", align 1
@ff_dca_vlc_transition_mode = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"Invalid joint scale factor code book\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_5__*, i32, i32, i32)* @parse_subframe_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_subframe_header(%struct.TYPE_5__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
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
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 12
  %22 = call i64 @get_bits_left(i32* %21)
  %23 = icmp slt i64 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %25, i32* %5, align 4
  br label %602

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @HEADER_CORE, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 12
  %33 = call i8* @get_bits(i32* %32, i32 2)
  %34 = getelementptr i8, i8* %33, i64 1
  %35 = ptrtoint i8* %34 to i32
  %36 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %7, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  store i32 %35, i32* %41, align 4
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 12
  %44 = call i32 @skip_bits(i32* %43, i32 3)
  br label %45

45:                                               ; preds = %30, %26
  %46 = load i32, i32* %9, align 4
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %82, %45
  %48 = load i32, i32* %10, align 4
  %49 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %85

53:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %54

54:                                               ; preds = %78, %53
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = icmp slt i32 %55, %62
  br i1 %63, label %64, label %81

64:                                               ; preds = %54
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 12
  %67 = call i64 @get_bits1(i32* %66)
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 18
  %70 = load i64**, i64*** %69, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i64*, i64** %70, i64 %72
  %74 = load i64*, i64** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i64, i64* %74, i64 %76
  store i64 %67, i64* %77, align 8
  br label %78

78:                                               ; preds = %64
  %79 = load i32, i32* %11, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %11, align 4
  br label %54

81:                                               ; preds = %54
  br label %82

82:                                               ; preds = %81
  %83 = load i32, i32* %10, align 4
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %10, align 4
  br label %47

85:                                               ; preds = %47
  %86 = load i32, i32* %9, align 4
  store i32 %86, i32* %10, align 4
  br label %87

87:                                               ; preds = %136, %85
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %139

93:                                               ; preds = %87
  store i32 0, i32* %11, align 4
  br label %94

94:                                               ; preds = %132, %93
  %95 = load i32, i32* %11, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %10, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = icmp slt i32 %95, %102
  br i1 %103, label %104, label %135

104:                                              ; preds = %94
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 18
  %107 = load i64**, i64*** %106, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i64*, i64** %107, i64 %109
  %111 = load i64*, i64** %110, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %131

117:                                              ; preds = %104
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 12
  %120 = call i8* @get_bits(i32* %119, i32 12)
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i32 0, i32 17
  %123 = load i8***, i8**** %122, align 8
  %124 = load i32, i32* %10, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8**, i8*** %123, i64 %125
  %127 = load i8**, i8*** %126, align 8
  %128 = load i32, i32* %11, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i8*, i8** %127, i64 %129
  store i8* %120, i8** %130, align 8
  br label %131

131:                                              ; preds = %117, %104
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %11, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %11, align 4
  br label %94

135:                                              ; preds = %94
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %10, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %10, align 4
  br label %87

139:                                              ; preds = %87
  %140 = load i32, i32* %9, align 4
  store i32 %140, i32* %10, align 4
  br label %141

141:                                              ; preds = %208, %139
  %142 = load i32, i32* %10, align 4
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 8
  %146 = icmp slt i32 %142, %145
  br i1 %146, label %147, label %211

147:                                              ; preds = %141
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 3
  %150 = load i32*, i32** %149, align 8
  %151 = load i32, i32* %10, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds i32, i32* %150, i64 %152
  %154 = load i32, i32* %153, align 4
  store i32 %154, i32* %13, align 4
  store i32 0, i32* %11, align 4
  br label %155

155:                                              ; preds = %204, %147
  %156 = load i32, i32* %11, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 4
  %159 = load i32*, i32** %158, align 8
  %160 = load i32, i32* %10, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %159, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %156, %163
  br i1 %164, label %165, label %207

165:                                              ; preds = %155
  %166 = load i32, i32* %13, align 4
  %167 = icmp slt i32 %166, 5
  br i1 %167, label %168, label %174

168:                                              ; preds = %165
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %170 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i32 0, i32 12
  %171 = load i32, i32* %13, align 4
  %172 = call i8* @dca_get_vlc(i32* %170, i32* @ff_dca_vlc_bit_allocation, i32 %171)
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %14, align 4
  br label %181

174:                                              ; preds = %165
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 12
  %177 = load i32, i32* %13, align 4
  %178 = sub nsw i32 %177, 1
  %179 = call i8* @get_bits(i32* %176, i32 %178)
  %180 = ptrtoint i8* %179 to i32
  store i32 %180, i32* %14, align 4
  br label %181

181:                                              ; preds = %174, %168
  %182 = load i32, i32* %14, align 4
  %183 = load i32, i32* @DCA_ABITS_MAX, align 4
  %184 = icmp sgt i32 %182, %183
  br i1 %184, label %185, label %192

185:                                              ; preds = %181
  %186 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %186, i32 0, i32 15
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @AV_LOG_ERROR, align 4
  %190 = call i32 @av_log(i32 %188, i32 %189, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %191 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %191, i32* %5, align 4
  br label %602

192:                                              ; preds = %181
  %193 = load i32, i32* %14, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 5
  %196 = load i32**, i32*** %195, align 8
  %197 = load i32, i32* %10, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32*, i32** %196, i64 %198
  %200 = load i32*, i32** %199, align 8
  %201 = load i32, i32* %11, align 4
  %202 = sext i32 %201 to i64
  %203 = getelementptr inbounds i32, i32* %200, i64 %202
  store i32 %193, i32* %203, align 4
  br label %204

204:                                              ; preds = %192
  %205 = load i32, i32* %11, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %11, align 4
  br label %155

207:                                              ; preds = %155
  br label %208

208:                                              ; preds = %207
  %209 = load i32, i32* %10, align 4
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %10, align 4
  br label %141

211:                                              ; preds = %141
  %212 = load i32, i32* %9, align 4
  store i32 %212, i32* %10, align 4
  br label %213

213:                                              ; preds = %296, %211
  %214 = load i32, i32* %10, align 4
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 8
  %218 = icmp slt i32 %214, %217
  br i1 %218, label %219, label %299

219:                                              ; preds = %213
  %220 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %221 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %220, i32 0, i32 16
  %222 = load i8****, i8***** %221, align 8
  %223 = load i32, i32* %7, align 4
  %224 = sext i32 %223 to i64
  %225 = getelementptr inbounds i8***, i8**** %222, i64 %224
  %226 = load i8***, i8**** %225, align 8
  %227 = load i32, i32* %10, align 4
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i8**, i8*** %226, i64 %228
  %230 = load i8**, i8*** %229, align 8
  %231 = call i32 @memset(i8** %230, i32 0, i32 8)
  %232 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %233 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %232, i32 0, i32 0
  %234 = load i32*, i32** %233, align 8
  %235 = load i32, i32* %7, align 4
  %236 = sext i32 %235 to i64
  %237 = getelementptr inbounds i32, i32* %234, i64 %236
  %238 = load i32, i32* %237, align 4
  %239 = icmp sgt i32 %238, 1
  br i1 %239, label %240, label %295

240:                                              ; preds = %219
  %241 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %242 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %241, i32 0, i32 6
  %243 = load i32*, i32** %242, align 8
  %244 = load i32, i32* %10, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds i32, i32* %243, i64 %245
  %247 = load i32, i32* %246, align 4
  store i32 %247, i32* %15, align 4
  store i32 0, i32* %11, align 4
  br label %248

248:                                              ; preds = %291, %240
  %249 = load i32, i32* %11, align 4
  %250 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 4
  %252 = load i32*, i32** %251, align 8
  %253 = load i32, i32* %10, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds i32, i32* %252, i64 %254
  %256 = load i32, i32* %255, align 4
  %257 = icmp slt i32 %249, %256
  br i1 %257, label %258, label %294

258:                                              ; preds = %248
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 5
  %261 = load i32**, i32*** %260, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds i32*, i32** %261, i64 %263
  %265 = load i32*, i32** %264, align 8
  %266 = load i32, i32* %11, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = load i32, i32* %268, align 4
  %270 = icmp ne i32 %269, 0
  br i1 %270, label %271, label %290

271:                                              ; preds = %258
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 12
  %274 = load i32, i32* %15, align 4
  %275 = call i8* @dca_get_vlc(i32* %273, i32* @ff_dca_vlc_transition_mode, i32 %274)
  %276 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %277 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %276, i32 0, i32 16
  %278 = load i8****, i8***** %277, align 8
  %279 = load i32, i32* %7, align 4
  %280 = sext i32 %279 to i64
  %281 = getelementptr inbounds i8***, i8**** %278, i64 %280
  %282 = load i8***, i8**** %281, align 8
  %283 = load i32, i32* %10, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i8**, i8*** %282, i64 %284
  %286 = load i8**, i8*** %285, align 8
  %287 = load i32, i32* %11, align 4
  %288 = sext i32 %287 to i64
  %289 = getelementptr inbounds i8*, i8** %286, i64 %288
  store i8* %275, i8** %289, align 8
  br label %290

290:                                              ; preds = %271, %258
  br label %291

291:                                              ; preds = %290
  %292 = load i32, i32* %11, align 4
  %293 = add nsw i32 %292, 1
  store i32 %293, i32* %11, align 4
  br label %248

294:                                              ; preds = %248
  br label %295

295:                                              ; preds = %294, %219
  br label %296

296:                                              ; preds = %295
  %297 = load i32, i32* %10, align 4
  %298 = add nsw i32 %297, 1
  store i32 %298, i32* %10, align 4
  br label %213

299:                                              ; preds = %213
  %300 = load i32, i32* %9, align 4
  store i32 %300, i32* %10, align 4
  br label %301

301:                                              ; preds = %457, %299
  %302 = load i32, i32* %10, align 4
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %304 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i32 0, i32 1
  %305 = load i32, i32* %304, align 8
  %306 = icmp slt i32 %302, %305
  br i1 %306, label %307, label %460

307:                                              ; preds = %301
  %308 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %309 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %308, i32 0, i32 7
  %310 = load i32*, i32** %309, align 8
  %311 = load i32, i32* %10, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %310, i64 %312
  %314 = load i32, i32* %313, align 4
  store i32 %314, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %11, align 4
  br label %315

315:                                              ; preds = %411, %307
  %316 = load i32, i32* %11, align 4
  %317 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %318 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %317, i32 0, i32 4
  %319 = load i32*, i32** %318, align 8
  %320 = load i32, i32* %10, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %319, i64 %321
  %323 = load i32, i32* %322, align 4
  %324 = icmp slt i32 %316, %323
  br i1 %324, label %325, label %414

325:                                              ; preds = %315
  %326 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %327 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %326, i32 0, i32 5
  %328 = load i32**, i32*** %327, align 8
  %329 = load i32, i32* %10, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds i32*, i32** %328, i64 %330
  %332 = load i32*, i32** %331, align 8
  %333 = load i32, i32* %11, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds i32, i32* %332, i64 %334
  %336 = load i32, i32* %335, align 4
  %337 = icmp ne i32 %336, 0
  br i1 %337, label %338, label %397

338:                                              ; preds = %325
  %339 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %340 = load i32, i32* %16, align 4
  %341 = call i32 @parse_scale(%struct.TYPE_5__* %339, i32* %17, i32 %340)
  store i32 %341, i32* %12, align 4
  %342 = icmp slt i32 %341, 0
  br i1 %342, label %343, label %345

343:                                              ; preds = %338
  %344 = load i32, i32* %12, align 4
  store i32 %344, i32* %5, align 4
  br label %602

345:                                              ; preds = %338
  %346 = load i32, i32* %12, align 4
  %347 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %348 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %347, i32 0, i32 8
  %349 = load i32***, i32**** %348, align 8
  %350 = load i32, i32* %10, align 4
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds i32**, i32*** %349, i64 %351
  %353 = load i32**, i32*** %352, align 8
  %354 = load i32, i32* %11, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i32*, i32** %353, i64 %355
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 0
  store i32 %346, i32* %358, align 4
  %359 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 16
  %361 = load i8****, i8***** %360, align 8
  %362 = load i32, i32* %7, align 4
  %363 = sext i32 %362 to i64
  %364 = getelementptr inbounds i8***, i8**** %361, i64 %363
  %365 = load i8***, i8**** %364, align 8
  %366 = load i32, i32* %10, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds i8**, i8*** %365, i64 %367
  %369 = load i8**, i8*** %368, align 8
  %370 = load i32, i32* %11, align 4
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds i8*, i8** %369, i64 %371
  %373 = load i8*, i8** %372, align 8
  %374 = icmp ne i8* %373, null
  br i1 %374, label %375, label %396

375:                                              ; preds = %345
  %376 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %377 = load i32, i32* %16, align 4
  %378 = call i32 @parse_scale(%struct.TYPE_5__* %376, i32* %17, i32 %377)
  store i32 %378, i32* %12, align 4
  %379 = icmp slt i32 %378, 0
  br i1 %379, label %380, label %382

380:                                              ; preds = %375
  %381 = load i32, i32* %12, align 4
  store i32 %381, i32* %5, align 4
  br label %602

382:                                              ; preds = %375
  %383 = load i32, i32* %12, align 4
  %384 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %385 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %384, i32 0, i32 8
  %386 = load i32***, i32**** %385, align 8
  %387 = load i32, i32* %10, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds i32**, i32*** %386, i64 %388
  %390 = load i32**, i32*** %389, align 8
  %391 = load i32, i32* %11, align 4
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds i32*, i32** %390, i64 %392
  %394 = load i32*, i32** %393, align 8
  %395 = getelementptr inbounds i32, i32* %394, i64 1
  store i32 %383, i32* %395, align 4
  br label %396

396:                                              ; preds = %382, %345
  br label %410

397:                                              ; preds = %325
  %398 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %398, i32 0, i32 8
  %400 = load i32***, i32**** %399, align 8
  %401 = load i32, i32* %10, align 4
  %402 = sext i32 %401 to i64
  %403 = getelementptr inbounds i32**, i32*** %400, i64 %402
  %404 = load i32**, i32*** %403, align 8
  %405 = load i32, i32* %11, align 4
  %406 = sext i32 %405 to i64
  %407 = getelementptr inbounds i32*, i32** %404, i64 %406
  %408 = load i32*, i32** %407, align 8
  %409 = getelementptr inbounds i32, i32* %408, i64 0
  store i32 0, i32* %409, align 4
  br label %410

410:                                              ; preds = %397, %396
  br label %411

411:                                              ; preds = %410
  %412 = load i32, i32* %11, align 4
  %413 = add nsw i32 %412, 1
  store i32 %413, i32* %11, align 4
  br label %315

414:                                              ; preds = %315
  %415 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %416 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %415, i32 0, i32 4
  %417 = load i32*, i32** %416, align 8
  %418 = load i32, i32* %10, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds i32, i32* %417, i64 %419
  %421 = load i32, i32* %420, align 4
  store i32 %421, i32* %11, align 4
  br label %422

422:                                              ; preds = %453, %414
  %423 = load i32, i32* %11, align 4
  %424 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %425 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %424, i32 0, i32 2
  %426 = load i32*, i32** %425, align 8
  %427 = load i32, i32* %10, align 4
  %428 = sext i32 %427 to i64
  %429 = getelementptr inbounds i32, i32* %426, i64 %428
  %430 = load i32, i32* %429, align 4
  %431 = icmp slt i32 %423, %430
  br i1 %431, label %432, label %456

432:                                              ; preds = %422
  %433 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %434 = load i32, i32* %16, align 4
  %435 = call i32 @parse_scale(%struct.TYPE_5__* %433, i32* %17, i32 %434)
  store i32 %435, i32* %12, align 4
  %436 = icmp slt i32 %435, 0
  br i1 %436, label %437, label %439

437:                                              ; preds = %432
  %438 = load i32, i32* %12, align 4
  store i32 %438, i32* %5, align 4
  br label %602

439:                                              ; preds = %432
  %440 = load i32, i32* %12, align 4
  %441 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %441, i32 0, i32 8
  %443 = load i32***, i32**** %442, align 8
  %444 = load i32, i32* %10, align 4
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds i32**, i32*** %443, i64 %445
  %447 = load i32**, i32*** %446, align 8
  %448 = load i32, i32* %11, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds i32*, i32** %447, i64 %449
  %451 = load i32*, i32** %450, align 8
  %452 = getelementptr inbounds i32, i32* %451, i64 0
  store i32 %440, i32* %452, align 4
  br label %453

453:                                              ; preds = %439
  %454 = load i32, i32* %11, align 4
  %455 = add nsw i32 %454, 1
  store i32 %455, i32* %11, align 4
  br label %422

456:                                              ; preds = %422
  br label %457

457:                                              ; preds = %456
  %458 = load i32, i32* %10, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %10, align 4
  br label %301

460:                                              ; preds = %301
  %461 = load i32, i32* %9, align 4
  store i32 %461, i32* %10, align 4
  br label %462

462:                                              ; preds = %505, %460
  %463 = load i32, i32* %10, align 4
  %464 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %465 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %464, i32 0, i32 1
  %466 = load i32, i32* %465, align 8
  %467 = icmp slt i32 %463, %466
  br i1 %467, label %468, label %508

468:                                              ; preds = %462
  %469 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %470 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %469, i32 0, i32 9
  %471 = load i32*, i32** %470, align 8
  %472 = load i32, i32* %10, align 4
  %473 = sext i32 %472 to i64
  %474 = getelementptr inbounds i32, i32* %471, i64 %473
  %475 = load i32, i32* %474, align 4
  %476 = icmp ne i32 %475, 0
  br i1 %476, label %477, label %504

477:                                              ; preds = %468
  %478 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %479 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %478, i32 0, i32 12
  %480 = call i8* @get_bits(i32* %479, i32 3)
  %481 = ptrtoint i8* %480 to i32
  %482 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %483 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %482, i32 0, i32 10
  %484 = load i32*, i32** %483, align 8
  %485 = load i32, i32* %10, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds i32, i32* %484, i64 %486
  store i32 %481, i32* %487, align 4
  %488 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %489 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %488, i32 0, i32 10
  %490 = load i32*, i32** %489, align 8
  %491 = load i32, i32* %10, align 4
  %492 = sext i32 %491 to i64
  %493 = getelementptr inbounds i32, i32* %490, i64 %492
  %494 = load i32, i32* %493, align 4
  %495 = icmp eq i32 %494, 7
  br i1 %495, label %496, label %503

496:                                              ; preds = %477
  %497 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %498 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %497, i32 0, i32 15
  %499 = load i32, i32* %498, align 8
  %500 = load i32, i32* @AV_LOG_ERROR, align 4
  %501 = call i32 @av_log(i32 %499, i32 %500, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %502 = load i32, i32* @AVERROR_INVALIDDATA, align 4
  store i32 %502, i32* %5, align 4
  br label %602

503:                                              ; preds = %477
  br label %504

504:                                              ; preds = %503, %468
  br label %505

505:                                              ; preds = %504
  %506 = load i32, i32* %10, align 4
  %507 = add nsw i32 %506, 1
  store i32 %507, i32* %10, align 4
  br label %462

508:                                              ; preds = %462
  %509 = load i32, i32* %9, align 4
  store i32 %509, i32* %10, align 4
  br label %510

510:                                              ; preds = %576, %508
  %511 = load i32, i32* %10, align 4
  %512 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %513 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %512, i32 0, i32 1
  %514 = load i32, i32* %513, align 8
  %515 = icmp slt i32 %511, %514
  br i1 %515, label %516, label %579

516:                                              ; preds = %510
  %517 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %517, i32 0, i32 9
  %519 = load i32*, i32** %518, align 8
  %520 = load i32, i32* %10, align 4
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds i32, i32* %519, i64 %521
  %523 = load i32, i32* %522, align 4
  %524 = sub nsw i32 %523, 1
  store i32 %524, i32* %18, align 4
  %525 = load i32, i32* %18, align 4
  %526 = icmp sge i32 %525, 0
  br i1 %526, label %527, label %575

527:                                              ; preds = %516
  %528 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %529 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %528, i32 0, i32 10
  %530 = load i32*, i32** %529, align 8
  %531 = load i32, i32* %10, align 4
  %532 = sext i32 %531 to i64
  %533 = getelementptr inbounds i32, i32* %530, i64 %532
  %534 = load i32, i32* %533, align 4
  store i32 %534, i32* %19, align 4
  %535 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %536 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %535, i32 0, i32 2
  %537 = load i32*, i32** %536, align 8
  %538 = load i32, i32* %10, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds i32, i32* %537, i64 %539
  %541 = load i32, i32* %540, align 4
  store i32 %541, i32* %11, align 4
  br label %542

542:                                              ; preds = %571, %527
  %543 = load i32, i32* %11, align 4
  %544 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %545 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %544, i32 0, i32 2
  %546 = load i32*, i32** %545, align 8
  %547 = load i32, i32* %18, align 4
  %548 = sext i32 %547 to i64
  %549 = getelementptr inbounds i32, i32* %546, i64 %548
  %550 = load i32, i32* %549, align 4
  %551 = icmp slt i32 %543, %550
  br i1 %551, label %552, label %574

552:                                              ; preds = %542
  %553 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %554 = load i32, i32* %19, align 4
  %555 = call i32 @parse_joint_scale(%struct.TYPE_5__* %553, i32 %554)
  store i32 %555, i32* %12, align 4
  %556 = icmp slt i32 %555, 0
  br i1 %556, label %557, label %559

557:                                              ; preds = %552
  %558 = load i32, i32* %12, align 4
  store i32 %558, i32* %5, align 4
  br label %602

559:                                              ; preds = %552
  %560 = load i32, i32* %12, align 4
  %561 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %562 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %561, i32 0, i32 11
  %563 = load i32**, i32*** %562, align 8
  %564 = load i32, i32* %10, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds i32*, i32** %563, i64 %565
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* %11, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  store i32 %560, i32* %570, align 4
  br label %571

571:                                              ; preds = %559
  %572 = load i32, i32* %11, align 4
  %573 = add nsw i32 %572, 1
  store i32 %573, i32* %11, align 4
  br label %542

574:                                              ; preds = %542
  br label %575

575:                                              ; preds = %574, %516
  br label %576

576:                                              ; preds = %575
  %577 = load i32, i32* %10, align 4
  %578 = add nsw i32 %577, 1
  store i32 %578, i32* %10, align 4
  br label %510

579:                                              ; preds = %510
  %580 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %581 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %580, i32 0, i32 14
  %582 = load i64, i64* %581, align 8
  %583 = icmp ne i64 %582, 0
  br i1 %583, label %584, label %592

584:                                              ; preds = %579
  %585 = load i32, i32* %8, align 4
  %586 = load i32, i32* @HEADER_CORE, align 4
  %587 = icmp eq i32 %585, %586
  br i1 %587, label %588, label %592

588:                                              ; preds = %584
  %589 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %590 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %589, i32 0, i32 12
  %591 = call i32 @skip_bits(i32* %590, i32 8)
  br label %592

592:                                              ; preds = %588, %584, %579
  %593 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %594 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %593, i32 0, i32 13
  %595 = load i64, i64* %594, align 8
  %596 = icmp ne i64 %595, 0
  br i1 %596, label %597, label %601

597:                                              ; preds = %592
  %598 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %599 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %598, i32 0, i32 12
  %600 = call i32 @skip_bits(i32* %599, i32 16)
  br label %601

601:                                              ; preds = %597, %592
  store i32 0, i32* %5, align 4
  br label %602

602:                                              ; preds = %601, %557, %496, %437, %380, %343, %185, %24
  %603 = load i32, i32* %5, align 4
  ret i32 %603
}

declare dso_local i64 @get_bits_left(i32*) #1

declare dso_local i8* @get_bits(i32*, i32) #1

declare dso_local i32 @skip_bits(i32*, i32) #1

declare dso_local i64 @get_bits1(i32*) #1

declare dso_local i8* @dca_get_vlc(i32*, i32*, i32) #1

declare dso_local i32 @av_log(i32, i32, i8*) #1

declare dso_local i32 @memset(i8**, i32, i32) #1

declare dso_local i32 @parse_scale(%struct.TYPE_5__*, i32*, i32) #1

declare dso_local i32 @parse_joint_scale(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
