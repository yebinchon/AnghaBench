; ModuleID = '/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_build_tree.c'
source_filename = "/home/carl/AnghaBench/RetroArch/libretro-common/formats/libchdr/extr_libchdr_huffman.c_huffman_build_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.huffman_decoder = type { i32, i64*, %struct.node_t* }
%struct.node_t = type { i64, i32, i32, i32, i32, i32, %struct.node_t* }

@huffman_tree_node_compare = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @huffman_build_tree(%struct.huffman_decoder* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.huffman_decoder*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.node_t**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.node_t*, align 8
  %14 = alloca %struct.node_t*, align 8
  %15 = alloca %struct.node_t*, align 8
  %16 = alloca %struct.node_t*, align 8
  %17 = alloca %struct.node_t*, align 8
  store %struct.huffman_decoder* %0, %struct.huffman_decoder** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %19 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sext i32 %20 to i64
  %22 = mul i64 8, %21
  %23 = mul i64 %22, 2
  %24 = trunc i64 %23 to i32
  %25 = call i64 @malloc(i32 %24)
  %26 = inttoptr i64 %25 to %struct.node_t**
  store %struct.node_t** %26, %struct.node_t*** %9, align 8
  store i32 0, i32* %11, align 4
  %27 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %28 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %27, i32 0, i32 2
  %29 = load %struct.node_t*, %struct.node_t** %28, align 8
  %30 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %31 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = mul i64 %33, 40
  %35 = trunc i64 %34 to i32
  %36 = call i32 @memset(%struct.node_t* %29, i32 0, i32 %35)
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %126, %3
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %40 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %129

43:                                               ; preds = %37
  %44 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %45 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %44, i32 0, i32 1
  %46 = load i64*, i64** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i64, i64* %46, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %125

52:                                               ; preds = %43
  %53 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %54 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %53, i32 0, i32 2
  %55 = load %struct.node_t*, %struct.node_t** %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.node_t, %struct.node_t* %55, i64 %57
  %59 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %60 = load i32, i32* %11, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %11, align 4
  %62 = sext i32 %60 to i64
  %63 = getelementptr inbounds %struct.node_t*, %struct.node_t** %59, i64 %62
  store %struct.node_t* %58, %struct.node_t** %63, align 8
  %64 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %65 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i32, i32* %10, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i64, i64* %66, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %72 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %71, i32 0, i32 2
  %73 = load %struct.node_t*, %struct.node_t** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.node_t, %struct.node_t* %73, i64 %75
  %77 = getelementptr inbounds %struct.node_t, %struct.node_t* %76, i32 0, i32 0
  store i64 %70, i64* %77, align 8
  %78 = load i32, i32* %10, align 4
  %79 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %80 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %79, i32 0, i32 2
  %81 = load %struct.node_t*, %struct.node_t** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.node_t, %struct.node_t* %81, i64 %83
  %85 = getelementptr inbounds %struct.node_t, %struct.node_t* %84, i32 0, i32 1
  store i32 %78, i32* %85, align 8
  %86 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %87 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  %92 = load i64, i64* %91, align 8
  %93 = trunc i64 %92 to i32
  %94 = load i64, i64* %6, align 8
  %95 = trunc i64 %94 to i32
  %96 = mul nsw i32 %93, %95
  %97 = load i64, i64* %5, align 8
  %98 = trunc i64 %97 to i32
  %99 = sdiv i32 %96, %98
  %100 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %101 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %100, i32 0, i32 2
  %102 = load %struct.node_t*, %struct.node_t** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.node_t, %struct.node_t* %102, i64 %104
  %106 = getelementptr inbounds %struct.node_t, %struct.node_t* %105, i32 0, i32 2
  store i32 %99, i32* %106, align 4
  %107 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %108 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %107, i32 0, i32 2
  %109 = load %struct.node_t*, %struct.node_t** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.node_t, %struct.node_t* %109, i64 %111
  %113 = getelementptr inbounds %struct.node_t, %struct.node_t* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %116, label %124

116:                                              ; preds = %52
  %117 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %118 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %117, i32 0, i32 2
  %119 = load %struct.node_t*, %struct.node_t** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.node_t, %struct.node_t* %119, i64 %121
  %123 = getelementptr inbounds %struct.node_t, %struct.node_t* %122, i32 0, i32 2
  store i32 1, i32* %123, align 4
  br label %124

124:                                              ; preds = %116, %52
  br label %125

125:                                              ; preds = %124, %43
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %10, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %10, align 4
  br label %37

129:                                              ; preds = %37
  %130 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %131 = getelementptr inbounds %struct.node_t*, %struct.node_t** %130, i64 0
  %132 = load i32, i32* %11, align 4
  %133 = load i32, i32* @huffman_tree_node_compare, align 4
  %134 = call i32 @qsort(%struct.node_t** %131, i32 %132, i32 8, i32 %133)
  %135 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %136 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  store i32 %137, i32* %7, align 4
  br label %138

138:                                              ; preds = %214, %129
  %139 = load i32, i32* %11, align 4
  %140 = icmp sgt i32 %139, 1
  br i1 %140, label %141, label %222

141:                                              ; preds = %138
  %142 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %143 = load i32, i32* %11, align 4
  %144 = add nsw i32 %143, -1
  store i32 %144, i32* %11, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.node_t*, %struct.node_t** %142, i64 %145
  %147 = load %struct.node_t*, %struct.node_t** %146, align 8
  store %struct.node_t* %147, %struct.node_t** %13, align 8
  %148 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %149 = load i32, i32* %11, align 4
  %150 = add nsw i32 %149, -1
  store i32 %150, i32* %11, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds %struct.node_t*, %struct.node_t** %148, i64 %151
  %153 = load %struct.node_t*, %struct.node_t** %152, align 8
  store %struct.node_t* %153, %struct.node_t** %14, align 8
  %154 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %155 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %154, i32 0, i32 2
  %156 = load %struct.node_t*, %struct.node_t** %155, align 8
  %157 = load i32, i32* %7, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %7, align 4
  %159 = sext i32 %157 to i64
  %160 = getelementptr inbounds %struct.node_t, %struct.node_t* %156, i64 %159
  store %struct.node_t* %160, %struct.node_t** %15, align 8
  %161 = load %struct.node_t*, %struct.node_t** %15, align 8
  %162 = getelementptr inbounds %struct.node_t, %struct.node_t* %161, i32 0, i32 6
  store %struct.node_t* null, %struct.node_t** %162, align 8
  %163 = load %struct.node_t*, %struct.node_t** %15, align 8
  %164 = load %struct.node_t*, %struct.node_t** %13, align 8
  %165 = getelementptr inbounds %struct.node_t, %struct.node_t* %164, i32 0, i32 6
  store %struct.node_t* %163, %struct.node_t** %165, align 8
  %166 = load %struct.node_t*, %struct.node_t** %14, align 8
  %167 = getelementptr inbounds %struct.node_t, %struct.node_t* %166, i32 0, i32 6
  store %struct.node_t* %163, %struct.node_t** %167, align 8
  %168 = load %struct.node_t*, %struct.node_t** %14, align 8
  %169 = getelementptr inbounds %struct.node_t, %struct.node_t* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = load %struct.node_t*, %struct.node_t** %13, align 8
  %172 = getelementptr inbounds %struct.node_t, %struct.node_t* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %170, %173
  %175 = load %struct.node_t*, %struct.node_t** %15, align 8
  %176 = getelementptr inbounds %struct.node_t, %struct.node_t* %175, i32 0, i32 2
  store i32 %174, i32* %176, align 4
  store i32 0, i32* %12, align 4
  br label %177

177:                                              ; preds = %211, %141
  %178 = load i32, i32* %12, align 4
  %179 = load i32, i32* %11, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %214

181:                                              ; preds = %177
  %182 = load %struct.node_t*, %struct.node_t** %15, align 8
  %183 = getelementptr inbounds %struct.node_t, %struct.node_t* %182, i32 0, i32 2
  %184 = load i32, i32* %183, align 4
  %185 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %186 = load i32, i32* %12, align 4
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds %struct.node_t*, %struct.node_t** %185, i64 %187
  %189 = load %struct.node_t*, %struct.node_t** %188, align 8
  %190 = getelementptr inbounds %struct.node_t, %struct.node_t* %189, i32 0, i32 2
  %191 = load i32, i32* %190, align 4
  %192 = icmp sgt i32 %184, %191
  br i1 %192, label %193, label %210

193:                                              ; preds = %181
  %194 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %195 = load i32, i32* %12, align 4
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.node_t*, %struct.node_t** %194, i64 %197
  %199 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %200 = load i32, i32* %12, align 4
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds %struct.node_t*, %struct.node_t** %199, i64 %201
  %203 = load i32, i32* %11, align 4
  %204 = load i32, i32* %12, align 4
  %205 = sub nsw i32 %203, %204
  %206 = sext i32 %205 to i64
  %207 = mul i64 %206, 8
  %208 = trunc i64 %207 to i32
  %209 = call i32 @memmove(%struct.node_t** %198, %struct.node_t** %202, i32 %208)
  br label %214

210:                                              ; preds = %181
  br label %211

211:                                              ; preds = %210
  %212 = load i32, i32* %12, align 4
  %213 = add nsw i32 %212, 1
  store i32 %213, i32* %12, align 4
  br label %177

214:                                              ; preds = %193, %177
  %215 = load %struct.node_t*, %struct.node_t** %15, align 8
  %216 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %217 = load i32, i32* %12, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.node_t*, %struct.node_t** %216, i64 %218
  store %struct.node_t* %215, %struct.node_t** %219, align 8
  %220 = load i32, i32* %11, align 4
  %221 = add nsw i32 %220, 1
  store i32 %221, i32* %11, align 4
  br label %138

222:                                              ; preds = %138
  store i32 0, i32* %10, align 4
  br label %223

223:                                              ; preds = %275, %222
  %224 = load i32, i32* %10, align 4
  %225 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %226 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %225, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %278

229:                                              ; preds = %223
  %230 = load %struct.huffman_decoder*, %struct.huffman_decoder** %4, align 8
  %231 = getelementptr inbounds %struct.huffman_decoder, %struct.huffman_decoder* %230, i32 0, i32 2
  %232 = load %struct.node_t*, %struct.node_t** %231, align 8
  %233 = load i32, i32* %10, align 4
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds %struct.node_t, %struct.node_t* %232, i64 %234
  store %struct.node_t* %235, %struct.node_t** %17, align 8
  %236 = load %struct.node_t*, %struct.node_t** %17, align 8
  %237 = getelementptr inbounds %struct.node_t, %struct.node_t* %236, i32 0, i32 5
  store i32 0, i32* %237, align 8
  %238 = load %struct.node_t*, %struct.node_t** %17, align 8
  %239 = getelementptr inbounds %struct.node_t, %struct.node_t* %238, i32 0, i32 1
  store i32 0, i32* %239, align 8
  %240 = load %struct.node_t*, %struct.node_t** %17, align 8
  %241 = getelementptr inbounds %struct.node_t, %struct.node_t* %240, i32 0, i32 2
  %242 = load i32, i32* %241, align 4
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %274

244:                                              ; preds = %229
  %245 = load %struct.node_t*, %struct.node_t** %17, align 8
  store %struct.node_t* %245, %struct.node_t** %16, align 8
  br label %246

246:                                              ; preds = %256, %244
  %247 = load %struct.node_t*, %struct.node_t** %16, align 8
  %248 = getelementptr inbounds %struct.node_t, %struct.node_t* %247, i32 0, i32 6
  %249 = load %struct.node_t*, %struct.node_t** %248, align 8
  %250 = icmp ne %struct.node_t* %249, null
  br i1 %250, label %251, label %260

251:                                              ; preds = %246
  %252 = load %struct.node_t*, %struct.node_t** %17, align 8
  %253 = getelementptr inbounds %struct.node_t, %struct.node_t* %252, i32 0, i32 5
  %254 = load i32, i32* %253, align 8
  %255 = add nsw i32 %254, 1
  store i32 %255, i32* %253, align 8
  br label %256

256:                                              ; preds = %251
  %257 = load %struct.node_t*, %struct.node_t** %16, align 8
  %258 = getelementptr inbounds %struct.node_t, %struct.node_t* %257, i32 0, i32 6
  %259 = load %struct.node_t*, %struct.node_t** %258, align 8
  store %struct.node_t* %259, %struct.node_t** %16, align 8
  br label %246

260:                                              ; preds = %246
  %261 = load %struct.node_t*, %struct.node_t** %17, align 8
  %262 = getelementptr inbounds %struct.node_t, %struct.node_t* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = icmp eq i32 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %260
  %266 = load %struct.node_t*, %struct.node_t** %17, align 8
  %267 = getelementptr inbounds %struct.node_t, %struct.node_t* %266, i32 0, i32 5
  store i32 1, i32* %267, align 8
  br label %268

268:                                              ; preds = %265, %260
  %269 = load i32, i32* %8, align 4
  %270 = load %struct.node_t*, %struct.node_t** %17, align 8
  %271 = getelementptr inbounds %struct.node_t, %struct.node_t* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 8
  %273 = call i32 @MAX(i32 %269, i32 %272)
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %268, %229
  br label %275

275:                                              ; preds = %274
  %276 = load i32, i32* %10, align 4
  %277 = add nsw i32 %276, 1
  store i32 %277, i32* %10, align 4
  br label %223

278:                                              ; preds = %223
  %279 = load %struct.node_t**, %struct.node_t*** %9, align 8
  %280 = call i32 @free(%struct.node_t** %279)
  %281 = load i32, i32* %8, align 4
  ret i32 %281
}

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @memset(%struct.node_t*, i32, i32) #1

declare dso_local i32 @qsort(%struct.node_t**, i32, i32, i32) #1

declare dso_local i32 @memmove(%struct.node_t**, %struct.node_t**, i32) #1

declare dso_local i32 @MAX(i32, i32) #1

declare dso_local i32 @free(%struct.node_t**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
