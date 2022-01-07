; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_remap.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_29__ = type { i64, i32, i32, i32, i64, i8*, i8*, %struct.TYPE_29__* }
%struct.TYPE_28__ = type { i64, i64, i64, i32, i32, i32, %struct.TYPE_26__ }
%struct.TYPE_26__ = type { i32 }
%struct.vm_map_header = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { %struct.TYPE_29__* }

@VM_MAP_ENTRY_NULL = common dso_local global %struct.TYPE_29__* null, align 8
@VM_MAP_NULL = common dso_local global %struct.TYPE_28__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@VM_FLAGS_RETURN_DATA_ADDR = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i64 0, align 8
@VM_FLAGS_RESILIENT_CODESIGN = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i8* null, align 8
@TRUE = common dso_local global i64 0, align 8
@VM_KERN_MEMORY_MLOCK = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @vm_map_remap(%struct.TYPE_28__* %0, i64* %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, %struct.TYPE_28__* %7, i64 %8, i32 %9, i32* %10, i32* %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_28__*, align 8
  %16 = alloca i64*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.TYPE_28__*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32*, align 8
  %26 = alloca i32*, align 8
  %27 = alloca i32, align 4
  %28 = alloca i64, align 8
  %29 = alloca %struct.TYPE_29__*, align 8
  %30 = alloca %struct.TYPE_29__*, align 8
  %31 = alloca %struct.TYPE_29__*, align 8
  %32 = alloca %struct.vm_map_header, align 8
  %33 = alloca i64, align 8
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %15, align 8
  store i64* %1, i64** %16, align 8
  store i64 %2, i64* %17, align 8
  store i64 %3, i64* %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store %struct.TYPE_28__* %7, %struct.TYPE_28__** %22, align 8
  store i64 %8, i64* %23, align 8
  store i32 %9, i32* %24, align 4
  store i32* %10, i32** %25, align 8
  store i32* %11, i32** %26, align 8
  store i32 %12, i32* %27, align 4
  %34 = load %struct.TYPE_29__*, %struct.TYPE_29__** @VM_MAP_ENTRY_NULL, align 8
  store %struct.TYPE_29__* %34, %struct.TYPE_29__** %30, align 8
  %35 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %36 = load %struct.TYPE_28__*, %struct.TYPE_28__** @VM_MAP_NULL, align 8
  %37 = icmp eq %struct.TYPE_28__* %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %13
  %39 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %39, i64* %14, align 8
  br label %292

40:                                               ; preds = %13
  %41 = load i32, i32* %27, align 4
  switch i32 %41, label %51 [
    i32 129, label %42
    i32 130, label %42
    i32 128, label %42
  ]

42:                                               ; preds = %40, %40, %40
  %43 = load i64, i64* %17, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %50

45:                                               ; preds = %42
  %46 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %47 = load %struct.TYPE_28__*, %struct.TYPE_28__** @VM_MAP_NULL, align 8
  %48 = icmp ne %struct.TYPE_28__* %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %53

50:                                               ; preds = %45, %42
  br label %51

51:                                               ; preds = %40, %50
  %52 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %52, i64* %14, align 8
  br label %292

53:                                               ; preds = %49
  %54 = load i32, i32* %19, align 4
  %55 = load i32, i32* @VM_FLAGS_RETURN_DATA_ADDR, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %73

58:                                               ; preds = %53
  %59 = load i64, i64* %23, align 8
  %60 = load i64, i64* %23, align 8
  %61 = load i32, i32* @PAGE_MASK, align 4
  %62 = call i64 @vm_map_trunc_page(i64 %60, i32 %61)
  %63 = sub nsw i64 %59, %62
  store i64 %63, i64* %33, align 8
  %64 = load i64, i64* %23, align 8
  %65 = load i64, i64* %17, align 8
  %66 = add nsw i64 %64, %65
  %67 = load i64, i64* %23, align 8
  %68 = load i32, i32* @PAGE_MASK, align 4
  %69 = call i64 @vm_map_trunc_page(i64 %67, i32 %68)
  %70 = sub nsw i64 %66, %69
  %71 = load i32, i32* @PAGE_MASK, align 4
  %72 = call i64 @vm_map_round_page(i64 %70, i32 %71)
  store i64 %72, i64* %17, align 8
  br label %77

73:                                               ; preds = %53
  %74 = load i64, i64* %17, align 8
  %75 = load i32, i32* @PAGE_MASK, align 4
  %76 = call i64 @vm_map_round_page(i64 %74, i32 %75)
  store i64 %76, i64* %17, align 8
  br label %77

77:                                               ; preds = %73, %58
  %78 = load i64, i64* %17, align 8
  %79 = icmp eq i64 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %77
  %81 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %81, i64* %14, align 8
  br label %292

82:                                               ; preds = %77
  %83 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %84 = load i64, i64* %23, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load i32, i32* %24, align 4
  %87 = load i32*, i32** %25, align 8
  %88 = load i32*, i32** %26, align 8
  %89 = load i32, i32* %27, align 4
  %90 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 6
  %92 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.TYPE_28__*, %struct.TYPE_28__** %22, align 8
  %95 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %96 = icmp eq %struct.TYPE_28__* %94, %95
  %97 = zext i1 %96 to i32
  %98 = load i32, i32* %20, align 4
  %99 = call i64 @vm_map_remap_extract(%struct.TYPE_28__* %83, i64 %84, i64 %85, i32 %86, %struct.vm_map_header* %32, i32* %87, i32* %88, i32 %89, i32 %93, i32 %97, i32 %98)
  store i64 %99, i64* %28, align 8
  %100 = load i64, i64* %28, align 8
  %101 = load i64, i64* @KERN_SUCCESS, align 8
  %102 = icmp ne i64 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %82
  %104 = load i64, i64* %28, align 8
  store i64 %104, i64* %14, align 8
  br label %292

105:                                              ; preds = %82
  %106 = load i64*, i64** %16, align 8
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %109 = call i32 @VM_MAP_PAGE_MASK(%struct.TYPE_28__* %108)
  %110 = call i64 @vm_map_trunc_page(i64 %107, i32 %109)
  %111 = load i64*, i64** %16, align 8
  store i64 %110, i64* %111, align 8
  %112 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %113 = call i32 @vm_map_lock(%struct.TYPE_28__* %112)
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %115 = load i64*, i64** %16, align 8
  %116 = load i64, i64* %17, align 8
  %117 = load i64, i64* %18, align 8
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %20, align 4
  %120 = load i32, i32* %21, align 4
  %121 = call i64 @vm_map_remap_range_allocate(%struct.TYPE_28__* %114, i64* %115, i64 %116, i64 %117, i32 %118, i32 %119, i32 %120, %struct.TYPE_29__** %30)
  store i64 %121, i64* %28, align 8
  %122 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %32, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load %struct.TYPE_29__*, %struct.TYPE_29__** %123, align 8
  store %struct.TYPE_29__* %124, %struct.TYPE_29__** %29, align 8
  br label %125

125:                                              ; preds = %199, %105
  %126 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %127 = getelementptr inbounds %struct.vm_map_header, %struct.vm_map_header* %32, i32 0, i32 0
  %128 = call %struct.TYPE_29__* @CAST_TO_VM_MAP_ENTRY(%struct.TYPE_27__* %127)
  %129 = icmp ne %struct.TYPE_29__* %126, %128
  br i1 %129, label %130, label %201

130:                                              ; preds = %125
  %131 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %132 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %131, i32 0, i32 7
  %133 = load %struct.TYPE_29__*, %struct.TYPE_29__** %132, align 8
  store %struct.TYPE_29__* %133, %struct.TYPE_29__** %31, align 8
  %134 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %135 = call i32 @_vm_map_store_entry_unlink(%struct.vm_map_header* %32, %struct.TYPE_29__* %134)
  %136 = load i64, i64* %28, align 8
  %137 = load i64, i64* @KERN_SUCCESS, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %182

139:                                              ; preds = %130
  %140 = load i32, i32* %19, align 4
  %141 = load i32, i32* @VM_FLAGS_RESILIENT_CODESIGN, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %154

144:                                              ; preds = %139
  %145 = load i8*, i8** @VM_PROT_READ, align 8
  %146 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %147 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %146, i32 0, i32 6
  store i8* %145, i8** %147, align 8
  %148 = load i8*, i8** @VM_PROT_READ, align 8
  %149 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %150 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %149, i32 0, i32 5
  store i8* %148, i8** %150, align 8
  %151 = load i64, i64* @TRUE, align 8
  %152 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %153 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %152, i32 0, i32 4
  store i64 %151, i64* %153, align 8
  br label %154

154:                                              ; preds = %144, %139
  %155 = load i64*, i64** %16, align 8
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %158 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %157, i32 0, i32 3
  %159 = load i32, i32* %158, align 8
  %160 = sext i32 %159 to i64
  %161 = add nsw i64 %160, %156
  %162 = trunc i64 %161 to i32
  store i32 %162, i32* %158, align 8
  %163 = load i64*, i64** %16, align 8
  %164 = load i64, i64* %163, align 8
  %165 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %166 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %165, i32 0, i32 0
  %167 = load i64, i64* %166, align 8
  %168 = add nsw i64 %167, %164
  store i64 %168, i64* %166, align 8
  %169 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 2
  %171 = load i32, i32* %170, align 4
  %172 = icmp ne i32 %171, 0
  %173 = xor i1 %172, true
  %174 = zext i1 %173 to i32
  %175 = call i32 @assert(i32 %174)
  %176 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %177 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %178 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %179 = load i32, i32* %20, align 4
  %180 = call i32 @vm_map_store_entry_link(%struct.TYPE_28__* %176, %struct.TYPE_29__* %177, %struct.TYPE_29__* %178, i32 %179)
  %181 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  store %struct.TYPE_29__* %181, %struct.TYPE_29__** %30, align 8
  br label %198

182:                                              ; preds = %130
  %183 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %184 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %191, label %187

187:                                              ; preds = %182
  %188 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %189 = call i32 @VME_OBJECT(%struct.TYPE_29__* %188)
  %190 = call i32 @vm_object_deallocate(i32 %189)
  br label %195

191:                                              ; preds = %182
  %192 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %193 = call i32 @VME_SUBMAP(%struct.TYPE_29__* %192)
  %194 = call i32 @vm_map_deallocate(i32 %193)
  br label %195

195:                                              ; preds = %191, %187
  %196 = load %struct.TYPE_29__*, %struct.TYPE_29__** %29, align 8
  %197 = call i32 @_vm_map_entry_dispose(%struct.vm_map_header* %32, %struct.TYPE_29__* %196)
  br label %198

198:                                              ; preds = %195, %154
  br label %199

199:                                              ; preds = %198
  %200 = load %struct.TYPE_29__*, %struct.TYPE_29__** %31, align 8
  store %struct.TYPE_29__* %200, %struct.TYPE_29__** %29, align 8
  br label %125

201:                                              ; preds = %125
  %202 = load i32, i32* %19, align 4
  %203 = load i32, i32* @VM_FLAGS_RESILIENT_CODESIGN, align 4
  %204 = and i32 %202, %203
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %213

206:                                              ; preds = %201
  %207 = load i8*, i8** @VM_PROT_READ, align 8
  %208 = ptrtoint i8* %207 to i32
  %209 = load i32*, i32** %25, align 8
  store i32 %208, i32* %209, align 4
  %210 = load i8*, i8** @VM_PROT_READ, align 8
  %211 = ptrtoint i8* %210 to i32
  %212 = load i32*, i32** %26, align 8
  store i32 %211, i32* %212, align 4
  br label %213

213:                                              ; preds = %206, %201
  %214 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %215 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  %217 = load i64, i64* @TRUE, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %241

219:                                              ; preds = %213
  %220 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %221 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %220, i32 0, i32 5
  %222 = load i32, i32* %221, align 8
  %223 = icmp ne i32 %222, 0
  %224 = xor i1 %223, true
  %225 = zext i1 %224 to i32
  %226 = call i32 @assert(i32 %225)
  %227 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %228 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %227, i32 0, i32 1
  %229 = load i64, i64* %228, align 8
  %230 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %231 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %230, i32 0, i32 0
  %232 = load i64, i64* %231, align 8
  %233 = icmp slt i64 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %219
  %235 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %236 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %235, i32 0, i32 0
  %237 = load i64, i64* %236, align 8
  %238 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %239 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %238, i32 0, i32 1
  store i64 %237, i64* %239, align 8
  br label %240

240:                                              ; preds = %234, %219
  br label %241

241:                                              ; preds = %240, %213
  %242 = load i64, i64* %28, align 8
  %243 = load i64, i64* @KERN_SUCCESS, align 8
  %244 = icmp eq i64 %242, %243
  br i1 %244, label %245, label %256

245:                                              ; preds = %241
  %246 = load i64, i64* %17, align 8
  %247 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %248 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 4
  %250 = sext i32 %249 to i64
  %251 = add nsw i64 %250, %246
  %252 = trunc i64 %251 to i32
  store i32 %252, i32* %248, align 4
  %253 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %254 = load %struct.TYPE_29__*, %struct.TYPE_29__** %30, align 8
  %255 = call i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_28__* %253, %struct.TYPE_29__* %254)
  br label %256

256:                                              ; preds = %245, %241
  %257 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %258 = call i32 @vm_map_unlock(%struct.TYPE_28__* %257)
  %259 = load i64, i64* %28, align 8
  %260 = load i64, i64* @KERN_SUCCESS, align 8
  %261 = icmp eq i64 %259, %260
  br i1 %261, label %262, label %280

262:                                              ; preds = %256
  %263 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %264 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %263, i32 0, i32 2
  %265 = load i64, i64* %264, align 8
  %266 = icmp ne i64 %265, 0
  br i1 %266, label %267, label %280

267:                                              ; preds = %262
  %268 = load %struct.TYPE_28__*, %struct.TYPE_28__** %15, align 8
  %269 = load i64*, i64** %16, align 8
  %270 = load i64, i64* %269, align 8
  %271 = load i64*, i64** %16, align 8
  %272 = load i64, i64* %271, align 8
  %273 = load i64, i64* %17, align 8
  %274 = add nsw i64 %272, %273
  %275 = load i32*, i32** %25, align 8
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @VM_KERN_MEMORY_MLOCK, align 4
  %278 = load i64, i64* @TRUE, align 8
  %279 = call i64 @vm_map_wire_kernel(%struct.TYPE_28__* %268, i64 %270, i64 %274, i32 %276, i32 %277, i64 %278)
  store i64 %279, i64* %28, align 8
  br label %280

280:                                              ; preds = %267, %262, %256
  %281 = load i32, i32* %19, align 4
  %282 = load i32, i32* @VM_FLAGS_RETURN_DATA_ADDR, align 4
  %283 = and i32 %281, %282
  %284 = icmp ne i32 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load i64, i64* %33, align 8
  %287 = load i64*, i64** %16, align 8
  %288 = load i64, i64* %287, align 8
  %289 = add nsw i64 %288, %286
  store i64 %289, i64* %287, align 8
  br label %290

290:                                              ; preds = %285, %280
  %291 = load i64, i64* %28, align 8
  store i64 %291, i64* %14, align 8
  br label %292

292:                                              ; preds = %290, %103, %80, %51, %38
  %293 = load i64, i64* %14, align 8
  ret i64 %293
}

declare dso_local i64 @vm_map_trunc_page(i64, i32) #1

declare dso_local i64 @vm_map_round_page(i64, i32) #1

declare dso_local i64 @vm_map_remap_extract(%struct.TYPE_28__*, i64, i64, i32, %struct.vm_map_header*, i32*, i32*, i32, i32, i32, i32) #1

declare dso_local i32 @VM_MAP_PAGE_MASK(%struct.TYPE_28__*) #1

declare dso_local i32 @vm_map_lock(%struct.TYPE_28__*) #1

declare dso_local i64 @vm_map_remap_range_allocate(%struct.TYPE_28__*, i64*, i64, i64, i32, i32, i32, %struct.TYPE_29__**) #1

declare dso_local %struct.TYPE_29__* @CAST_TO_VM_MAP_ENTRY(%struct.TYPE_27__*) #1

declare dso_local i32 @_vm_map_store_entry_unlink(%struct.vm_map_header*, %struct.TYPE_29__*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vm_map_store_entry_link(%struct.TYPE_28__*, %struct.TYPE_29__*, %struct.TYPE_29__*, i32) #1

declare dso_local i32 @vm_object_deallocate(i32) #1

declare dso_local i32 @VME_OBJECT(%struct.TYPE_29__*) #1

declare dso_local i32 @vm_map_deallocate(i32) #1

declare dso_local i32 @VME_SUBMAP(%struct.TYPE_29__*) #1

declare dso_local i32 @_vm_map_entry_dispose(%struct.vm_map_header*, %struct.TYPE_29__*) #1

declare dso_local i32 @SAVE_HINT_MAP_WRITE(%struct.TYPE_28__*, %struct.TYPE_29__*) #1

declare dso_local i32 @vm_map_unlock(%struct.TYPE_28__*) #1

declare dso_local i64 @vm_map_wire_kernel(%struct.TYPE_28__*, i64, i64, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
