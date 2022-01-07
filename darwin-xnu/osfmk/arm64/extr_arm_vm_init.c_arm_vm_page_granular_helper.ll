; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_arm_vm_page_granular_helper.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm64/extr_arm_vm_init.c_arm_vm_page_granular_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_TT_L2_OFFMASK = common dso_local global i32 0, align 4
@gVirtBase = common dso_local global i32 0, align 4
@gPhysBase = common dso_local global i32 0, align 4
@real_avail_end = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TABLE_MASK = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i32 0, align 4
@ARM_TTE_VALID = common dso_local global i32 0, align 4
@ARM_TT_L3_INDEX_MASK = common dso_local global i32 0, align 4
@ARM_TT_L3_SHIFT = common dso_local global i32 0, align 4
@ARM_PTE_AF = common dso_local global i32 0, align 4
@SH_OUTER_MEMORY = common dso_local global i32 0, align 4
@ARM_PTE_TYPE = common dso_local global i32 0, align 4
@CACHE_ATTRINDX_DEFAULT = common dso_local global i32 0, align 4
@ARM_PTE_NX = common dso_local global i32 0, align 4
@ARM_PTE_PNX = common dso_local global i32 0, align 4
@use_contiguous_hint = common dso_local global i64 0, align 8
@ARM_PTE_HINT_ADDR_SHIFT = common dso_local global i32 0, align 4
@ARM_PTE_HINT = common dso_local global i32 0, align 4
@kva_active = common dso_local global i64 0, align 8
@ARM_PTE_TYPE_FAULT = common dso_local global i32 0, align 4
@ARM_PTE_NG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32, i32, i32, i32**, i32*)* @arm_vm_page_granular_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arm_vm_page_granular_helper(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32** %7, i32* %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32**, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32*, align 8
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32** %7, i32*** %17, align 8
  store i32* %8, i32** %18, align 8
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* @ARM_TT_L2_OFFMASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %298

34:                                               ; preds = %9
  store i32* null, i32** %23, align 8
  store i32 0, i32* %25, align 4
  %35 = load i32, i32* @ARM_TT_L2_OFFMASK, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %12, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* @gVirtBase, align 4
  %41 = sub nsw i32 %39, %40
  %42 = load i32, i32* @gPhysBase, align 4
  %43 = add nsw i32 %41, %42
  %44 = load i32, i32* %13, align 4
  %45 = sub nsw i32 %43, %44
  store i32 %45, i32* %21, align 4
  %46 = load i32, i32* %21, align 4
  %47 = load i32, i32* @real_avail_end, align 4
  %48 = icmp sge i32 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %34
  br label %298

50:                                               ; preds = %34
  %51 = load i32, i32* %12, align 4
  %52 = call i32* @arm_kva_to_tte(i32 %51)
  store i32* %52, i32** %19, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = icmp sge i32 %53, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @assert(i32 %56)
  %58 = load i32*, i32** %19, align 8
  %59 = load i32, i32* %58, align 4
  store i32 %59, i32* %20, align 4
  %60 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %61 = load i32, i32* %20, align 4
  %62 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %63 = and i32 %61, %62
  %64 = icmp eq i32 %60, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %50
  %66 = load i32, i32* %20, align 4
  %67 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = call i64 @phystokv(i32 %68)
  %70 = inttoptr i64 %69 to i32*
  store i32* %70, i32** %22, align 8
  br label %90

71:                                               ; preds = %50
  %72 = load i32, i32* %13, align 4
  %73 = icmp eq i32 %72, 0
  %74 = zext i1 %73 to i32
  %75 = call i64 @alloc_ptpage(i32 %74)
  %76 = inttoptr i64 %75 to i32*
  store i32* %76, i32** %22, align 8
  %77 = load i32*, i32** %22, align 8
  %78 = load i32, i32* @ARM_PGBYTES, align 4
  %79 = call i32 @bzero(i32* %77, i32 %78)
  %80 = load i32*, i32** %22, align 8
  %81 = ptrtoint i32* %80 to i32
  %82 = call i32 @kvtophys(i32 %81)
  store i32 %82, i32* %26, align 4
  %83 = load i32, i32* %26, align 4
  %84 = call i32 @pa_to_tte(i32 %83)
  %85 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %86 = or i32 %84, %85
  %87 = load i32, i32* @ARM_TTE_VALID, align 4
  %88 = or i32 %86, %87
  %89 = load i32*, i32** %19, align 8
  store i32 %88, i32* %89, align 4
  br label %90

90:                                               ; preds = %71, %65
  %91 = load i32, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = sub nsw i32 %91, %92
  store i32 %93, i32* %28, align 4
  %94 = load i32, i32* %21, align 4
  %95 = load i32, i32* %28, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @real_avail_end, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %107

99:                                               ; preds = %90
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %28, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* @real_avail_end, align 4
  %104 = sub nsw i32 %102, %103
  %105 = load i32, i32* %11, align 4
  %106 = sub nsw i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %99, %90
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @gVirtBase, align 4
  %110 = sub nsw i32 %108, %109
  %111 = load i32, i32* @gPhysBase, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* %13, align 4
  %114 = sub nsw i32 %112, %113
  %115 = load i32, i32* @gPhysBase, align 4
  %116 = icmp sge i32 %114, %115
  %117 = zext i1 %116 to i32
  %118 = call i32 @assert(i32 %117)
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @round_page(i32 %119)
  store i32 %120, i32* %29, align 4
  store i32 0, i32* %27, align 4
  br label %121

121:                                              ; preds = %288, %107
  %122 = load i32, i32* %27, align 4
  %123 = load i32, i32* @ARM_TT_L3_INDEX_MASK, align 4
  %124 = load i32, i32* @ARM_TT_L3_SHIFT, align 4
  %125 = lshr i32 %123, %124
  %126 = icmp ule i32 %122, %125
  br i1 %126, label %127, label %291

127:                                              ; preds = %121
  %128 = load i32, i32* %10, align 4
  %129 = load i32, i32* %12, align 4
  %130 = icmp sle i32 %128, %129
  br i1 %130, label %131, label %281

131:                                              ; preds = %127
  %132 = load i32, i32* %12, align 4
  %133 = load i32, i32* %29, align 4
  %134 = icmp slt i32 %132, %133
  br i1 %134, label %135, label %281

135:                                              ; preds = %131
  %136 = load i32, i32* %21, align 4
  %137 = load i32, i32* @ARM_PTE_AF, align 4
  %138 = or i32 %136, %137
  %139 = load i32, i32* @SH_OUTER_MEMORY, align 4
  %140 = call i32 @ARM_PTE_SH(i32 %139)
  %141 = or i32 %138, %140
  %142 = load i32, i32* @ARM_PTE_TYPE, align 4
  %143 = or i32 %141, %142
  store i32 %143, i32* %24, align 4
  %144 = load i32, i32* %24, align 4
  %145 = load i32, i32* @CACHE_ATTRINDX_DEFAULT, align 4
  %146 = call i32 @ARM_PTE_ATTRINDX(i32 %145)
  %147 = or i32 %144, %146
  store i32 %147, i32* %24, align 4
  %148 = load i32, i32* %24, align 4
  %149 = load i32, i32* %14, align 4
  %150 = call i32 @ARM_PTE_AP(i32 %149)
  %151 = or i32 %148, %150
  store i32 %151, i32* %24, align 4
  %152 = load i32, i32* %24, align 4
  %153 = load i32, i32* @ARM_PTE_NX, align 4
  %154 = or i32 %152, %153
  store i32 %154, i32* %24, align 4
  %155 = load i32, i32* %15, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %161

157:                                              ; preds = %135
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* @ARM_PTE_PNX, align 4
  %160 = or i32 %158, %159
  store i32 %160, i32* %24, align 4
  br label %161

161:                                              ; preds = %157, %135
  %162 = load i32, i32* %12, align 4
  %163 = load i32, i32* %10, align 4
  %164 = call i32 @round_up_pte_hint_address(i32 %163)
  %165 = icmp sge i32 %162, %164
  br i1 %165, label %166, label %195

166:                                              ; preds = %161
  %167 = load i32, i32* %12, align 4
  %168 = add nsw i32 %167, 1
  %169 = call i32 @round_up_pte_hint_address(i32 %168)
  %170 = load i32, i32* %11, align 4
  %171 = icmp sle i32 %169, %170
  br i1 %171, label %172, label %195

172:                                              ; preds = %166
  %173 = load i32, i32* %16, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %195, label %175

175:                                              ; preds = %172
  %176 = load i64, i64* @use_contiguous_hint, align 8
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %195

178:                                              ; preds = %175
  %179 = load i32, i32* %12, align 4
  %180 = load i32, i32* @ARM_PTE_HINT_ADDR_SHIFT, align 4
  %181 = shl i32 1, %180
  %182 = sub nsw i32 %181, 1
  %183 = and i32 %179, %182
  %184 = load i32, i32* %21, align 4
  %185 = load i32, i32* @ARM_PTE_HINT_ADDR_SHIFT, align 4
  %186 = shl i32 1, %185
  %187 = sub nsw i32 %186, 1
  %188 = and i32 %184, %187
  %189 = icmp eq i32 %183, %188
  %190 = zext i1 %189 to i32
  %191 = call i32 @assert(i32 %190)
  %192 = load i32, i32* @ARM_PTE_HINT, align 4
  %193 = load i32, i32* %24, align 4
  %194 = or i32 %193, %192
  store i32 %194, i32* %24, align 4
  br label %195

195:                                              ; preds = %178, %175, %172, %166, %161
  %196 = load i64, i64* @kva_active, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %218

198:                                              ; preds = %195
  %199 = load i32*, i32** %22, align 8
  %200 = load i32, i32* %27, align 4
  %201 = zext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %199, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = load i32, i32* @ARM_PTE_TYPE_FAULT, align 4
  %205 = icmp eq i32 %203, %204
  br i1 %205, label %218, label %206

206:                                              ; preds = %198
  %207 = load i32*, i32** %22, align 8
  %208 = load i32, i32* %27, align 4
  %209 = zext i32 %208 to i64
  %210 = getelementptr inbounds i32, i32* %207, i64 %209
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* @ARM_PTE_HINT, align 4
  %213 = and i32 %211, %212
  %214 = load i32, i32* %24, align 4
  %215 = load i32, i32* @ARM_PTE_HINT, align 4
  %216 = and i32 %214, %215
  %217 = icmp eq i32 %213, %216
  br label %218

218:                                              ; preds = %206, %198, %195
  %219 = phi i1 [ true, %198 ], [ true, %195 ], [ %217, %206 ]
  %220 = zext i1 %219 to i32
  %221 = call i32 @assert(i32 %220)
  %222 = load i64, i64* @kva_active, align 8
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %245

224:                                              ; preds = %218
  %225 = load i32, i32* %21, align 4
  %226 = call i64 @phystokv(i32 %225)
  %227 = inttoptr i64 %226 to i32*
  %228 = load i32*, i32** %22, align 8
  %229 = icmp eq i32* %227, %228
  br i1 %229, label %230, label %245

230:                                              ; preds = %224
  %231 = load i32*, i32** %23, align 8
  %232 = icmp eq i32* %231, null
  %233 = zext i1 %232 to i32
  %234 = call i32 @assert(i32 %233)
  %235 = load i32, i32* %16, align 4
  %236 = icmp ne i32 %235, 0
  %237 = xor i1 %236, true
  %238 = zext i1 %237 to i32
  %239 = call i32 @assert(i32 %238)
  %240 = load i32*, i32** %22, align 8
  %241 = load i32, i32* %27, align 4
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds i32, i32* %240, i64 %242
  store i32* %243, i32** %23, align 8
  %244 = load i32, i32* %24, align 4
  store i32 %244, i32* %25, align 4
  br label %280

245:                                              ; preds = %224, %218
  %246 = load i32**, i32*** %17, align 8
  %247 = icmp ne i32** %246, null
  br i1 %247, label %248, label %273

248:                                              ; preds = %245
  %249 = load i32*, i32** %22, align 8
  %250 = load i32, i32* %27, align 4
  %251 = zext i32 %250 to i64
  %252 = getelementptr inbounds i32, i32* %249, i64 %251
  %253 = load i32*, i32** %23, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 1
  %255 = icmp eq i32* %252, %254
  br i1 %255, label %256, label %273

256:                                              ; preds = %248
  %257 = load i32**, i32*** %17, align 8
  %258 = load i32*, i32** %257, align 8
  %259 = icmp eq i32* %258, null
  %260 = zext i1 %259 to i32
  %261 = call i32 @assert(i32 %260)
  %262 = load i32*, i32** %18, align 8
  %263 = icmp ne i32* %262, null
  %264 = zext i1 %263 to i32
  %265 = call i32 @assert(i32 %264)
  %266 = load i32*, i32** %22, align 8
  %267 = load i32, i32* %27, align 4
  %268 = zext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %266, i64 %268
  %270 = load i32**, i32*** %17, align 8
  store i32* %269, i32** %270, align 8
  %271 = load i32, i32* %24, align 4
  %272 = load i32*, i32** %18, align 8
  store i32 %271, i32* %272, align 4
  br label %279

273:                                              ; preds = %248, %245
  %274 = load i32, i32* %24, align 4
  %275 = load i32*, i32** %22, align 8
  %276 = load i32, i32* %27, align 4
  %277 = zext i32 %276 to i64
  %278 = getelementptr inbounds i32, i32* %275, i64 %277
  store i32 %274, i32* %278, align 4
  br label %279

279:                                              ; preds = %273, %256
  br label %280

280:                                              ; preds = %279, %230
  br label %281

281:                                              ; preds = %280, %131, %127
  %282 = load i32, i32* @ARM_PGBYTES, align 4
  %283 = load i32, i32* %12, align 4
  %284 = add nsw i32 %283, %282
  store i32 %284, i32* %12, align 4
  %285 = load i32, i32* @ARM_PGBYTES, align 4
  %286 = load i32, i32* %21, align 4
  %287 = add nsw i32 %286, %285
  store i32 %287, i32* %21, align 4
  br label %288

288:                                              ; preds = %281
  %289 = load i32, i32* %27, align 4
  %290 = add i32 %289, 1
  store i32 %290, i32* %27, align 4
  br label %121

291:                                              ; preds = %121
  %292 = load i32*, i32** %23, align 8
  %293 = icmp ne i32* %292, null
  br i1 %293, label %294, label %297

294:                                              ; preds = %291
  %295 = load i32, i32* %25, align 4
  %296 = load i32*, i32** %23, align 8
  store i32 %295, i32* %296, align 4
  br label %297

297:                                              ; preds = %294, %291
  br label %298

298:                                              ; preds = %49, %297, %9
  ret void
}

declare dso_local i32* @arm_kva_to_tte(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i64 @alloc_ptpage(i32) #1

declare dso_local i32 @bzero(i32*, i32) #1

declare dso_local i32 @kvtophys(i32) #1

declare dso_local i32 @pa_to_tte(i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @ARM_PTE_SH(i32) #1

declare dso_local i32 @ARM_PTE_ATTRINDX(i32) #1

declare dso_local i32 @ARM_PTE_AP(i32) #1

declare dso_local i32 @round_up_pte_hint_address(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
