; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_mc_dir_part.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_cavs.c_mc_dir_part.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.TYPE_11__ = type { i32** }
%struct.TYPE_9__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_11__*, i32, i32, i32, i32*, i32*, i32*, i32, i32, i32 (i32*, i32*, i32)**, i32 (i32*, i32*, i32, i32, i32, i32)*, %struct.TYPE_9__*)* @mc_dir_part to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mc_dir_part(%struct.TYPE_10__* %0, %struct.TYPE_11__* %1, i32 %2, i32 %3, i32 %4, i32* %5, i32* %6, i32* %7, i32 %8, i32 %9, i32 (i32*, i32*, i32)** %10, i32 (i32*, i32*, i32, i32, i32, i32)* %11, %struct.TYPE_9__* %12) #0 {
  %14 = alloca %struct.TYPE_10__*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32 (i32*, i32*, i32)**, align 8
  %25 = alloca i32 (i32*, i32*, i32, i32, i32, i32)*, align 8
  %26 = alloca %struct.TYPE_9__*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i32*, align 8
  %33 = alloca i32, align 4
  %34 = alloca i32, align 4
  %35 = alloca i32, align 4
  %36 = alloca i32, align 4
  %37 = alloca i32, align 4
  %38 = alloca i32, align 4
  %39 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %14, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %15, align 8
  store i32 %2, i32* %16, align 4
  store i32 %3, i32* %17, align 4
  store i32 %4, i32* %18, align 4
  store i32* %5, i32** %19, align 8
  store i32* %6, i32** %20, align 8
  store i32* %7, i32** %21, align 8
  store i32 %8, i32* %22, align 4
  store i32 %9, i32* %23, align 4
  store i32 (i32*, i32*, i32)** %10, i32 (i32*, i32*, i32)*** %24, align 8
  store i32 (i32*, i32*, i32, i32, i32, i32)* %11, i32 (i32*, i32*, i32, i32, i32, i32)** %25, align 8
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %26, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %22, align 4
  %44 = mul nsw i32 %43, 8
  %45 = add nsw i32 %42, %44
  store i32 %45, i32* %27, align 4
  %46 = load %struct.TYPE_9__*, %struct.TYPE_9__** %26, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* %23, align 4
  %50 = mul nsw i32 %49, 8
  %51 = add nsw i32 %48, %50
  store i32 %51, i32* %28, align 4
  %52 = load i32, i32* %27, align 4
  %53 = and i32 %52, 3
  %54 = load i32, i32* %28, align 4
  %55 = and i32 %54, 3
  %56 = shl i32 %55, 2
  %57 = add nsw i32 %53, %56
  store i32 %57, i32* %29, align 4
  %58 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %59 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %58, i32 0, i32 0
  %60 = load i32**, i32*** %59, align 8
  %61 = getelementptr inbounds i32*, i32** %60, i64 0
  %62 = load i32*, i32** %61, align 8
  %63 = load i32, i32* %27, align 4
  %64 = ashr i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %62, i64 %65
  %67 = load i32, i32* %28, align 4
  %68 = ashr i32 %67, 2
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = mul nsw i32 %68, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %66, i64 %73
  store i32* %74, i32** %30, align 8
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %76 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %75, i32 0, i32 0
  %77 = load i32**, i32*** %76, align 8
  %78 = getelementptr inbounds i32*, i32** %77, i64 1
  %79 = load i32*, i32** %78, align 8
  %80 = load i32, i32* %27, align 4
  %81 = ashr i32 %80, 3
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32, i32* %28, align 4
  %85 = ashr i32 %84, 3
  %86 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %85, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %83, i64 %90
  store i32* %91, i32** %31, align 8
  %92 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %93 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %92, i32 0, i32 0
  %94 = load i32**, i32*** %93, align 8
  %95 = getelementptr inbounds i32*, i32** %94, i64 2
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %27, align 4
  %98 = ashr i32 %97, 3
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  %101 = load i32, i32* %28, align 4
  %102 = ashr i32 %101, 3
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = mul nsw i32 %102, %105
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %100, i64 %107
  store i32* %108, i32** %32, align 8
  store i32 0, i32* %33, align 4
  %109 = load i32, i32* %33, align 4
  store i32 %109, i32* %34, align 4
  %110 = load i32, i32* %27, align 4
  %111 = ashr i32 %110, 2
  store i32 %111, i32* %35, align 4
  %112 = load i32, i32* %28, align 4
  %113 = ashr i32 %112, 2
  store i32 %113, i32* %36, align 4
  %114 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 8
  %117 = mul nsw i32 16, %116
  store i32 %117, i32* %37, align 4
  %118 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %118, i32 0, i32 3
  %120 = load i32, i32* %119, align 4
  %121 = mul nsw i32 16, %120
  store i32 %121, i32* %38, align 4
  store i32 0, i32* %39, align 4
  %122 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = load i32**, i32*** %123, align 8
  %125 = getelementptr inbounds i32*, i32** %124, i64 0
  %126 = load i32*, i32** %125, align 8
  %127 = icmp ne i32* %126, null
  br i1 %127, label %129, label %128

128:                                              ; preds = %13
  br label %303

129:                                              ; preds = %13
  %130 = load i32, i32* %27, align 4
  %131 = and i32 %130, 7
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %129
  %134 = load i32, i32* %33, align 4
  %135 = sub nsw i32 %134, 3
  store i32 %135, i32* %33, align 4
  br label %136

136:                                              ; preds = %133, %129
  %137 = load i32, i32* %28, align 4
  %138 = and i32 %137, 7
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %143

140:                                              ; preds = %136
  %141 = load i32, i32* %34, align 4
  %142 = sub nsw i32 %141, 3
  store i32 %142, i32* %34, align 4
  br label %143

143:                                              ; preds = %140, %136
  %144 = load i32, i32* %35, align 4
  %145 = load i32, i32* %33, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp slt i32 %144, %146
  br i1 %147, label %167, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %36, align 4
  %150 = load i32, i32* %34, align 4
  %151 = sub nsw i32 0, %150
  %152 = icmp slt i32 %149, %151
  br i1 %152, label %167, label %153

153:                                              ; preds = %148
  %154 = load i32, i32* %35, align 4
  %155 = add nsw i32 %154, 16
  %156 = load i32, i32* %37, align 4
  %157 = load i32, i32* %33, align 4
  %158 = add nsw i32 %156, %157
  %159 = icmp sgt i32 %155, %158
  br i1 %159, label %167, label %160

160:                                              ; preds = %153
  %161 = load i32, i32* %36, align 4
  %162 = add nsw i32 %161, 16
  %163 = load i32, i32* %38, align 4
  %164 = load i32, i32* %34, align 4
  %165 = add nsw i32 %163, %164
  %166 = icmp sgt i32 %162, %165
  br i1 %166, label %167, label %207

167:                                              ; preds = %160, %153, %148, %143
  %168 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 5
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %170, align 8
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 4
  %174 = load i32*, i32** %173, align 8
  %175 = load i32*, i32** %30, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 -2
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = mul nsw i32 2, %179
  %181 = sext i32 %180 to i64
  %182 = sub i64 0, %181
  %183 = getelementptr inbounds i32, i32* %176, i64 %182
  %184 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %188 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = load i32, i32* %35, align 4
  %191 = sub nsw i32 %190, 2
  %192 = load i32, i32* %36, align 4
  %193 = sub nsw i32 %192, 2
  %194 = load i32, i32* %37, align 4
  %195 = load i32, i32* %38, align 4
  %196 = call i32 %171(i32* %174, i32* %183, i32 %186, i32 %189, i32 21, i32 21, i32 %191, i32 %193, i32 %194, i32 %195)
  %197 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %197, i32 0, i32 4
  %199 = load i32*, i32** %198, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 2
  %201 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %202 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = mul nsw i32 2, %203
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %200, i64 %205
  store i32* %206, i32** %30, align 8
  store i32 1, i32* %39, align 4
  br label %207

207:                                              ; preds = %167, %160
  %208 = load i32 (i32*, i32*, i32)**, i32 (i32*, i32*, i32)*** %24, align 8
  %209 = load i32, i32* %29, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %208, i64 %210
  %212 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %211, align 8
  %213 = load i32*, i32** %19, align 8
  %214 = load i32*, i32** %30, align 8
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %216 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 %212(i32* %213, i32* %214, i32 %217)
  %219 = load i32, i32* %39, align 4
  %220 = icmp ne i32 %219, 0
  br i1 %220, label %221, label %248

221:                                              ; preds = %207
  %222 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %223 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %222, i32 0, i32 5
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %224, align 8
  %226 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %227 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %226, i32 0, i32 4
  %228 = load i32*, i32** %227, align 8
  %229 = load i32*, i32** %31, align 8
  %230 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %234 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = load i32, i32* %27, align 4
  %237 = ashr i32 %236, 3
  %238 = load i32, i32* %28, align 4
  %239 = ashr i32 %238, 3
  %240 = load i32, i32* %37, align 4
  %241 = ashr i32 %240, 1
  %242 = load i32, i32* %38, align 4
  %243 = ashr i32 %242, 1
  %244 = call i32 %225(i32* %228, i32* %229, i32 %232, i32 %235, i32 9, i32 9, i32 %237, i32 %239, i32 %241, i32 %243)
  %245 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %246 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %245, i32 0, i32 4
  %247 = load i32*, i32** %246, align 8
  store i32* %247, i32** %31, align 8
  br label %248

248:                                              ; preds = %221, %207
  %249 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %25, align 8
  %250 = load i32*, i32** %20, align 8
  %251 = load i32*, i32** %31, align 8
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %253 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %252, i32 0, i32 1
  %254 = load i32, i32* %253, align 4
  %255 = load i32, i32* %16, align 4
  %256 = load i32, i32* %27, align 4
  %257 = and i32 %256, 7
  %258 = load i32, i32* %28, align 4
  %259 = and i32 %258, 7
  %260 = call i32 %249(i32* %250, i32* %251, i32 %254, i32 %255, i32 %257, i32 %259)
  %261 = load i32, i32* %39, align 4
  %262 = icmp ne i32 %261, 0
  br i1 %262, label %263, label %290

263:                                              ; preds = %248
  %264 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %265 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %264, i32 0, i32 5
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32)** %266, align 8
  %268 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %268, i32 0, i32 4
  %270 = load i32*, i32** %269, align 8
  %271 = load i32*, i32** %32, align 8
  %272 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %273 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 4
  %275 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %276 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %275, i32 0, i32 1
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %27, align 4
  %279 = ashr i32 %278, 3
  %280 = load i32, i32* %28, align 4
  %281 = ashr i32 %280, 3
  %282 = load i32, i32* %37, align 4
  %283 = ashr i32 %282, 1
  %284 = load i32, i32* %38, align 4
  %285 = ashr i32 %284, 1
  %286 = call i32 %267(i32* %270, i32* %271, i32 %274, i32 %277, i32 9, i32 9, i32 %279, i32 %281, i32 %283, i32 %285)
  %287 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %288 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %287, i32 0, i32 4
  %289 = load i32*, i32** %288, align 8
  store i32* %289, i32** %32, align 8
  br label %290

290:                                              ; preds = %263, %248
  %291 = load i32 (i32*, i32*, i32, i32, i32, i32)*, i32 (i32*, i32*, i32, i32, i32, i32)** %25, align 8
  %292 = load i32*, i32** %21, align 8
  %293 = load i32*, i32** %32, align 8
  %294 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %295 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %294, i32 0, i32 1
  %296 = load i32, i32* %295, align 4
  %297 = load i32, i32* %16, align 4
  %298 = load i32, i32* %27, align 4
  %299 = and i32 %298, 7
  %300 = load i32, i32* %28, align 4
  %301 = and i32 %300, 7
  %302 = call i32 %291(i32* %292, i32* %293, i32 %296, i32 %297, i32 %299, i32 %301)
  br label %303

303:                                              ; preds = %290, %128
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
