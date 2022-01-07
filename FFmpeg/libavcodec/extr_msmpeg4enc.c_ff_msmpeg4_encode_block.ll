; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4enc.c_ff_msmpeg4_encode_block.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_msmpeg4enc.c_ff_msmpeg4_encode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32**, i32, i32**, i32** }
%struct.TYPE_12__ = type { i32, i64, i32, i32, i32*, i32, i32, i32, i32, i32*****, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64* }
%struct.TYPE_9__ = type { i64* }

@ff_rl_table = common dso_local global %struct.TYPE_11__* null, align 8
@MAX_LEVEL = common dso_local global i32 0, align 4
@MAX_RUN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ff_msmpeg4_encode_block(%struct.TYPE_12__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_12__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
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
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %60

27:                                               ; preds = %3
  %28 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @msmpeg4_encode_dc(%struct.TYPE_12__* %28, i32 %31, i32 %32, i32* %18)
  store i32 1, i32* %10, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 4
  br i1 %35, label %36, label %42

36:                                               ; preds = %27
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ff_rl_table, align 8
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %37, i64 %40
  store %struct.TYPE_11__* %41, %struct.TYPE_11__** %19, align 8
  br label %50

42:                                               ; preds = %27
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ff_rl_table, align 8
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 3, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i64 %48
  store %struct.TYPE_11__* %49, %struct.TYPE_11__** %19, align 8
  br label %50

50:                                               ; preds = %42, %36
  %51 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = icmp sge i32 %53, 4
  %55 = zext i1 %54 to i32
  store i32 %55, i32* %17, align 4
  %56 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 11
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  store i64* %59, i64** %20, align 8
  br label %78

60:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  %61 = load %struct.TYPE_11__*, %struct.TYPE_11__** @ff_rl_table, align 8
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = add i64 3, %64
  %66 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %61, i64 %65
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %19, align 8
  %67 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp sle i32 %69, 2
  br i1 %70, label %71, label %72

71:                                               ; preds = %60
  store i32 0, i32* %17, align 4
  br label %73

72:                                               ; preds = %60
  store i32 1, i32* %17, align 4
  br label %73

73:                                               ; preds = %72, %71
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 10
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  store i64* %77, i64** %20, align 8
  br label %78

78:                                               ; preds = %73, %50
  %79 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp sge i32 %81, 4
  br i1 %82, label %83, label %124

83:                                               ; preds = %78
  %84 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = icmp slt i32 %86, 6
  br i1 %87, label %88, label %124

88:                                               ; preds = %83
  %89 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 4
  %91 = load i32*, i32** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %91, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = icmp sgt i32 %95, 0
  br i1 %96, label %97, label %124

97:                                               ; preds = %88
  store i32 63, i32* %12, align 4
  br label %98

98:                                               ; preds = %113, %97
  %99 = load i32, i32* %12, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %116

101:                                              ; preds = %98
  %102 = load i32*, i32** %5, align 8
  %103 = load i64*, i64** %20, align 8
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %101
  br label %116

112:                                              ; preds = %101
  br label %113

113:                                              ; preds = %112
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, -1
  store i32 %115, i32* %12, align 4
  br label %98

116:                                              ; preds = %111, %98
  %117 = load i32, i32* %12, align 4
  %118 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %118, i32 0, i32 4
  %120 = load i32*, i32** %119, align 8
  %121 = load i32, i32* %6, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds i32, i32* %120, i64 %122
  store i32 %117, i32* %123, align 4
  br label %132

124:                                              ; preds = %88, %83, %78
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %12, align 4
  br label %132

132:                                              ; preds = %124, %116
  %133 = load i32, i32* %10, align 4
  %134 = sub nsw i32 %133, 1
  store i32 %134, i32* %13, align 4
  br label %135

135:                                              ; preds = %483, %132
  %136 = load i32, i32* %10, align 4
  %137 = load i32, i32* %12, align 4
  %138 = icmp sle i32 %136, %137
  br i1 %138, label %139, label %486

139:                                              ; preds = %135
  %140 = load i64*, i64** %20, align 8
  %141 = load i32, i32* %10, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i64, i64* %140, i64 %142
  %144 = load i64, i64* %143, align 8
  %145 = trunc i64 %144 to i32
  store i32 %145, i32* %11, align 4
  %146 = load i32*, i32** %5, align 8
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  store i32 %150, i32* %7, align 4
  %151 = load i32, i32* %7, align 4
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %153, label %482

153:                                              ; preds = %139
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* %13, align 4
  %156 = sub nsw i32 %154, %155
  %157 = sub nsw i32 %156, 1
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* %10, align 4
  %159 = load i32, i32* %12, align 4
  %160 = icmp eq i32 %158, %159
  %161 = zext i1 %160 to i32
  store i32 %161, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %162 = load i32, i32* %7, align 4
  store i32 %162, i32* %15, align 4
  %163 = load i32, i32* %7, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %153
  store i32 1, i32* %14, align 4
  %166 = load i32, i32* %7, align 4
  %167 = sub nsw i32 0, %166
  store i32 %167, i32* %7, align 4
  br label %168

168:                                              ; preds = %165, %153
  %169 = load i32, i32* %7, align 4
  %170 = load i32, i32* @MAX_LEVEL, align 4
  %171 = icmp sle i32 %169, %170
  br i1 %171, label %172, label %205

172:                                              ; preds = %168
  %173 = load i32, i32* %8, align 4
  %174 = load i32, i32* @MAX_RUN, align 4
  %175 = icmp sle i32 %173, %174
  br i1 %175, label %176, label %205

176:                                              ; preds = %172
  %177 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %177, i32 0, i32 9
  %179 = load i32*****, i32****** %178, align 8
  %180 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32****, i32***** %179, i64 %183
  %185 = load i32****, i32***** %184, align 8
  %186 = load i32, i32* %6, align 4
  %187 = icmp sgt i32 %186, 3
  %188 = zext i1 %187 to i32
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds i32***, i32**** %185, i64 %189
  %191 = load i32***, i32**** %190, align 8
  %192 = load i32, i32* %7, align 4
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds i32**, i32*** %191, i64 %193
  %195 = load i32**, i32*** %194, align 8
  %196 = load i32, i32* %8, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds i32*, i32** %195, i64 %197
  %199 = load i32*, i32** %198, align 8
  %200 = load i32, i32* %9, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = add nsw i32 %203, 1
  store i32 %204, i32* %202, align 4
  br label %205

205:                                              ; preds = %176, %172, %168
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 9
  %208 = load i32*****, i32****** %207, align 8
  %209 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds i32****, i32***** %208, i64 %212
  %214 = load i32****, i32***** %213, align 8
  %215 = load i32, i32* %6, align 4
  %216 = icmp sgt i32 %215, 3
  %217 = zext i1 %216 to i32
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32***, i32**** %214, i64 %218
  %220 = load i32***, i32**** %219, align 8
  %221 = getelementptr inbounds i32**, i32*** %220, i64 40
  %222 = load i32**, i32*** %221, align 8
  %223 = getelementptr inbounds i32*, i32** %222, i64 63
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = add nsw i32 %226, 1
  store i32 %227, i32* %225, align 4
  %228 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %229 = load i32, i32* %9, align 4
  %230 = load i32, i32* %8, align 4
  %231 = load i32, i32* %7, align 4
  %232 = call i32 @get_rl_index(%struct.TYPE_11__* %228, i32 %229, i32 %230, i32 %231)
  store i32 %232, i32* %16, align 4
  %233 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %234 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %233, i32 0, i32 8
  %235 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %236 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %235, i32 0, i32 0
  %237 = load i32**, i32*** %236, align 8
  %238 = load i32, i32* %16, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32*, i32** %237, i64 %239
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 1
  %243 = load i32, i32* %242, align 4
  %244 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %245 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %244, i32 0, i32 0
  %246 = load i32**, i32*** %245, align 8
  %247 = load i32, i32* %16, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i32*, i32** %246, i64 %248
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 0
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @put_bits(i32* %234, i32 %243, i32 %252)
  %254 = load i32, i32* %16, align 4
  %255 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %256 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %255, i32 0, i32 1
  %257 = load i32, i32* %256, align 8
  %258 = icmp eq i32 %254, %257
  br i1 %258, label %259, label %475

259:                                              ; preds = %205
  %260 = load i32, i32* %7, align 4
  %261 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %262 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %261, i32 0, i32 2
  %263 = load i32**, i32*** %262, align 8
  %264 = load i32, i32* %9, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds i32*, i32** %263, i64 %265
  %267 = load i32*, i32** %266, align 8
  %268 = load i32, i32* %8, align 4
  %269 = sext i32 %268 to i64
  %270 = getelementptr inbounds i32, i32* %267, i64 %269
  %271 = load i32, i32* %270, align 4
  %272 = sub nsw i32 %260, %271
  store i32 %272, i32* %21, align 4
  %273 = load i32, i32* %21, align 4
  %274 = icmp slt i32 %273, 1
  br i1 %274, label %275, label %276

275:                                              ; preds = %259
  br label %288

276:                                              ; preds = %259
  %277 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %278 = load i32, i32* %9, align 4
  %279 = load i32, i32* %8, align 4
  %280 = load i32, i32* %21, align 4
  %281 = call i32 @get_rl_index(%struct.TYPE_11__* %277, i32 %278, i32 %279, i32 %280)
  store i32 %281, i32* %16, align 4
  %282 = load i32, i32* %16, align 4
  %283 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %284 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 8
  %286 = icmp eq i32 %282, %285
  br i1 %286, label %287, label %445

287:                                              ; preds = %276
  br label %288

288:                                              ; preds = %287, %275
  %289 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %290 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %289, i32 0, i32 8
  %291 = call i32 @put_bits(i32* %290, i32 1, i32 0)
  %292 = load i32, i32* %7, align 4
  %293 = load i32, i32* @MAX_LEVEL, align 4
  %294 = icmp sgt i32 %292, %293
  br i1 %294, label %295, label %296

295:                                              ; preds = %288
  br label %345

296:                                              ; preds = %288
  %297 = load i32, i32* %8, align 4
  %298 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %299 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %298, i32 0, i32 3
  %300 = load i32**, i32*** %299, align 8
  %301 = load i32, i32* %9, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds i32*, i32** %300, i64 %302
  %304 = load i32*, i32** %303, align 8
  %305 = load i32, i32* %7, align 4
  %306 = sext i32 %305 to i64
  %307 = getelementptr inbounds i32, i32* %304, i64 %306
  %308 = load i32, i32* %307, align 4
  %309 = sub nsw i32 %297, %308
  %310 = load i32, i32* %17, align 4
  %311 = sub nsw i32 %309, %310
  store i32 %311, i32* %22, align 4
  %312 = load i32, i32* %22, align 4
  %313 = icmp slt i32 %312, 0
  br i1 %313, label %314, label %315

314:                                              ; preds = %296
  br label %345

315:                                              ; preds = %296
  %316 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %317 = load i32, i32* %9, align 4
  %318 = load i32, i32* %22, align 4
  %319 = add nsw i32 %318, 1
  %320 = load i32, i32* %7, align 4
  %321 = call i32 @get_rl_index(%struct.TYPE_11__* %316, i32 %317, i32 %319, i32 %320)
  store i32 %321, i32* %16, align 4
  %322 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %323 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %322, i32 0, i32 3
  %324 = load i32, i32* %323, align 4
  %325 = icmp eq i32 %324, 4
  br i1 %325, label %326, label %333

326:                                              ; preds = %315
  %327 = load i32, i32* %16, align 4
  %328 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %329 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %328, i32 0, i32 1
  %330 = load i32, i32* %329, align 8
  %331 = icmp eq i32 %327, %330
  br i1 %331, label %332, label %333

332:                                              ; preds = %326
  br label %345

333:                                              ; preds = %326, %315
  %334 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %335 = load i32, i32* %9, align 4
  %336 = load i32, i32* %22, align 4
  %337 = load i32, i32* %7, align 4
  %338 = call i32 @get_rl_index(%struct.TYPE_11__* %334, i32 %335, i32 %336, i32 %337)
  store i32 %338, i32* %16, align 4
  %339 = load i32, i32* %16, align 4
  %340 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %341 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 8
  %343 = icmp eq i32 %339, %342
  br i1 %343, label %344, label %415

344:                                              ; preds = %333
  br label %345

345:                                              ; preds = %344, %332, %314, %295
  %346 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %347 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %346, i32 0, i32 8
  %348 = call i32 @put_bits(i32* %347, i32 1, i32 0)
  %349 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %349, i32 0, i32 8
  %351 = load i32, i32* %9, align 4
  %352 = call i32 @put_bits(i32* %350, i32 1, i32 %351)
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %354 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %353, i32 0, i32 3
  %355 = load i32, i32* %354, align 4
  %356 = icmp sge i32 %355, 4
  br i1 %356, label %357, label %405

357:                                              ; preds = %345
  %358 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %359 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %358, i32 0, i32 5
  %360 = load i32, i32* %359, align 8
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %362, label %386

362:                                              ; preds = %357
  %363 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %364 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %363, i32 0, i32 5
  store i32 8, i32* %364, align 8
  %365 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %366 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %365, i32 0, i32 6
  store i32 6, i32* %366, align 4
  %367 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %368 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %367, i32 0, i32 7
  %369 = load i32, i32* %368, align 8
  %370 = icmp slt i32 %369, 8
  br i1 %370, label %371, label %381

371:                                              ; preds = %362
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %373 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %372, i32 0, i32 8
  %374 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %375 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %374, i32 0, i32 3
  %376 = load i32, i32* %375, align 4
  %377 = icmp sge i32 %376, 6
  %378 = zext i1 %377 to i32
  %379 = add nsw i32 6, %378
  %380 = call i32 @put_bits(i32* %373, i32 %379, i32 3)
  br label %385

381:                                              ; preds = %362
  %382 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %383 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %382, i32 0, i32 8
  %384 = call i32 @put_bits(i32* %383, i32 8, i32 3)
  br label %385

385:                                              ; preds = %381, %371
  br label %386

386:                                              ; preds = %385, %357
  %387 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %388 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %387, i32 0, i32 8
  %389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %389, i32 0, i32 6
  %391 = load i32, i32* %390, align 4
  %392 = load i32, i32* %8, align 4
  %393 = call i32 @put_bits(i32* %388, i32 %391, i32 %392)
  %394 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %395 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %394, i32 0, i32 8
  %396 = load i32, i32* %14, align 4
  %397 = call i32 @put_bits(i32* %395, i32 1, i32 %396)
  %398 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %399 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %398, i32 0, i32 8
  %400 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %401 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %400, i32 0, i32 5
  %402 = load i32, i32* %401, align 8
  %403 = load i32, i32* %7, align 4
  %404 = call i32 @put_bits(i32* %399, i32 %402, i32 %403)
  br label %414

405:                                              ; preds = %345
  %406 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %407 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %406, i32 0, i32 8
  %408 = load i32, i32* %8, align 4
  %409 = call i32 @put_bits(i32* %407, i32 6, i32 %408)
  %410 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %411 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %410, i32 0, i32 8
  %412 = load i32, i32* %15, align 4
  %413 = call i32 @put_sbits(i32* %411, i32 8, i32 %412)
  br label %414

414:                                              ; preds = %405, %386
  br label %444

415:                                              ; preds = %333
  %416 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %417 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %416, i32 0, i32 8
  %418 = call i32 @put_bits(i32* %417, i32 1, i32 1)
  %419 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %420 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %419, i32 0, i32 8
  %421 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %422 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %421, i32 0, i32 0
  %423 = load i32**, i32*** %422, align 8
  %424 = load i32, i32* %16, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds i32*, i32** %423, i64 %425
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 1
  %429 = load i32, i32* %428, align 4
  %430 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %431 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %430, i32 0, i32 0
  %432 = load i32**, i32*** %431, align 8
  %433 = load i32, i32* %16, align 4
  %434 = sext i32 %433 to i64
  %435 = getelementptr inbounds i32*, i32** %432, i64 %434
  %436 = load i32*, i32** %435, align 8
  %437 = getelementptr inbounds i32, i32* %436, i64 0
  %438 = load i32, i32* %437, align 4
  %439 = call i32 @put_bits(i32* %420, i32 %429, i32 %438)
  %440 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %441 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %440, i32 0, i32 8
  %442 = load i32, i32* %14, align 4
  %443 = call i32 @put_bits(i32* %441, i32 1, i32 %442)
  br label %444

444:                                              ; preds = %415, %414
  br label %474

445:                                              ; preds = %276
  %446 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %447 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %446, i32 0, i32 8
  %448 = call i32 @put_bits(i32* %447, i32 1, i32 1)
  %449 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %450 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %449, i32 0, i32 8
  %451 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %452 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %451, i32 0, i32 0
  %453 = load i32**, i32*** %452, align 8
  %454 = load i32, i32* %16, align 4
  %455 = sext i32 %454 to i64
  %456 = getelementptr inbounds i32*, i32** %453, i64 %455
  %457 = load i32*, i32** %456, align 8
  %458 = getelementptr inbounds i32, i32* %457, i64 1
  %459 = load i32, i32* %458, align 4
  %460 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %461 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %460, i32 0, i32 0
  %462 = load i32**, i32*** %461, align 8
  %463 = load i32, i32* %16, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds i32*, i32** %462, i64 %464
  %466 = load i32*, i32** %465, align 8
  %467 = getelementptr inbounds i32, i32* %466, i64 0
  %468 = load i32, i32* %467, align 4
  %469 = call i32 @put_bits(i32* %450, i32 %459, i32 %468)
  %470 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %471 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %470, i32 0, i32 8
  %472 = load i32, i32* %14, align 4
  %473 = call i32 @put_bits(i32* %471, i32 1, i32 %472)
  br label %474

474:                                              ; preds = %445, %444
  br label %480

475:                                              ; preds = %205
  %476 = load %struct.TYPE_12__*, %struct.TYPE_12__** %4, align 8
  %477 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %476, i32 0, i32 8
  %478 = load i32, i32* %14, align 4
  %479 = call i32 @put_bits(i32* %477, i32 1, i32 %478)
  br label %480

480:                                              ; preds = %475, %474
  %481 = load i32, i32* %10, align 4
  store i32 %481, i32* %13, align 4
  br label %482

482:                                              ; preds = %480, %139
  br label %483

483:                                              ; preds = %482
  %484 = load i32, i32* %10, align 4
  %485 = add nsw i32 %484, 1
  store i32 %485, i32* %10, align 4
  br label %135

486:                                              ; preds = %135
  ret void
}

declare dso_local i32 @msmpeg4_encode_dc(%struct.TYPE_12__*, i32, i32, i32*) #1

declare dso_local i32 @get_rl_index(%struct.TYPE_11__*, i32, i32, i32) #1

declare dso_local i32 @put_bits(i32*, i32, i32) #1

declare dso_local i32 @put_sbits(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
