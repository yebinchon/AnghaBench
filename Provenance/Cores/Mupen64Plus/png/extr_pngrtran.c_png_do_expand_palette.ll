; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrtran.c_png_do_expand_palette.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/extr_pngrtran.c_png_do_expand_palette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"in png_do_expand_palette\00", align 1
@PNG_COLOR_TYPE_PALETTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*, i32*, %struct.TYPE_6__*, i32*, i32)* @png_do_expand_palette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @png_do_expand_palette(%struct.TYPE_5__* %0, i32* %1, %struct.TYPE_6__* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store %struct.TYPE_6__* %2, %struct.TYPE_6__** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %16, align 4
  %20 = call i32 @png_debug(i32 1, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PNG_COLOR_TYPE_PALETTE, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %328

26:                                               ; preds = %5
  %27 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp slt i32 %29, 8
  br i1 %30, label %31, label %177

31:                                               ; preds = %26
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %168 [
    i32 1, label %35
    i32 2, label %82
    i32 4, label %126
  ]

35:                                               ; preds = %31
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %16, align 4
  %38 = sub nsw i32 %37, 1
  %39 = ashr i32 %38, 3
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %36, i64 %40
  store i32* %41, i32** %13, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* %16, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = getelementptr inbounds i32, i32* %45, i64 -1
  store i32* %46, i32** %14, align 8
  %47 = load i32, i32* %16, align 4
  %48 = add nsw i32 %47, 7
  %49 = and i32 %48, 7
  %50 = sub nsw i32 7, %49
  store i32 %50, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %51

51:                                               ; preds = %78, %35
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %81

55:                                               ; preds = %51
  %56 = load i32*, i32** %13, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %57, %58
  %60 = and i32 %59, 1
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %55
  %63 = load i32*, i32** %14, align 8
  store i32 1, i32* %63, align 4
  br label %66

64:                                               ; preds = %55
  %65 = load i32*, i32** %14, align 8
  store i32 0, i32* %65, align 4
  br label %66

66:                                               ; preds = %64, %62
  %67 = load i32, i32* %11, align 4
  %68 = icmp eq i32 %67, 7
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  store i32 0, i32* %11, align 4
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 -1
  store i32* %71, i32** %13, align 8
  br label %75

72:                                               ; preds = %66
  %73 = load i32, i32* %11, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %11, align 4
  br label %75

75:                                               ; preds = %72, %69
  %76 = load i32*, i32** %14, align 8
  %77 = getelementptr inbounds i32, i32* %76, i32 -1
  store i32* %77, i32** %14, align 8
  br label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %15, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %15, align 4
  br label %51

81:                                               ; preds = %51
  br label %169

82:                                               ; preds = %31
  %83 = load i32*, i32** %7, align 8
  %84 = load i32, i32* %16, align 4
  %85 = sub nsw i32 %84, 1
  %86 = ashr i32 %85, 2
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %83, i64 %87
  store i32* %88, i32** %13, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* %16, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = getelementptr inbounds i32, i32* %92, i64 -1
  store i32* %93, i32** %14, align 8
  %94 = load i32, i32* %16, align 4
  %95 = add nsw i32 %94, 3
  %96 = and i32 %95, 3
  %97 = sub nsw i32 3, %96
  %98 = shl i32 %97, 1
  store i32 %98, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %99

99:                                               ; preds = %122, %82
  %100 = load i32, i32* %15, align 4
  %101 = load i32, i32* %16, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %125

103:                                              ; preds = %99
  %104 = load i32*, i32** %13, align 8
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %11, align 4
  %107 = ashr i32 %105, %106
  %108 = and i32 %107, 3
  store i32 %108, i32* %12, align 4
  %109 = load i32, i32* %12, align 4
  %110 = load i32*, i32** %14, align 8
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* %11, align 4
  %112 = icmp eq i32 %111, 6
  br i1 %112, label %113, label %116

113:                                              ; preds = %103
  store i32 0, i32* %11, align 4
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 -1
  store i32* %115, i32** %13, align 8
  br label %119

116:                                              ; preds = %103
  %117 = load i32, i32* %11, align 4
  %118 = add nsw i32 %117, 2
  store i32 %118, i32* %11, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32*, i32** %14, align 8
  %121 = getelementptr inbounds i32, i32* %120, i32 -1
  store i32* %121, i32** %14, align 8
  br label %122

122:                                              ; preds = %119
  %123 = load i32, i32* %15, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %15, align 4
  br label %99

125:                                              ; preds = %99
  br label %169

126:                                              ; preds = %31
  %127 = load i32*, i32** %7, align 8
  %128 = load i32, i32* %16, align 4
  %129 = sub nsw i32 %128, 1
  %130 = ashr i32 %129, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  store i32* %132, i32** %13, align 8
  %133 = load i32*, i32** %7, align 8
  %134 = load i32, i32* %16, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  %137 = getelementptr inbounds i32, i32* %136, i64 -1
  store i32* %137, i32** %14, align 8
  %138 = load i32, i32* %16, align 4
  %139 = and i32 %138, 1
  %140 = shl i32 %139, 2
  store i32 %140, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %141

141:                                              ; preds = %164, %126
  %142 = load i32, i32* %15, align 4
  %143 = load i32, i32* %16, align 4
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %167

145:                                              ; preds = %141
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* %11, align 4
  %149 = ashr i32 %147, %148
  %150 = and i32 %149, 15
  store i32 %150, i32* %12, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32*, i32** %14, align 8
  store i32 %151, i32* %152, align 4
  %153 = load i32, i32* %11, align 4
  %154 = icmp eq i32 %153, 4
  br i1 %154, label %155, label %158

155:                                              ; preds = %145
  store i32 0, i32* %11, align 4
  %156 = load i32*, i32** %13, align 8
  %157 = getelementptr inbounds i32, i32* %156, i32 -1
  store i32* %157, i32** %13, align 8
  br label %161

158:                                              ; preds = %145
  %159 = load i32, i32* %11, align 4
  %160 = add nsw i32 %159, 4
  store i32 %160, i32* %11, align 4
  br label %161

161:                                              ; preds = %158, %155
  %162 = load i32*, i32** %14, align 8
  %163 = getelementptr inbounds i32, i32* %162, i32 -1
  store i32* %163, i32** %14, align 8
  br label %164

164:                                              ; preds = %161
  %165 = load i32, i32* %15, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %15, align 4
  br label %141

167:                                              ; preds = %141
  br label %169

168:                                              ; preds = %31
  br label %169

169:                                              ; preds = %168, %167, %125, %81
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 2
  store i32 8, i32* %171, align 4
  %172 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 3
  store i32 8, i32* %173, align 4
  %174 = load i32, i32* %16, align 4
  %175 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %176 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %175, i32 0, i32 4
  store i32 %174, i32* %176, align 4
  br label %177

177:                                              ; preds = %169, %26
  %178 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 8
  br i1 %181, label %182, label %327

182:                                              ; preds = %177
  %183 = load i32, i32* %10, align 4
  %184 = icmp sgt i32 %183, 0
  br i1 %184, label %185, label %264

185:                                              ; preds = %182
  %186 = load i32*, i32** %7, align 8
  %187 = load i32, i32* %16, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %186, i64 %188
  %190 = getelementptr inbounds i32, i32* %189, i64 -1
  store i32* %190, i32** %13, align 8
  %191 = load i32*, i32** %7, align 8
  %192 = load i32, i32* %16, align 4
  %193 = shl i32 %192, 2
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds i32, i32* %191, i64 %194
  %196 = getelementptr inbounds i32, i32* %195, i64 -1
  store i32* %196, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %197

197:                                              ; preds = %248, %185
  %198 = load i32, i32* %15, align 4
  %199 = load i32, i32* %16, align 4
  %200 = icmp slt i32 %198, %199
  br i1 %200, label %201, label %251

201:                                              ; preds = %197
  %202 = load i32*, i32** %13, align 8
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* %10, align 4
  %205 = icmp sge i32 %203, %204
  br i1 %205, label %206, label %209

206:                                              ; preds = %201
  %207 = load i32*, i32** %14, align 8
  %208 = getelementptr inbounds i32, i32* %207, i32 -1
  store i32* %208, i32** %14, align 8
  store i32 255, i32* %207, align 4
  br label %218

209:                                              ; preds = %201
  %210 = load i32*, i32** %9, align 8
  %211 = load i32*, i32** %13, align 8
  %212 = load i32, i32* %211, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds i32, i32* %210, i64 %213
  %215 = load i32, i32* %214, align 4
  %216 = load i32*, i32** %14, align 8
  %217 = getelementptr inbounds i32, i32* %216, i32 -1
  store i32* %217, i32** %14, align 8
  store i32 %215, i32* %216, align 4
  br label %218

218:                                              ; preds = %209, %206
  %219 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %220 = load i32*, i32** %13, align 8
  %221 = load i32, i32* %220, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %219, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 2
  %225 = load i32, i32* %224, align 4
  %226 = load i32*, i32** %14, align 8
  %227 = getelementptr inbounds i32, i32* %226, i32 -1
  store i32* %227, i32** %14, align 8
  store i32 %225, i32* %226, align 4
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %229 = load i32*, i32** %13, align 8
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i64 %231
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 4
  %235 = load i32*, i32** %14, align 8
  %236 = getelementptr inbounds i32, i32* %235, i32 -1
  store i32* %236, i32** %14, align 8
  store i32 %234, i32* %235, align 4
  %237 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %238 = load i32*, i32** %13, align 8
  %239 = load i32, i32* %238, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %237, i64 %240
  %242 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  %244 = load i32*, i32** %14, align 8
  %245 = getelementptr inbounds i32, i32* %244, i32 -1
  store i32* %245, i32** %14, align 8
  store i32 %243, i32* %244, align 4
  %246 = load i32*, i32** %13, align 8
  %247 = getelementptr inbounds i32, i32* %246, i32 -1
  store i32* %247, i32** %13, align 8
  br label %248

248:                                              ; preds = %218
  %249 = load i32, i32* %15, align 4
  %250 = add nsw i32 %249, 1
  store i32 %250, i32* %15, align 4
  br label %197

251:                                              ; preds = %197
  %252 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %252, i32 0, i32 2
  store i32 8, i32* %253, align 4
  %254 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %255 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %254, i32 0, i32 3
  store i32 32, i32* %255, align 4
  %256 = load i32, i32* %16, align 4
  %257 = mul nsw i32 %256, 4
  %258 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 4
  store i32 %257, i32* %259, align 4
  %260 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %261 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %260, i32 0, i32 1
  store i32 6, i32* %261, align 4
  %262 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %263 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %262, i32 0, i32 5
  store i32 4, i32* %263, align 4
  br label %326

264:                                              ; preds = %182
  %265 = load i32*, i32** %7, align 8
  %266 = load i32, i32* %16, align 4
  %267 = sext i32 %266 to i64
  %268 = getelementptr inbounds i32, i32* %265, i64 %267
  %269 = getelementptr inbounds i32, i32* %268, i64 -1
  store i32* %269, i32** %13, align 8
  %270 = load i32*, i32** %7, align 8
  %271 = load i32, i32* %16, align 4
  %272 = mul nsw i32 %271, 3
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  %275 = getelementptr inbounds i32, i32* %274, i64 -1
  store i32* %275, i32** %14, align 8
  store i32 0, i32* %15, align 4
  br label %276

276:                                              ; preds = %310, %264
  %277 = load i32, i32* %15, align 4
  %278 = load i32, i32* %16, align 4
  %279 = icmp slt i32 %277, %278
  br i1 %279, label %280, label %313

280:                                              ; preds = %276
  %281 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %282 = load i32*, i32** %13, align 8
  %283 = load i32, i32* %282, align 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %281, i64 %284
  %286 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %285, i32 0, i32 2
  %287 = load i32, i32* %286, align 4
  %288 = load i32*, i32** %14, align 8
  %289 = getelementptr inbounds i32, i32* %288, i32 -1
  store i32* %289, i32** %14, align 8
  store i32 %287, i32* %288, align 4
  %290 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %291 = load i32*, i32** %13, align 8
  %292 = load i32, i32* %291, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %290, i64 %293
  %295 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32*, i32** %14, align 8
  %298 = getelementptr inbounds i32, i32* %297, i32 -1
  store i32* %298, i32** %14, align 8
  store i32 %296, i32* %297, align 4
  %299 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %300 = load i32*, i32** %13, align 8
  %301 = load i32, i32* %300, align 4
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %299, i64 %302
  %304 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %303, i32 0, i32 0
  %305 = load i32, i32* %304, align 4
  %306 = load i32*, i32** %14, align 8
  %307 = getelementptr inbounds i32, i32* %306, i32 -1
  store i32* %307, i32** %14, align 8
  store i32 %305, i32* %306, align 4
  %308 = load i32*, i32** %13, align 8
  %309 = getelementptr inbounds i32, i32* %308, i32 -1
  store i32* %309, i32** %13, align 8
  br label %310

310:                                              ; preds = %280
  %311 = load i32, i32* %15, align 4
  %312 = add nsw i32 %311, 1
  store i32 %312, i32* %15, align 4
  br label %276

313:                                              ; preds = %276
  %314 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 2
  store i32 8, i32* %315, align 4
  %316 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %317 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %316, i32 0, i32 3
  store i32 24, i32* %317, align 4
  %318 = load i32, i32* %16, align 4
  %319 = mul nsw i32 %318, 3
  %320 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %321 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %320, i32 0, i32 4
  store i32 %319, i32* %321, align 4
  %322 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %323 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %322, i32 0, i32 1
  store i32 2, i32* %323, align 4
  %324 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %325 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %324, i32 0, i32 5
  store i32 3, i32* %325, align 4
  br label %326

326:                                              ; preds = %313, %251
  br label %327

327:                                              ; preds = %326, %177
  br label %328

328:                                              ; preds = %327, %5
  ret void
}

declare dso_local i32 @png_debug(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
