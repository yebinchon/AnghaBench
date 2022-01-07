; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_next_opt.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/tools/extr_pngcp.c_next_opt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i8*, i32 }
%struct.display = type { i32, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i64, i64, i64, i32 }

@options = common dso_local global %struct.TYPE_6__* null, align 8
@range_lo = common dso_local global i8* null, align 8
@MAX_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.display*, i32)* @next_opt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_opt(%struct.display* %0, i32 %1) #0 {
  %3 = alloca %struct.display*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.display* %0, %struct.display** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %15 = load i32, i32* %4, align 4
  %16 = add i32 %15, 1
  %17 = load %struct.display*, %struct.display** %3, align 8
  %18 = getelementptr inbounds %struct.display, %struct.display* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp eq i32 %16, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %2
  %22 = load %struct.display*, %struct.display** %3, align 8
  %23 = getelementptr inbounds %struct.display, %struct.display* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %21, %2
  %33 = phi i1 [ false, %2 ], [ %31, %21 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load %struct.display*, %struct.display** %3, align 8
  %37 = getelementptr inbounds %struct.display, %struct.display* %36, i32 0, i32 3
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %37, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  store i32 %43, i32* %7, align 4
  %44 = load %struct.display*, %struct.display** %3, align 8
  %45 = getelementptr inbounds %struct.display, %struct.display* %44, i32 0, i32 3
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** %45, align 8
  %47 = load i32, i32* %4, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add i32 %52, 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ult i32 %53, %59
  %61 = zext i1 %60 to i32
  %62 = call i32 @assert(i32 %61)
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %64 = load i32, i32* %7, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load i32, i32* %6, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i8*, i8** %72, align 8
  store i8* %73, i8** %8, align 8
  %74 = load i8*, i8** %8, align 8
  %75 = icmp ne i8* %74, null
  %76 = zext i1 %75 to i32
  %77 = call i32 @assert(i32 %76)
  %78 = load i8*, i8** %8, align 8
  %79 = load i8*, i8** @range_lo, align 8
  %80 = icmp eq i8* %78, %79
  br i1 %80, label %81, label %552

81:                                               ; preds = %32
  %82 = load %struct.display*, %struct.display** %3, align 8
  %83 = getelementptr inbounds %struct.display, %struct.display* %82, i32 0, i32 3
  %84 = load %struct.TYPE_5__*, %struct.TYPE_5__** %83, align 8
  %85 = load i32, i32* %4, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.display*, %struct.display** %3, align 8
  %91 = getelementptr inbounds %struct.display, %struct.display* %90, i32 0, i32 3
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %4, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = icmp sgt i32 %89, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %81
  %100 = load %struct.display*, %struct.display** %3, align 8
  %101 = getelementptr inbounds %struct.display, %struct.display* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %7, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  br label %551

108:                                              ; preds = %81
  %109 = load %struct.display*, %struct.display** %3, align 8
  %110 = getelementptr inbounds %struct.display, %struct.display* %109, i32 0, i32 3
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %4, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  store i64 %116, i64* %9, align 8
  %117 = load %struct.display*, %struct.display** %3, align 8
  %118 = getelementptr inbounds %struct.display, %struct.display* %117, i32 0, i32 3
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %118, align 8
  %120 = load i32, i32* %4, align 4
  %121 = zext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  store i32 %124, i32* %10, align 4
  %125 = load %struct.display*, %struct.display** %3, align 8
  %126 = getelementptr inbounds %struct.display, %struct.display* %125, i32 0, i32 3
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load i32, i32* %4, align 4
  %129 = zext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %11, align 4
  %133 = load %struct.display*, %struct.display** %3, align 8
  %134 = getelementptr inbounds %struct.display, %struct.display* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = load i32, i32* %7, align 4
  %137 = zext i32 %136 to i64
  %138 = getelementptr inbounds i32, i32* %135, i64 %137
  %139 = load i32, i32* %138, align 4
  store i32 %139, i32* %12, align 4
  store i32 1, i32* %5, align 4
  %140 = load i64, i64* %9, align 8
  %141 = load i64, i64* @MAX_SIZE, align 8
  %142 = icmp slt i64 %140, %141
  %143 = zext i1 %142 to i32
  %144 = call i32 @assert(i32 %143)
  %145 = load i32, i32* %12, align 4
  %146 = load i32, i32* %10, align 4
  %147 = icmp eq i32 %145, %146
  br i1 %147, label %148, label %176

148:                                              ; preds = %108
  %149 = load i64, i64* %9, align 8
  %150 = load %struct.display*, %struct.display** %3, align 8
  %151 = getelementptr inbounds %struct.display, %struct.display* %150, i32 0, i32 3
  %152 = load %struct.TYPE_5__*, %struct.TYPE_5__** %151, align 8
  %153 = load i32, i32* %4, align 4
  %154 = zext i32 %153 to i64
  %155 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i64 %154
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 6
  store i64 %149, i64* %156, align 8
  %157 = load i32, i32* %11, align 4
  %158 = load i32, i32* %12, align 4
  %159 = icmp sgt i32 %157, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @assert(i32 %160)
  %162 = load i32, i32* %11, align 4
  %163 = load i32, i32* %12, align 4
  %164 = add nsw i32 %163, 1
  %165 = icmp eq i32 %162, %164
  br i1 %165, label %166, label %174

166:                                              ; preds = %148
  %167 = load %struct.display*, %struct.display** %3, align 8
  %168 = getelementptr inbounds %struct.display, %struct.display* %167, i32 0, i32 3
  %169 = load %struct.TYPE_5__*, %struct.TYPE_5__** %168, align 8
  %170 = load i32, i32* %4, align 4
  %171 = zext i32 %170 to i64
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %169, i64 %171
  %173 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %172, i32 0, i32 0
  store i32 1, i32* %173, align 8
  br label %174

174:                                              ; preds = %166, %148
  %175 = load i32, i32* %11, align 4
  store i32 %175, i32* %12, align 4
  br label %523

176:                                              ; preds = %108
  %177 = load i32, i32* %12, align 4
  %178 = load i32, i32* %11, align 4
  %179 = icmp eq i32 %177, %178
  br i1 %179, label %180, label %212

180:                                              ; preds = %176
  %181 = load i64, i64* %9, align 8
  %182 = load %struct.display*, %struct.display** %3, align 8
  %183 = getelementptr inbounds %struct.display, %struct.display* %182, i32 0, i32 3
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %183, align 8
  %185 = load i32, i32* %4, align 4
  %186 = zext i32 %185 to i64
  %187 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i64 %186
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 7
  store i64 %181, i64* %188, align 8
  %189 = load i32, i32* %12, align 4
  %190 = load i32, i32* %10, align 4
  %191 = add nsw i32 %190, 1
  %192 = icmp sgt i32 %189, %191
  %193 = zext i1 %192 to i32
  %194 = call i32 @assert(i32 %193)
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* %10, align 4
  %197 = add nsw i32 %196, 2
  %198 = icmp eq i32 %195, %197
  br i1 %198, label %199, label %207

199:                                              ; preds = %180
  %200 = load %struct.display*, %struct.display** %3, align 8
  %201 = getelementptr inbounds %struct.display, %struct.display* %200, i32 0, i32 3
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = load i32, i32* %4, align 4
  %204 = zext i32 %203 to i64
  %205 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %205, i32 0, i32 0
  store i32 1, i32* %206, align 8
  br label %207

207:                                              ; preds = %199, %180
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %12, align 4
  %210 = add nsw i32 %208, %209
  %211 = sdiv i32 %210, 2
  store i32 %211, i32* %12, align 4
  br label %522

212:                                              ; preds = %176
  %213 = load %struct.display*, %struct.display** %3, align 8
  %214 = getelementptr inbounds %struct.display, %struct.display* %213, i32 0, i32 3
  %215 = load %struct.TYPE_5__*, %struct.TYPE_5__** %214, align 8
  %216 = load i32, i32* %4, align 4
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %215, i64 %217
  %219 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %218, i32 0, i32 6
  %220 = load i64, i64* %219, align 8
  store i64 %220, i64* %13, align 8
  %221 = load %struct.display*, %struct.display** %3, align 8
  %222 = getelementptr inbounds %struct.display, %struct.display* %221, i32 0, i32 3
  %223 = load %struct.TYPE_5__*, %struct.TYPE_5__** %222, align 8
  %224 = load i32, i32* %4, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %226, i32 0, i32 7
  %228 = load i64, i64* %227, align 8
  store i64 %228, i64* %14, align 8
  %229 = load i64, i64* %13, align 8
  %230 = load i64, i64* @MAX_SIZE, align 8
  %231 = icmp slt i64 %229, %230
  br i1 %231, label %232, label %236

232:                                              ; preds = %212
  %233 = load i64, i64* %14, align 8
  %234 = load i64, i64* @MAX_SIZE, align 8
  %235 = icmp slt i64 %233, %234
  br label %236

236:                                              ; preds = %232, %212
  %237 = phi i1 [ false, %212 ], [ %235, %232 ]
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load i32, i32* %12, align 4
  %241 = load i32, i32* %10, align 4
  %242 = icmp slt i32 %240, %241
  br i1 %242, label %243, label %278

243:                                              ; preds = %236
  %244 = load i32, i32* %12, align 4
  %245 = load %struct.display*, %struct.display** %3, align 8
  %246 = getelementptr inbounds %struct.display, %struct.display* %245, i32 0, i32 3
  %247 = load %struct.TYPE_5__*, %struct.TYPE_5__** %246, align 8
  %248 = load i32, i32* %4, align 4
  %249 = zext i32 %248 to i64
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %247, i64 %249
  %251 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %250, i32 0, i32 3
  store i32 %244, i32* %251, align 4
  %252 = load i64, i64* %9, align 8
  %253 = load %struct.display*, %struct.display** %3, align 8
  %254 = getelementptr inbounds %struct.display, %struct.display* %253, i32 0, i32 3
  %255 = load %struct.TYPE_5__*, %struct.TYPE_5__** %254, align 8
  %256 = load i32, i32* %4, align 4
  %257 = zext i32 %256 to i64
  %258 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %255, i64 %257
  %259 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %258, i32 0, i32 6
  store i64 %252, i64* %259, align 8
  %260 = load i32, i32* %10, align 4
  store i32 %260, i32* %12, align 4
  %261 = load i64, i64* %13, align 8
  store i64 %261, i64* %9, align 8
  %262 = load %struct.display*, %struct.display** %3, align 8
  %263 = getelementptr inbounds %struct.display, %struct.display* %262, i32 0, i32 3
  %264 = load %struct.TYPE_5__*, %struct.TYPE_5__** %263, align 8
  %265 = load i32, i32* %4, align 4
  %266 = zext i32 %265 to i64
  %267 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %264, i64 %266
  %268 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  store i32 %269, i32* %10, align 4
  %270 = load %struct.display*, %struct.display** %3, align 8
  %271 = getelementptr inbounds %struct.display, %struct.display* %270, i32 0, i32 3
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %271, align 8
  %273 = load i32, i32* %4, align 4
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i64 %274
  %276 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %275, i32 0, i32 6
  %277 = load i64, i64* %276, align 8
  store i64 %277, i64* %13, align 8
  br label %318

278:                                              ; preds = %236
  %279 = load i32, i32* %12, align 4
  %280 = load i32, i32* %11, align 4
  %281 = icmp sgt i32 %279, %280
  br i1 %281, label %282, label %317

282:                                              ; preds = %278
  %283 = load i32, i32* %12, align 4
  %284 = load %struct.display*, %struct.display** %3, align 8
  %285 = getelementptr inbounds %struct.display, %struct.display* %284, i32 0, i32 3
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %285, align 8
  %287 = load i32, i32* %4, align 4
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i64 %288
  %290 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %289, i32 0, i32 4
  store i32 %283, i32* %290, align 8
  %291 = load i64, i64* %9, align 8
  %292 = load %struct.display*, %struct.display** %3, align 8
  %293 = getelementptr inbounds %struct.display, %struct.display* %292, i32 0, i32 3
  %294 = load %struct.TYPE_5__*, %struct.TYPE_5__** %293, align 8
  %295 = load i32, i32* %4, align 4
  %296 = zext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %297, i32 0, i32 7
  store i64 %291, i64* %298, align 8
  %299 = load i32, i32* %11, align 4
  store i32 %299, i32* %12, align 4
  %300 = load i64, i64* %14, align 8
  store i64 %300, i64* %9, align 8
  %301 = load %struct.display*, %struct.display** %3, align 8
  %302 = getelementptr inbounds %struct.display, %struct.display* %301, i32 0, i32 3
  %303 = load %struct.TYPE_5__*, %struct.TYPE_5__** %302, align 8
  %304 = load i32, i32* %4, align 4
  %305 = zext i32 %304 to i64
  %306 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %303, i64 %305
  %307 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %306, i32 0, i32 4
  %308 = load i32, i32* %307, align 8
  store i32 %308, i32* %11, align 4
  %309 = load %struct.display*, %struct.display** %3, align 8
  %310 = getelementptr inbounds %struct.display, %struct.display* %309, i32 0, i32 3
  %311 = load %struct.TYPE_5__*, %struct.TYPE_5__** %310, align 8
  %312 = load i32, i32* %4, align 4
  %313 = zext i32 %312 to i64
  %314 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %311, i64 %313
  %315 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %314, i32 0, i32 7
  %316 = load i64, i64* %315, align 8
  store i64 %316, i64* %14, align 8
  br label %317

317:                                              ; preds = %282, %278
  br label %318

318:                                              ; preds = %317, %243
  %319 = load i32, i32* %10, align 4
  %320 = load i32, i32* %12, align 4
  %321 = icmp slt i32 %319, %320
  br i1 %321, label %322, label %326

322:                                              ; preds = %318
  %323 = load i32, i32* %12, align 4
  %324 = load i32, i32* %11, align 4
  %325 = icmp slt i32 %323, %324
  br label %326

326:                                              ; preds = %322, %318
  %327 = phi i1 [ false, %318 ], [ %325, %322 ]
  %328 = zext i1 %327 to i32
  %329 = call i32 @assert(i32 %328)
  %330 = load i32, i32* %11, align 4
  %331 = load i32, i32* %10, align 4
  %332 = add nsw i32 %331, 3
  %333 = icmp eq i32 %330, %332
  br i1 %333, label %334, label %361

334:                                              ; preds = %326
  %335 = load i32, i32* %10, align 4
  %336 = load i32, i32* %12, align 4
  %337 = load i32, i32* %10, align 4
  %338 = add nsw i32 %337, 1
  %339 = icmp eq i32 %336, %338
  %340 = zext i1 %339 to i64
  %341 = select i1 %339, i32 2, i32 1
  %342 = add nsw i32 %335, %341
  store i32 %342, i32* %12, align 4
  %343 = load i32, i32* %10, align 4
  %344 = load i32, i32* %12, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %350

346:                                              ; preds = %334
  %347 = load i32, i32* %12, align 4
  %348 = load i32, i32* %11, align 4
  %349 = icmp slt i32 %347, %348
  br label %350

350:                                              ; preds = %346, %334
  %351 = phi i1 [ false, %334 ], [ %349, %346 ]
  %352 = zext i1 %351 to i32
  %353 = call i32 @assert(i32 %352)
  %354 = load %struct.display*, %struct.display** %3, align 8
  %355 = getelementptr inbounds %struct.display, %struct.display* %354, i32 0, i32 3
  %356 = load %struct.TYPE_5__*, %struct.TYPE_5__** %355, align 8
  %357 = load i32, i32* %4, align 4
  %358 = zext i32 %357 to i64
  %359 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %356, i64 %358
  %360 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %359, i32 0, i32 0
  store i32 1, i32* %360, align 8
  br label %521

361:                                              ; preds = %326
  %362 = load i32, i32* %11, align 4
  %363 = load i32, i32* %10, align 4
  %364 = add nsw i32 %363, 3
  %365 = icmp sgt i32 %362, %364
  %366 = zext i1 %365 to i32
  %367 = call i32 @assert(i32 %366)
  %368 = load i64, i64* %13, align 8
  %369 = load i64, i64* %9, align 8
  %370 = icmp sle i64 %368, %369
  br i1 %370, label %371, label %412

371:                                              ; preds = %361
  %372 = load i64, i64* %9, align 8
  %373 = load i64, i64* %14, align 8
  %374 = icmp sle i64 %372, %373
  br i1 %374, label %375, label %412

375:                                              ; preds = %371
  %376 = load i32, i32* %12, align 4
  %377 = load i32, i32* %10, align 4
  %378 = add nsw i32 %377, 1
  %379 = icmp eq i32 %376, %378
  br i1 %379, label %380, label %390

380:                                              ; preds = %375
  %381 = load i32, i32* %12, align 4
  %382 = add nsw i32 %381, 1
  store i32 %382, i32* %12, align 4
  %383 = load %struct.display*, %struct.display** %3, align 8
  %384 = getelementptr inbounds %struct.display, %struct.display* %383, i32 0, i32 3
  %385 = load %struct.TYPE_5__*, %struct.TYPE_5__** %384, align 8
  %386 = load i32, i32* %4, align 4
  %387 = zext i32 %386 to i64
  %388 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %385, i64 %387
  %389 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %388, i32 0, i32 0
  store i32 1, i32* %389, align 8
  br label %411

390:                                              ; preds = %375
  %391 = load i32, i32* %12, align 4
  store i32 %391, i32* %11, align 4
  %392 = load %struct.display*, %struct.display** %3, align 8
  %393 = getelementptr inbounds %struct.display, %struct.display* %392, i32 0, i32 3
  %394 = load %struct.TYPE_5__*, %struct.TYPE_5__** %393, align 8
  %395 = load i32, i32* %4, align 4
  %396 = zext i32 %395 to i64
  %397 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %394, i64 %396
  %398 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %397, i32 0, i32 4
  store i32 %391, i32* %398, align 8
  %399 = load i64, i64* %9, align 8
  %400 = load %struct.display*, %struct.display** %3, align 8
  %401 = getelementptr inbounds %struct.display, %struct.display* %400, i32 0, i32 3
  %402 = load %struct.TYPE_5__*, %struct.TYPE_5__** %401, align 8
  %403 = load i32, i32* %4, align 4
  %404 = zext i32 %403 to i64
  %405 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %402, i64 %404
  %406 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %405, i32 0, i32 7
  store i64 %399, i64* %406, align 8
  %407 = load i32, i32* %10, align 4
  %408 = load i32, i32* %12, align 4
  %409 = add nsw i32 %407, %408
  %410 = sdiv i32 %409, 2
  store i32 %410, i32* %12, align 4
  br label %411

411:                                              ; preds = %390, %380
  br label %501

412:                                              ; preds = %371, %361
  %413 = load i64, i64* %13, align 8
  %414 = load i64, i64* %9, align 8
  %415 = icmp sge i64 %413, %414
  br i1 %415, label %416, label %457

416:                                              ; preds = %412
  %417 = load i64, i64* %9, align 8
  %418 = load i64, i64* %14, align 8
  %419 = icmp sge i64 %417, %418
  br i1 %419, label %420, label %457

420:                                              ; preds = %416
  %421 = load i32, i32* %12, align 4
  %422 = load i32, i32* %11, align 4
  %423 = sub nsw i32 %422, 1
  %424 = icmp eq i32 %421, %423
  br i1 %424, label %425, label %435

425:                                              ; preds = %420
  %426 = load i32, i32* %12, align 4
  %427 = add nsw i32 %426, -1
  store i32 %427, i32* %12, align 4
  %428 = load %struct.display*, %struct.display** %3, align 8
  %429 = getelementptr inbounds %struct.display, %struct.display* %428, i32 0, i32 3
  %430 = load %struct.TYPE_5__*, %struct.TYPE_5__** %429, align 8
  %431 = load i32, i32* %4, align 4
  %432 = zext i32 %431 to i64
  %433 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %430, i64 %432
  %434 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %433, i32 0, i32 0
  store i32 1, i32* %434, align 8
  br label %456

435:                                              ; preds = %420
  %436 = load i32, i32* %12, align 4
  store i32 %436, i32* %10, align 4
  %437 = load %struct.display*, %struct.display** %3, align 8
  %438 = getelementptr inbounds %struct.display, %struct.display* %437, i32 0, i32 3
  %439 = load %struct.TYPE_5__*, %struct.TYPE_5__** %438, align 8
  %440 = load i32, i32* %4, align 4
  %441 = zext i32 %440 to i64
  %442 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %439, i64 %441
  %443 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %442, i32 0, i32 3
  store i32 %436, i32* %443, align 4
  %444 = load i64, i64* %9, align 8
  %445 = load %struct.display*, %struct.display** %3, align 8
  %446 = getelementptr inbounds %struct.display, %struct.display* %445, i32 0, i32 3
  %447 = load %struct.TYPE_5__*, %struct.TYPE_5__** %446, align 8
  %448 = load i32, i32* %4, align 4
  %449 = zext i32 %448 to i64
  %450 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %447, i64 %449
  %451 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %450, i32 0, i32 6
  store i64 %444, i64* %451, align 8
  %452 = load i32, i32* %12, align 4
  %453 = load i32, i32* %11, align 4
  %454 = add nsw i32 %452, %453
  %455 = sdiv i32 %454, 2
  store i32 %455, i32* %12, align 4
  br label %456

456:                                              ; preds = %435, %425
  br label %500

457:                                              ; preds = %416, %412
  %458 = load i64, i64* %13, align 8
  %459 = load i64, i64* %14, align 8
  %460 = icmp sle i64 %458, %459
  br i1 %460, label %461, label %480

461:                                              ; preds = %457
  %462 = load i32, i32* %12, align 4
  %463 = load %struct.display*, %struct.display** %3, align 8
  %464 = getelementptr inbounds %struct.display, %struct.display* %463, i32 0, i32 3
  %465 = load %struct.TYPE_5__*, %struct.TYPE_5__** %464, align 8
  %466 = load i32, i32* %4, align 4
  %467 = zext i32 %466 to i64
  %468 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %465, i64 %467
  %469 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %468, i32 0, i32 4
  store i32 %462, i32* %469, align 8
  %470 = load i64, i64* %9, align 8
  %471 = load %struct.display*, %struct.display** %3, align 8
  %472 = getelementptr inbounds %struct.display, %struct.display* %471, i32 0, i32 3
  %473 = load %struct.TYPE_5__*, %struct.TYPE_5__** %472, align 8
  %474 = load i32, i32* %4, align 4
  %475 = zext i32 %474 to i64
  %476 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %473, i64 %475
  %477 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %476, i32 0, i32 7
  store i64 %470, i64* %477, align 8
  %478 = load i32, i32* %11, align 4
  %479 = add nsw i32 %478, -1
  store i32 %479, i32* %11, align 4
  store i32 %479, i32* %12, align 4
  br label %499

480:                                              ; preds = %457
  %481 = load i32, i32* %12, align 4
  %482 = load %struct.display*, %struct.display** %3, align 8
  %483 = getelementptr inbounds %struct.display, %struct.display* %482, i32 0, i32 3
  %484 = load %struct.TYPE_5__*, %struct.TYPE_5__** %483, align 8
  %485 = load i32, i32* %4, align 4
  %486 = zext i32 %485 to i64
  %487 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %484, i64 %486
  %488 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %487, i32 0, i32 3
  store i32 %481, i32* %488, align 4
  %489 = load i64, i64* %9, align 8
  %490 = load %struct.display*, %struct.display** %3, align 8
  %491 = getelementptr inbounds %struct.display, %struct.display* %490, i32 0, i32 3
  %492 = load %struct.TYPE_5__*, %struct.TYPE_5__** %491, align 8
  %493 = load i32, i32* %4, align 4
  %494 = zext i32 %493 to i64
  %495 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %492, i64 %494
  %496 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %495, i32 0, i32 6
  store i64 %489, i64* %496, align 8
  %497 = load i32, i32* %10, align 4
  %498 = add nsw i32 %497, 1
  store i32 %498, i32* %10, align 4
  store i32 %498, i32* %12, align 4
  br label %499

499:                                              ; preds = %480, %461
  br label %500

500:                                              ; preds = %499, %456
  br label %501

501:                                              ; preds = %500, %411
  %502 = load i32, i32* %11, align 4
  %503 = load i32, i32* %10, align 4
  %504 = add nsw i32 %503, 1
  %505 = icmp sgt i32 %502, %504
  %506 = zext i1 %505 to i32
  %507 = call i32 @assert(i32 %506)
  %508 = load i32, i32* %11, align 4
  %509 = load i32, i32* %10, align 4
  %510 = add nsw i32 %509, 2
  %511 = icmp sle i32 %508, %510
  br i1 %511, label %512, label %520

512:                                              ; preds = %501
  %513 = load %struct.display*, %struct.display** %3, align 8
  %514 = getelementptr inbounds %struct.display, %struct.display* %513, i32 0, i32 3
  %515 = load %struct.TYPE_5__*, %struct.TYPE_5__** %514, align 8
  %516 = load i32, i32* %4, align 4
  %517 = zext i32 %516 to i64
  %518 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %515, i64 %517
  %519 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %518, i32 0, i32 0
  store i32 1, i32* %519, align 8
  br label %520

520:                                              ; preds = %512, %501
  br label %521

521:                                              ; preds = %520, %350
  br label %522

522:                                              ; preds = %521, %207
  br label %523

523:                                              ; preds = %522, %174
  %524 = load i32, i32* %12, align 4
  %525 = load %struct.display*, %struct.display** %3, align 8
  %526 = getelementptr inbounds %struct.display, %struct.display* %525, i32 0, i32 3
  %527 = load %struct.TYPE_5__*, %struct.TYPE_5__** %526, align 8
  %528 = load i32, i32* %4, align 4
  %529 = zext i32 %528 to i64
  %530 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %527, i64 %529
  %531 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %530, i32 0, i32 8
  %532 = load i32, i32* %531, align 8
  %533 = icmp ne i32 %524, %532
  %534 = zext i1 %533 to i32
  %535 = call i32 @assert(i32 %534)
  %536 = load i32, i32* %12, align 4
  %537 = load %struct.display*, %struct.display** %3, align 8
  %538 = getelementptr inbounds %struct.display, %struct.display* %537, i32 0, i32 1
  %539 = load i32*, i32** %538, align 8
  %540 = load i32, i32* %7, align 4
  %541 = zext i32 %540 to i64
  %542 = getelementptr inbounds i32, i32* %539, i64 %541
  store i32 %536, i32* %542, align 4
  %543 = load i64, i64* @MAX_SIZE, align 8
  %544 = load %struct.display*, %struct.display** %3, align 8
  %545 = getelementptr inbounds %struct.display, %struct.display* %544, i32 0, i32 3
  %546 = load %struct.TYPE_5__*, %struct.TYPE_5__** %545, align 8
  %547 = load i32, i32* %4, align 4
  %548 = zext i32 %547 to i64
  %549 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %546, i64 %548
  %550 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %549, i32 0, i32 5
  store i64 %543, i64* %550, align 8
  br label %551

551:                                              ; preds = %523, %99
  br label %579

552:                                              ; preds = %32
  %553 = load %struct.TYPE_6__*, %struct.TYPE_6__** @options, align 8
  %554 = load i32, i32* %7, align 4
  %555 = zext i32 %554 to i64
  %556 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %553, i64 %555
  %557 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %556, i32 0, i32 1
  %558 = load %struct.TYPE_4__*, %struct.TYPE_4__** %557, align 8
  %559 = load i32, i32* %6, align 4
  %560 = add i32 %559, 1
  store i32 %560, i32* %6, align 4
  %561 = zext i32 %560 to i64
  %562 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %558, i64 %561
  %563 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %562, i32 0, i32 1
  %564 = load i32, i32* %563, align 8
  %565 = load %struct.display*, %struct.display** %3, align 8
  %566 = getelementptr inbounds %struct.display, %struct.display* %565, i32 0, i32 1
  %567 = load i32*, i32** %566, align 8
  %568 = load i32, i32* %7, align 4
  %569 = zext i32 %568 to i64
  %570 = getelementptr inbounds i32, i32* %567, i64 %569
  store i32 %564, i32* %570, align 4
  %571 = load i32, i32* %6, align 4
  %572 = load %struct.display*, %struct.display** %3, align 8
  %573 = getelementptr inbounds %struct.display, %struct.display* %572, i32 0, i32 3
  %574 = load %struct.TYPE_5__*, %struct.TYPE_5__** %573, align 8
  %575 = load i32, i32* %4, align 4
  %576 = zext i32 %575 to i64
  %577 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %574, i64 %576
  %578 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %577, i32 0, i32 2
  store i32 %571, i32* %578, align 8
  br label %579

579:                                              ; preds = %552, %551
  %580 = load %struct.display*, %struct.display** %3, align 8
  %581 = load i32, i32* %4, align 4
  %582 = call i32 @set_opt_string(%struct.display* %580, i32 %581)
  %583 = load i32, i32* %5, align 4
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %599, label %585

585:                                              ; preds = %579
  %586 = load %struct.display*, %struct.display** %3, align 8
  %587 = load i32, i32* %7, align 4
  %588 = load i32, i32* %6, align 4
  %589 = call i64 @opt_list_end(%struct.display* %586, i32 %587, i32 %588)
  %590 = icmp ne i64 %589, 0
  br i1 %590, label %591, label %599

591:                                              ; preds = %585
  %592 = load %struct.display*, %struct.display** %3, align 8
  %593 = getelementptr inbounds %struct.display, %struct.display* %592, i32 0, i32 3
  %594 = load %struct.TYPE_5__*, %struct.TYPE_5__** %593, align 8
  %595 = load i32, i32* %4, align 4
  %596 = zext i32 %595 to i64
  %597 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %594, i64 %596
  %598 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %597, i32 0, i32 0
  store i32 1, i32* %598, align 8
  br label %616

599:                                              ; preds = %585, %579
  %600 = load %struct.display*, %struct.display** %3, align 8
  %601 = getelementptr inbounds %struct.display, %struct.display* %600, i32 0, i32 3
  %602 = load %struct.TYPE_5__*, %struct.TYPE_5__** %601, align 8
  %603 = load i32, i32* %4, align 4
  %604 = zext i32 %603 to i64
  %605 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %602, i64 %604
  %606 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %605, i32 0, i32 0
  %607 = load i32, i32* %606, align 8
  %608 = icmp ne i32 %607, 0
  br i1 %608, label %615, label %609

609:                                              ; preds = %599
  %610 = load %struct.display*, %struct.display** %3, align 8
  %611 = getelementptr inbounds %struct.display, %struct.display* %610, i32 0, i32 0
  %612 = load i32, i32* %611, align 8
  %613 = load %struct.display*, %struct.display** %3, align 8
  %614 = getelementptr inbounds %struct.display, %struct.display* %613, i32 0, i32 2
  store i32 %612, i32* %614, align 8
  br label %615

615:                                              ; preds = %609, %599
  br label %616

616:                                              ; preds = %615, %591
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @set_opt_string(%struct.display*, i32) #1

declare dso_local i64 @opt_list_end(%struct.display*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
