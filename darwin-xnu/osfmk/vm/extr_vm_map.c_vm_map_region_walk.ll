; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_region_walk.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/vm/extr_vm_map.c_vm_map_region_walk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_object = type { i32, i64, i64, i64, i64, %struct.vm_object*, i64, i32, i32, i32, i64 }
%struct.TYPE_20__ = type { i32, i64 }
%struct.TYPE_21__ = type { i64, %struct.TYPE_21__*, i64, i64, i64, i64 }
%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { %struct.TYPE_20__* }

@SM_EMPTY = common dso_local global i64 0, align 8
@SM_LARGE_PAGE = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_PRESENT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_ALTACCT = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_REUSABLE = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_INTERNAL = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_COMPRESSED = common dso_local global i32 0, align 4
@PMAP_QUERY_PAGE_COMPRESSED_ALTACCT = common dso_local global i32 0, align 4
@VM_PURGABLE_NONVOLATILE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_PURGABLE_VOLATILE = common dso_local global i64 0, align 8
@VM_PURGABLE_EMPTY = common dso_local global i64 0, align 8
@VM_PURGABLE_DENY = common dso_local global i64 0, align 8
@PAGE_SIZE_64 = common dso_local global i64 0, align 8
@VM_OBJECT_NULL = common dso_local global %struct.vm_object* null, align 8
@SM_COW = common dso_local global i64 0, align 8
@SM_PRIVATE = common dso_local global i64 0, align 8
@SM_TRUESHARED = common dso_local global i64 0, align 8
@SM_SHARED = common dso_local global i64 0, align 8
@SM_PRIVATE_ALIASED = common dso_local global i64 0, align 8
@SM_SHARED_ALIASED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vm_map_region_walk(%struct.TYPE_20__* %0, i64 %1, %struct.TYPE_21__* %2, i64 %3, i32 %4, %struct.TYPE_19__* %5, i64 %6, i32 %7) #0 {
  %9 = alloca %struct.TYPE_20__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_21__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_19__*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.vm_object*, align 8
  %18 = alloca %struct.vm_object*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca %struct.vm_object*, align 8
  %23 = alloca i32, align 4
  %24 = alloca i64, align 8
  %25 = alloca i32, align 4
  %26 = alloca %struct.vm_object*, align 8
  %27 = alloca %struct.TYPE_21__*, align 8
  %28 = alloca %struct.TYPE_21__*, align 8
  %29 = alloca i32, align 4
  store %struct.TYPE_20__* %0, %struct.TYPE_20__** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %11, align 8
  store i64 %3, i64* %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.TYPE_19__* %5, %struct.TYPE_19__** %14, align 8
  store i64 %6, i64* %15, align 8
  store i32 %7, i32* %16, align 4
  %30 = call i64 (...) @task_self_region_footprint()
  store i64 %30, i64* %24, align 8
  %31 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %32 = call %struct.vm_object* @VME_OBJECT(%struct.TYPE_21__* %31)
  %33 = icmp eq %struct.vm_object* %32, null
  br i1 %33, label %50, label %34

34:                                               ; preds = %8
  %35 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %36 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %35, i32 0, i32 5
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %41 = call %struct.vm_object* @VME_OBJECT(%struct.TYPE_21__* %40)
  %42 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %39
  %46 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %46, i32 0, i32 4
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %56, label %50

50:                                               ; preds = %45, %34, %8
  %51 = load i64, i64* @SM_EMPTY, align 8
  %52 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %53 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %52, i32 0, i32 0
  store i64 %51, i64* %53, align 8
  %54 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  store i32 0, i32* %55, align 8
  br label %521

56:                                               ; preds = %45, %39
  %57 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 4
  %59 = load i64, i64* %58, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %78

61:                                               ; preds = %56
  %62 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %63 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %62, i32 0, i32 2
  store i32 0, i32* %63, align 4
  %64 = load i64, i64* @SM_LARGE_PAGE, align 8
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  %67 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %67, i32 0, i32 1
  store i32 1, i32* %68, align 8
  %69 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %70 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %69, i32 0, i32 3
  store i32 0, i32* %70, align 8
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @PAGE_SHIFT, align 4
  %73 = ashr i32 %71, %72
  %74 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %77 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %76, i32 0, i32 2
  store i32 0, i32* %77, align 4
  br label %521

78:                                               ; preds = %56
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %80 = call %struct.vm_object* @VME_OBJECT(%struct.TYPE_21__* %79)
  store %struct.vm_object* %80, %struct.vm_object** %17, align 8
  %81 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %82 = call i32 @vm_object_lock(%struct.vm_object* %81)
  %83 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %84 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %21, align 4
  %86 = icmp sgt i32 %85, 1
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %89 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %87
  %93 = load i32, i32* %21, align 4
  %94 = add nsw i32 %93, -1
  store i32 %94, i32* %21, align 4
  br label %95

95:                                               ; preds = %92, %87, %78
  %96 = load i64, i64* %15, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %315

98:                                               ; preds = %95
  %99 = load i64, i64* %12, align 8
  %100 = load i32, i32* %13, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  store i64 %102, i64* %19, align 8
  br label %103

103:                                              ; preds = %303, %98
  %104 = load i64, i64* %12, align 8
  %105 = load i64, i64* %19, align 8
  %106 = icmp slt i64 %104, %105
  br i1 %106, label %107, label %310

107:                                              ; preds = %103
  %108 = load i64, i64* %24, align 8
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %294

110:                                              ; preds = %107
  store i32 0, i32* %25, align 4
  %111 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %112 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %119

115:                                              ; preds = %110
  %116 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 @vm_map_corpse_footprint_query_page_info(%struct.TYPE_20__* %116, i64 %117, i32* %25)
  br label %125

119:                                              ; preds = %110
  %120 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %121 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i64, i64* %10, align 8
  %124 = call i32 @pmap_query_page_info(i32 %122, i64 %123, i32* %25)
  br label %125

125:                                              ; preds = %119, %115
  %126 = load i32, i32* %25, align 4
  %127 = load i32, i32* @PMAP_QUERY_PAGE_PRESENT, align 4
  %128 = and i32 %126, %127
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %168

130:                                              ; preds = %125
  %131 = load i32, i32* %25, align 4
  %132 = load i32, i32* @PMAP_QUERY_PAGE_ALTACCT, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %140, label %135

135:                                              ; preds = %130
  %136 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %137 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 4
  %139 = add i32 %138, 1
  store i32 %139, i32* %137, align 4
  br label %140

140:                                              ; preds = %135, %130
  %141 = load i32, i32* %25, align 4
  %142 = load i32, i32* @PMAP_QUERY_PAGE_REUSABLE, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %140
  %146 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %147 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 8
  %149 = add nsw i32 %148, 1
  store i32 %149, i32* %147, align 8
  br label %167

150:                                              ; preds = %140
  %151 = load i32, i32* %25, align 4
  %152 = load i32, i32* @PMAP_QUERY_PAGE_INTERNAL, align 4
  %153 = and i32 %151, %152
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %160

155:                                              ; preds = %150
  %156 = load i32, i32* %25, align 4
  %157 = load i32, i32* @PMAP_QUERY_PAGE_ALTACCT, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %155, %150
  br label %166

161:                                              ; preds = %155
  %162 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 5
  %164 = load i32, i32* %163, align 8
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %163, align 8
  br label %166

166:                                              ; preds = %161, %160
  br label %167

167:                                              ; preds = %166, %145
  br label %186

168:                                              ; preds = %125
  %169 = load i32, i32* %25, align 4
  %170 = load i32, i32* @PMAP_QUERY_PAGE_COMPRESSED, align 4
  %171 = and i32 %169, %170
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %185

173:                                              ; preds = %168
  %174 = load i32, i32* %25, align 4
  %175 = load i32, i32* @PMAP_QUERY_PAGE_COMPRESSED_ALTACCT, align 4
  %176 = and i32 %174, %175
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %178, label %179

178:                                              ; preds = %173
  br label %184

179:                                              ; preds = %173
  %180 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %181 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %180, i32 0, i32 6
  %182 = load i32, i32* %181, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %181, align 4
  br label %184

184:                                              ; preds = %179, %178
  br label %185

185:                                              ; preds = %184, %168
  br label %186

186:                                              ; preds = %185, %167
  %187 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %188 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %187, i32 0, i32 1
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* @VM_PURGABLE_NONVOLATILE, align 8
  %191 = icmp eq i64 %189, %190
  br i1 %191, label %192, label %229

192:                                              ; preds = %186
  %193 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %194 = call %struct.TYPE_18__* @VM_OBJECT_OWNER(%struct.vm_object* %193)
  %195 = icmp ne %struct.TYPE_18__* %194, null
  br i1 %195, label %196, label %229

196:                                              ; preds = %192
  %197 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %198 = call %struct.TYPE_18__* @VM_OBJECT_OWNER(%struct.vm_object* %197)
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 0
  %200 = load %struct.TYPE_20__*, %struct.TYPE_20__** %199, align 8
  %201 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %202 = icmp eq %struct.TYPE_20__* %200, %201
  br i1 %202, label %203, label %229

203:                                              ; preds = %196
  %204 = load i64, i64* %10, align 8
  %205 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %205, i32 0, i32 0
  %207 = load i64, i64* %206, align 8
  %208 = sub nsw i64 %204, %207
  %209 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %210 = call i64 @VME_OFFSET(%struct.TYPE_21__* %209)
  %211 = add nsw i64 %208, %210
  %212 = load i64, i64* @PAGE_SIZE, align 8
  %213 = sdiv i64 %211, %212
  %214 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %215 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %214, i32 0, i32 2
  %216 = load i64, i64* %215, align 8
  %217 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %218 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %217, i32 0, i32 9
  %219 = load i32, i32* %218, align 8
  %220 = call i64 @vm_compressor_pager_get_count(i32 %219)
  %221 = add nsw i64 %216, %220
  %222 = icmp slt i64 %213, %221
  br i1 %222, label %223, label %228

223:                                              ; preds = %203
  %224 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %224, i32 0, i32 4
  %226 = load i32, i32* %225, align 4
  %227 = add i32 %226, 1
  store i32 %227, i32* %225, align 4
  br label %228

228:                                              ; preds = %223, %203
  br label %293

229:                                              ; preds = %196, %192, %186
  %230 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %231 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %230, i32 0, i32 1
  %232 = load i64, i64* %231, align 8
  %233 = load i64, i64* @VM_PURGABLE_VOLATILE, align 8
  %234 = icmp eq i64 %232, %233
  br i1 %234, label %241, label %235

235:                                              ; preds = %229
  %236 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %237 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @VM_PURGABLE_EMPTY, align 8
  %240 = icmp eq i64 %238, %239
  br i1 %240, label %241, label %273

241:                                              ; preds = %235, %229
  %242 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %243 = call %struct.TYPE_18__* @VM_OBJECT_OWNER(%struct.vm_object* %242)
  %244 = icmp ne %struct.TYPE_18__* %243, null
  br i1 %244, label %245, label %273

245:                                              ; preds = %241
  %246 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %247 = call %struct.TYPE_18__* @VM_OBJECT_OWNER(%struct.vm_object* %246)
  %248 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %247, i32 0, i32 0
  %249 = load %struct.TYPE_20__*, %struct.TYPE_20__** %248, align 8
  %250 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %251 = icmp eq %struct.TYPE_20__* %249, %250
  br i1 %251, label %252, label %273

252:                                              ; preds = %245
  %253 = load i64, i64* %10, align 8
  %254 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %255 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %254, i32 0, i32 0
  %256 = load i64, i64* %255, align 8
  %257 = sub nsw i64 %253, %256
  %258 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %259 = call i64 @VME_OFFSET(%struct.TYPE_21__* %258)
  %260 = add nsw i64 %257, %259
  %261 = load i64, i64* @PAGE_SIZE, align 8
  %262 = sdiv i64 %260, %261
  %263 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %264 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %263, i32 0, i32 3
  %265 = load i64, i64* %264, align 8
  %266 = icmp slt i64 %262, %265
  br i1 %266, label %267, label %272

267:                                              ; preds = %252
  %268 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %269 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %268, i32 0, i32 4
  %270 = load i32, i32* %269, align 4
  %271 = add i32 %270, 1
  store i32 %271, i32* %269, align 4
  br label %272

272:                                              ; preds = %267, %252
  br label %292

273:                                              ; preds = %245, %241, %235
  %274 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %275 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %274, i32 0, i32 1
  %276 = load i64, i64* %275, align 8
  %277 = load i64, i64* @VM_PURGABLE_DENY, align 8
  %278 = icmp ne i64 %276, %277
  br i1 %278, label %279, label %280

279:                                              ; preds = %273
  br label %291

280:                                              ; preds = %273
  %281 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %282 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %281, i32 0, i32 3
  %283 = load i64, i64* %282, align 8
  %284 = icmp ne i64 %283, 0
  br i1 %284, label %285, label %290

285:                                              ; preds = %280
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 5
  %288 = load i32, i32* %287, align 8
  %289 = add nsw i32 %288, 1
  store i32 %289, i32* %287, align 8
  br label %290

290:                                              ; preds = %285, %280
  br label %291

291:                                              ; preds = %290, %279
  br label %292

292:                                              ; preds = %291, %272
  br label %293

293:                                              ; preds = %292, %228
  br label %303

294:                                              ; preds = %107
  %295 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %296 = load i64, i64* %10, align 8
  %297 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %298 = load i64, i64* %12, align 8
  %299 = load i32, i32* %21, align 4
  %300 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %301 = load i32, i32* %16, align 4
  %302 = call i32 @vm_map_region_look_for_page(%struct.TYPE_20__* %295, i64 %296, %struct.vm_object* %297, i64 %298, i32 %299, i32 0, %struct.TYPE_19__* %300, i32 %301)
  br label %303

303:                                              ; preds = %294, %293
  %304 = load i64, i64* @PAGE_SIZE_64, align 8
  %305 = load i64, i64* %12, align 8
  %306 = add nsw i64 %305, %304
  store i64 %306, i64* %12, align 8
  %307 = load i64, i64* @PAGE_SIZE, align 8
  %308 = load i64, i64* %10, align 8
  %309 = add nsw i64 %308, %307
  store i64 %309, i64* %10, align 8
  br label %103

310:                                              ; preds = %103
  %311 = load i64, i64* %24, align 8
  %312 = icmp ne i64 %311, 0
  br i1 %312, label %313, label %314

313:                                              ; preds = %310
  br label %316

314:                                              ; preds = %310
  br label %377

315:                                              ; preds = %95
  br label %316

316:                                              ; preds = %315, %313
  %317 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %318 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %317, i32 0, i32 5
  %319 = load %struct.vm_object*, %struct.vm_object** %318, align 8
  store %struct.vm_object* %319, %struct.vm_object** %22, align 8
  store i32 0, i32* %23, align 4
  %320 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %321 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %320, i32 0, i32 8
  %322 = load i32, i32* %321, align 4
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %332, label %324

324:                                              ; preds = %316
  %325 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %326 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %325, i32 0, i32 7
  %327 = load i32, i32* %326, align 8
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %332, label %329

329:                                              ; preds = %324
  %330 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %331 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %330, i32 0, i32 3
  store i32 1, i32* %331, align 8
  br label %332

332:                                              ; preds = %329, %324, %316
  %333 = load %struct.vm_object*, %struct.vm_object** %22, align 8
  %334 = load %struct.vm_object*, %struct.vm_object** @VM_OBJECT_NULL, align 8
  %335 = icmp ne %struct.vm_object* %333, %334
  br i1 %335, label %336, label %373

336:                                              ; preds = %332
  %337 = load %struct.vm_object*, %struct.vm_object** %22, align 8
  %338 = call i32 @vm_object_lock(%struct.vm_object* %337)
  br label %339

339:                                              ; preds = %369, %336
  %340 = load %struct.vm_object*, %struct.vm_object** %22, align 8
  %341 = load %struct.vm_object*, %struct.vm_object** @VM_OBJECT_NULL, align 8
  %342 = icmp ne %struct.vm_object* %340, %341
  br i1 %342, label %343, label %372

343:                                              ; preds = %339
  %344 = load %struct.vm_object*, %struct.vm_object** %22, align 8
  %345 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %344, i32 0, i32 8
  %346 = load i32, i32* %345, align 4
  %347 = icmp ne i32 %346, 0
  br i1 %347, label %356, label %348

348:                                              ; preds = %343
  %349 = load %struct.vm_object*, %struct.vm_object** %22, align 8
  %350 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %349, i32 0, i32 7
  %351 = load i32, i32* %350, align 8
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %356, label %353

353:                                              ; preds = %348
  %354 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %355 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %354, i32 0, i32 3
  store i32 1, i32* %355, align 8
  br label %356

356:                                              ; preds = %353, %348, %343
  %357 = load %struct.vm_object*, %struct.vm_object** %22, align 8
  %358 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %357, i32 0, i32 5
  %359 = load %struct.vm_object*, %struct.vm_object** %358, align 8
  store %struct.vm_object* %359, %struct.vm_object** %26, align 8
  %360 = load %struct.vm_object*, %struct.vm_object** %26, align 8
  %361 = icmp ne %struct.vm_object* %360, null
  br i1 %361, label %362, label %365

362:                                              ; preds = %356
  %363 = load %struct.vm_object*, %struct.vm_object** %26, align 8
  %364 = call i32 @vm_object_lock(%struct.vm_object* %363)
  br label %365

365:                                              ; preds = %362, %356
  %366 = load %struct.vm_object*, %struct.vm_object** %22, align 8
  %367 = call i32 @vm_object_unlock(%struct.vm_object* %366)
  %368 = load %struct.vm_object*, %struct.vm_object** %26, align 8
  store %struct.vm_object* %368, %struct.vm_object** %22, align 8
  br label %369

369:                                              ; preds = %365
  %370 = load i32, i32* %23, align 4
  %371 = add nsw i32 %370, 1
  store i32 %371, i32* %23, align 4
  br label %339

372:                                              ; preds = %339
  br label %373

373:                                              ; preds = %372, %332
  %374 = load i32, i32* %23, align 4
  %375 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %376 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %375, i32 0, i32 2
  store i32 %374, i32* %376, align 4
  br label %377

377:                                              ; preds = %373, %314
  %378 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %379 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %378, i32 0, i32 2
  %380 = load i32, i32* %379, align 4
  %381 = icmp ne i32 %380, 0
  br i1 %381, label %387, label %382

382:                                              ; preds = %377
  %383 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %384 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %383, i32 0, i32 2
  %385 = load i64, i64* %384, align 8
  %386 = icmp ne i64 %385, 0
  br i1 %386, label %387, label %391

387:                                              ; preds = %382, %377
  %388 = load i64, i64* @SM_COW, align 8
  %389 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %390 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %389, i32 0, i32 0
  store i64 %388, i64* %390, align 8
  br label %413

391:                                              ; preds = %382
  %392 = load i32, i32* %21, align 4
  %393 = icmp eq i32 %392, 1
  br i1 %393, label %394, label %398

394:                                              ; preds = %391
  %395 = load i64, i64* @SM_PRIVATE, align 8
  %396 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %397 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %396, i32 0, i32 0
  store i64 %395, i64* %397, align 8
  br label %412

398:                                              ; preds = %391
  %399 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %400 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %399, i32 0, i32 6
  %401 = load i64, i64* %400, align 8
  %402 = icmp ne i64 %401, 0
  br i1 %402, label %403, label %407

403:                                              ; preds = %398
  %404 = load i64, i64* @SM_TRUESHARED, align 8
  %405 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %406 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %405, i32 0, i32 0
  store i64 %404, i64* %406, align 8
  br label %411

407:                                              ; preds = %398
  %408 = load i64, i64* @SM_SHARED, align 8
  %409 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %410 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %409, i32 0, i32 0
  store i64 %408, i64* %410, align 8
  br label %411

411:                                              ; preds = %407, %403
  br label %412

412:                                              ; preds = %411, %394
  br label %413

413:                                              ; preds = %412, %387
  %414 = load i32, i32* %21, align 4
  %415 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %416 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %415, i32 0, i32 2
  %417 = load i32, i32* %416, align 4
  %418 = sub nsw i32 %414, %417
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i32 0, i32 1
  store i32 %418, i32* %420, align 8
  store i32 0, i32* %20, align 4
  br label %421

421:                                              ; preds = %457, %413
  %422 = load i32, i32* %20, align 4
  %423 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %424 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %423, i32 0, i32 2
  %425 = load i32, i32* %424, align 4
  %426 = icmp slt i32 %422, %425
  br i1 %426, label %427, label %460

427:                                              ; preds = %421
  %428 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %429 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %428, i32 0, i32 5
  %430 = load %struct.vm_object*, %struct.vm_object** %429, align 8
  store %struct.vm_object* %430, %struct.vm_object** %18, align 8
  %431 = icmp eq %struct.vm_object* %430, null
  br i1 %431, label %432, label %433

432:                                              ; preds = %427
  br label %460

433:                                              ; preds = %427
  %434 = load %struct.vm_object*, %struct.vm_object** %18, align 8
  %435 = call i32 @vm_object_lock(%struct.vm_object* %434)
  %436 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %437 = call i32 @vm_object_unlock(%struct.vm_object* %436)
  %438 = load %struct.vm_object*, %struct.vm_object** %18, align 8
  %439 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %438, i32 0, i32 0
  %440 = load i32, i32* %439, align 8
  store i32 %440, i32* %21, align 4
  %441 = icmp sgt i32 %440, 1
  br i1 %441, label %442, label %450

442:                                              ; preds = %433
  %443 = load %struct.vm_object*, %struct.vm_object** %18, align 8
  %444 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %443, i32 0, i32 4
  %445 = load i64, i64* %444, align 8
  %446 = icmp ne i64 %445, 0
  br i1 %446, label %447, label %450

447:                                              ; preds = %442
  %448 = load i32, i32* %21, align 4
  %449 = add nsw i32 %448, -1
  store i32 %449, i32* %21, align 4
  br label %450

450:                                              ; preds = %447, %442, %433
  %451 = load i32, i32* %21, align 4
  %452 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 1
  %454 = load i32, i32* %453, align 8
  %455 = add nsw i32 %454, %451
  store i32 %455, i32* %453, align 8
  %456 = load %struct.vm_object*, %struct.vm_object** %18, align 8
  store %struct.vm_object* %456, %struct.vm_object** %17, align 8
  br label %457

457:                                              ; preds = %450
  %458 = load i32, i32* %20, align 4
  %459 = add nsw i32 %458, 1
  store i32 %459, i32* %20, align 4
  br label %421

460:                                              ; preds = %432, %421
  %461 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %462 = call i32 @vm_object_unlock(%struct.vm_object* %461)
  %463 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %464 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %463, i32 0, i32 0
  %465 = load i64, i64* %464, align 8
  %466 = load i64, i64* @SM_SHARED, align 8
  %467 = icmp eq i64 %465, %466
  br i1 %467, label %468, label %521

468:                                              ; preds = %460
  %469 = load %struct.TYPE_21__*, %struct.TYPE_21__** %11, align 8
  %470 = call %struct.vm_object* @VME_OBJECT(%struct.TYPE_21__* %469)
  store %struct.vm_object* %470, %struct.vm_object** %17, align 8
  %471 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %472 = call %struct.TYPE_21__* @vm_map_to_entry(%struct.TYPE_20__* %471)
  store %struct.TYPE_21__* %472, %struct.TYPE_21__** %28, align 8
  store i32 0, i32* %29, align 4
  %473 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %474 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %473, i32 0, i32 0
  %475 = load i32, i32* %474, align 8
  store i32 %475, i32* %21, align 4
  %476 = icmp sgt i32 %475, 1
  br i1 %476, label %477, label %485

477:                                              ; preds = %468
  %478 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %479 = getelementptr inbounds %struct.vm_object, %struct.vm_object* %478, i32 0, i32 4
  %480 = load i64, i64* %479, align 8
  %481 = icmp ne i64 %480, 0
  br i1 %481, label %482, label %485

482:                                              ; preds = %477
  %483 = load i32, i32* %21, align 4
  %484 = add nsw i32 %483, -1
  store i32 %484, i32* %21, align 4
  br label %485

485:                                              ; preds = %482, %477, %468
  %486 = load %struct.TYPE_20__*, %struct.TYPE_20__** %9, align 8
  %487 = call %struct.TYPE_21__* @vm_map_first_entry(%struct.TYPE_20__* %486)
  store %struct.TYPE_21__* %487, %struct.TYPE_21__** %27, align 8
  br label %488

488:                                              ; preds = %500, %485
  %489 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %490 = load %struct.TYPE_21__*, %struct.TYPE_21__** %28, align 8
  %491 = icmp ne %struct.TYPE_21__* %489, %490
  br i1 %491, label %492, label %504

492:                                              ; preds = %488
  %493 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %494 = load %struct.vm_object*, %struct.vm_object** %17, align 8
  %495 = call i64 @vm_map_region_count_obj_refs(%struct.TYPE_21__* %493, %struct.vm_object* %494)
  %496 = load i32, i32* %29, align 4
  %497 = sext i32 %496 to i64
  %498 = add nsw i64 %497, %495
  %499 = trunc i64 %498 to i32
  store i32 %499, i32* %29, align 4
  br label %500

500:                                              ; preds = %492
  %501 = load %struct.TYPE_21__*, %struct.TYPE_21__** %27, align 8
  %502 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %501, i32 0, i32 1
  %503 = load %struct.TYPE_21__*, %struct.TYPE_21__** %502, align 8
  store %struct.TYPE_21__* %503, %struct.TYPE_21__** %27, align 8
  br label %488

504:                                              ; preds = %488
  %505 = load i32, i32* %29, align 4
  %506 = load i32, i32* %21, align 4
  %507 = icmp eq i32 %505, %506
  br i1 %507, label %508, label %512

508:                                              ; preds = %504
  %509 = load i64, i64* @SM_PRIVATE_ALIASED, align 8
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 0
  store i64 %509, i64* %511, align 8
  br label %520

512:                                              ; preds = %504
  %513 = load i32, i32* %29, align 4
  %514 = icmp sgt i32 %513, 1
  br i1 %514, label %515, label %519

515:                                              ; preds = %512
  %516 = load i64, i64* @SM_SHARED_ALIASED, align 8
  %517 = load %struct.TYPE_19__*, %struct.TYPE_19__** %14, align 8
  %518 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %517, i32 0, i32 0
  store i64 %516, i64* %518, align 8
  br label %519

519:                                              ; preds = %515, %512
  br label %520

520:                                              ; preds = %519, %508
  br label %521

521:                                              ; preds = %50, %61, %520, %460
  ret void
}

declare dso_local i64 @task_self_region_footprint(...) #1

declare dso_local %struct.vm_object* @VME_OBJECT(%struct.TYPE_21__*) #1

declare dso_local i32 @vm_object_lock(%struct.vm_object*) #1

declare dso_local i32 @vm_map_corpse_footprint_query_page_info(%struct.TYPE_20__*, i64, i32*) #1

declare dso_local i32 @pmap_query_page_info(i32, i64, i32*) #1

declare dso_local %struct.TYPE_18__* @VM_OBJECT_OWNER(%struct.vm_object*) #1

declare dso_local i64 @VME_OFFSET(%struct.TYPE_21__*) #1

declare dso_local i64 @vm_compressor_pager_get_count(i32) #1

declare dso_local i32 @vm_map_region_look_for_page(%struct.TYPE_20__*, i64, %struct.vm_object*, i64, i32, i32, %struct.TYPE_19__*, i32) #1

declare dso_local i32 @vm_object_unlock(%struct.vm_object*) #1

declare dso_local %struct.TYPE_21__* @vm_map_to_entry(%struct.TYPE_20__*) #1

declare dso_local %struct.TYPE_21__* @vm_map_first_entry(%struct.TYPE_20__*) #1

declare dso_local i64 @vm_map_region_count_obj_refs(%struct.TYPE_21__*, %struct.vm_object*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
