; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_simplify_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_simplify_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_21__ = type { i64 }
%struct.TYPE_22__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_22__* }

@c_vm_map_simplify_entry_called = common dso_local global i32 0, align 4
@FALSE = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@c_vm_map_simplified = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_simplify_entry(%struct.TYPE_21__* %0, %struct.TYPE_22__* %1) #0 {
  %3 = alloca %struct.TYPE_21__*, align 8
  %4 = alloca %struct.TYPE_22__*, align 8
  %5 = alloca %struct.TYPE_22__*, align 8
  store %struct.TYPE_21__* %0, %struct.TYPE_21__** %3, align 8
  store %struct.TYPE_22__* %1, %struct.TYPE_22__** %4, align 8
  %6 = load i32, i32* @c_vm_map_simplify_entry_called, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @c_vm_map_simplify_entry_called, align 4
  %8 = call i32 @counter(i32 %6)
  %9 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %9, i32 0, i32 25
  %11 = load %struct.TYPE_22__*, %struct.TYPE_22__** %10, align 8
  store %struct.TYPE_22__* %11, %struct.TYPE_22__** %5, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %13 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %14 = call %struct.TYPE_22__* @vm_map_to_entry(%struct.TYPE_21__* %13)
  %15 = icmp ne %struct.TYPE_22__* %12, %14
  br i1 %15, label %16, label %326

16:                                               ; preds = %2
  %17 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %18 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %19 = call %struct.TYPE_22__* @vm_map_to_entry(%struct.TYPE_21__* %18)
  %20 = icmp ne %struct.TYPE_22__* %17, %19
  br i1 %20, label %21, label %326

21:                                               ; preds = %16
  %22 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %29, label %326

29:                                               ; preds = %21
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %326

37:                                               ; preds = %29
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %39 = call i64 @VME_OBJECT(%struct.TYPE_22__* %38)
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %41 = call i64 @VME_OBJECT(%struct.TYPE_22__* %40)
  %42 = icmp eq i64 %39, %41
  br i1 %42, label %43, label %326

43:                                               ; preds = %37
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %45 = call i64 @VME_OFFSET(%struct.TYPE_22__* %44)
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %47 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = sub nsw i64 %48, %51
  %53 = add nsw i64 %45, %52
  %54 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %55 = call i64 @VME_OFFSET(%struct.TYPE_22__* %54)
  %56 = icmp eq i64 %53, %55
  br i1 %56, label %57, label %326

57:                                               ; preds = %43
  %58 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %58, i32 0, i32 3
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 3
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  br i1 %64, label %65, label %326

65:                                               ; preds = %57
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 4
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %326

73:                                               ; preds = %65
  %74 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %74, i32 0, i32 5
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %78 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %77, i32 0, i32 5
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %76, %79
  br i1 %80, label %81, label %326

81:                                               ; preds = %73
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %82, i32 0, i32 6
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %85, i32 0, i32 6
  %87 = load i64, i64* %86, align 8
  %88 = icmp eq i64 %84, %87
  br i1 %88, label %89, label %326

89:                                               ; preds = %81
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 7
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 7
  %95 = load i64, i64* %94, align 8
  %96 = icmp eq i64 %92, %95
  br i1 %96, label %97, label %326

97:                                               ; preds = %89
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 8
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %102 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %101, i32 0, i32 8
  %103 = load i64, i64* %102, align 8
  %104 = icmp eq i64 %100, %103
  br i1 %104, label %105, label %326

105:                                              ; preds = %97
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %107 = call i64 @VME_ALIAS(%struct.TYPE_22__* %106)
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %109 = call i64 @VME_ALIAS(%struct.TYPE_22__* %108)
  %110 = icmp eq i64 %107, %109
  br i1 %110, label %111, label %326

111:                                              ; preds = %105
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %112, i32 0, i32 9
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %115, i32 0, i32 9
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %326

119:                                              ; preds = %111
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %120, i32 0, i32 10
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %123, i32 0, i32 10
  %125 = load i64, i64* %124, align 8
  %126 = icmp eq i64 %122, %125
  br i1 %126, label %127, label %326

127:                                              ; preds = %119
  %128 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %128, i32 0, i32 11
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %132 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %131, i32 0, i32 11
  %133 = load i64, i64* %132, align 8
  %134 = icmp eq i64 %130, %133
  br i1 %134, label %135, label %326

135:                                              ; preds = %127
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %136, i32 0, i32 12
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %139, i32 0, i32 12
  %141 = load i64, i64* %140, align 8
  %142 = icmp eq i64 %138, %141
  br i1 %142, label %143, label %326

143:                                              ; preds = %135
  %144 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %145 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %144, i32 0, i32 13
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %147, i32 0, i32 13
  %149 = load i64, i64* %148, align 8
  %150 = icmp eq i64 %146, %149
  br i1 %150, label %151, label %326

151:                                              ; preds = %143
  %152 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %152, i32 0, i32 14
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %156 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %155, i32 0, i32 14
  %157 = load i64, i64* %156, align 8
  %158 = icmp eq i64 %154, %157
  br i1 %158, label %159, label %326

159:                                              ; preds = %151
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %160, i32 0, i32 15
  %162 = load i64, i64* %161, align 8
  %163 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 15
  %165 = load i64, i64* %164, align 8
  %166 = icmp eq i64 %162, %165
  br i1 %166, label %167, label %326

167:                                              ; preds = %159
  %168 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %169 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %168, i32 0, i32 16
  %170 = load i64, i64* %169, align 8
  %171 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %172 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %171, i32 0, i32 16
  %173 = load i64, i64* %172, align 8
  %174 = icmp eq i64 %170, %173
  br i1 %174, label %175, label %326

175:                                              ; preds = %167
  %176 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %176, i32 0, i32 17
  %178 = load i64, i64* %177, align 8
  %179 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %180 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %179, i32 0, i32 17
  %181 = load i64, i64* %180, align 8
  %182 = icmp eq i64 %178, %181
  br i1 %182, label %183, label %326

183:                                              ; preds = %175
  %184 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %184, i32 0, i32 18
  %186 = load i64, i64* %185, align 8
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %188 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %187, i32 0, i32 18
  %189 = load i64, i64* %188, align 8
  %190 = icmp eq i64 %186, %189
  br i1 %190, label %191, label %326

191:                                              ; preds = %183
  %192 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %193 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %192, i32 0, i32 19
  %194 = load i64, i64* %193, align 8
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %195, i32 0, i32 19
  %197 = load i64, i64* %196, align 8
  %198 = icmp eq i64 %194, %197
  br i1 %198, label %199, label %326

199:                                              ; preds = %191
  %200 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %201 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %200, i32 0, i32 20
  %202 = load i64, i64* %201, align 8
  %203 = load i64, i64* @FALSE, align 8
  %204 = icmp eq i64 %202, %203
  br i1 %204, label %205, label %326

205:                                              ; preds = %199
  %206 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %207 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %206, i32 0, i32 20
  %208 = load i64, i64* %207, align 8
  %209 = load i64, i64* @FALSE, align 8
  %210 = icmp eq i64 %208, %209
  br i1 %210, label %211, label %326

211:                                              ; preds = %205
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %213 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %212, i32 0, i32 21
  %214 = load i64, i64* %213, align 8
  %215 = load i64, i64* @FALSE, align 8
  %216 = icmp eq i64 %214, %215
  br i1 %216, label %217, label %326

217:                                              ; preds = %211
  %218 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %219 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %218, i32 0, i32 21
  %220 = load i64, i64* %219, align 8
  %221 = load i64, i64* @FALSE, align 8
  %222 = icmp eq i64 %220, %221
  br i1 %222, label %223, label %326

223:                                              ; preds = %217
  %224 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %224, i32 0, i32 22
  %226 = load i64, i64* %225, align 8
  %227 = load i64, i64* @FALSE, align 8
  %228 = icmp eq i64 %226, %227
  br i1 %228, label %229, label %326

229:                                              ; preds = %223
  %230 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %231 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %230, i32 0, i32 22
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @FALSE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %235, label %326

235:                                              ; preds = %229
  %236 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %237 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %236, i32 0, i32 23
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @FALSE, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %326

241:                                              ; preds = %235
  %242 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %243 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %242, i32 0, i32 23
  %244 = load i64, i64* %243, align 8
  %245 = load i64, i64* @FALSE, align 8
  %246 = icmp eq i64 %244, %245
  br i1 %246, label %247, label %326

247:                                              ; preds = %241
  %248 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %249 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %248, i32 0, i32 24
  %250 = load i64, i64* %249, align 8
  %251 = load i64, i64* @FALSE, align 8
  %252 = icmp eq i64 %250, %251
  br i1 %252, label %253, label %326

253:                                              ; preds = %247
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 24
  %256 = load i64, i64* %255, align 8
  %257 = load i64, i64* @FALSE, align 8
  %258 = icmp eq i64 %256, %257
  br i1 %258, label %259, label %326

259:                                              ; preds = %253
  %260 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %261 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %262 = call i32 @vm_map_store_entry_unlink(%struct.TYPE_21__* %260, %struct.TYPE_22__* %261)
  %263 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %264 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %263, i32 0, i32 1
  %265 = load i64, i64* %264, align 8
  %266 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %267 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = icmp slt i64 %265, %268
  %270 = zext i1 %269 to i32
  %271 = call i32 @assert(i32 %270)
  %272 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %272, i32 0, i32 11
  %274 = load i64, i64* %273, align 8
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %284

276:                                              ; preds = %259
  %277 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %281 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_21__* %280)
  %282 = call i32 @VM_MAP_PAGE_ALIGNED(i64 %279, i32 %281)
  %283 = call i32 @assert(i32 %282)
  br label %284

284:                                              ; preds = %276, %259
  %285 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %286 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %285, i32 0, i32 1
  %287 = load i64, i64* %286, align 8
  %288 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %288, i32 0, i32 1
  store i64 %287, i64* %289, align 8
  %290 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %291 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %292 = call i64 @VME_OFFSET(%struct.TYPE_22__* %291)
  %293 = call i32 @VME_OFFSET_SET(%struct.TYPE_22__* %290, i64 %292)
  %294 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %295 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %294, i32 0, i32 0
  %296 = load i64, i64* %295, align 8
  %297 = icmp ne i64 %296, 0
  br i1 %297, label %298, label %303

298:                                              ; preds = %284
  %299 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %300 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %301 = load i32, i32* @TRUE, align 4
  %302 = call i32 @vm_map_store_update_first_free(%struct.TYPE_21__* %299, %struct.TYPE_22__* %300, i32 %301)
  br label %303

303:                                              ; preds = %298, %284
  %304 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %304, i32 0, i32 2
  %306 = load i64, i64* %305, align 8
  %307 = icmp ne i64 %306, 0
  br i1 %307, label %308, label %312

308:                                              ; preds = %303
  %309 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %310 = call i32 @VME_SUBMAP(%struct.TYPE_22__* %309)
  %311 = call i32 @vm_map_deallocate(i32 %310)
  br label %316

312:                                              ; preds = %303
  %313 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %314 = call i64 @VME_OBJECT(%struct.TYPE_22__* %313)
  %315 = call i32 @vm_object_deallocate(i64 %314)
  br label %316

316:                                              ; preds = %312, %308
  %317 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %318 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %319 = call i32 @vm_map_entry_dispose(%struct.TYPE_21__* %317, %struct.TYPE_22__* %318)
  %320 = load %struct.TYPE_21__*, %struct.TYPE_21__** %3, align 8
  %321 = load %struct.TYPE_22__*, %struct.TYPE_22__** %4, align 8
  %322 = call i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_21__* %320, %struct.TYPE_22__* %321)
  %323 = load i32, i32* @c_vm_map_simplified, align 4
  %324 = add nsw i32 %323, 1
  store i32 %324, i32* @c_vm_map_simplified, align 4
  %325 = call i32 @counter(i32 %323)
  br label %326

326:                                              ; preds = %316, %253, %247, %241, %235, %229, %223, %217, %211, %205, %199, %191, %183, %175, %167, %159, %151, %143, %135, %127, %119, %111, %105, %97, %89, %81, %73, %65, %57, %43, %37, %29, %21, %16, %2
  ret void
}

declare dso_local i32 @counter(i32) #1

declare dso_local %struct.TYPE_22__* @vm_map_to_entry(%struct.TYPE_21__*) #1

declare dso_local i64 @VME_OBJECT(%struct.TYPE_22__*) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_22__*) #1

declare dso_local i64 @VME_ALIAS(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_map_store_entry_unlink(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VM_MAP_PAGE_ALIGNED(i64, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_21__*) #1

declare dso_local i32 @VME_OFFSET_SET(%struct.TYPE_22__*, i64) #1

declare dso_local i32 @vm_map_store_update_first_free(%struct.TYPE_21__*, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @vm_map_deallocate(i32) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_22__*) #1

declare dso_local i32 @vm_object_deallocate(i64) #1

declare dso_local i32 @vm_map_entry_dispose(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
