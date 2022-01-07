; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_permissions_verify.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/x86_64/extr_pmap.c_pmap_permissions_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_region_submap_info_64 = type { i32, i64 }

@KERN_SUCCESS = common dso_local global i64 0, align 8
@PAGE_MASK_64 = common dso_local global i32 0, align 4
@PML4MASK = common dso_local global i32 0, align 4
@NBPML4 = common dso_local global i32 0, align 4
@PDMASK = common dso_local global i32 0, align 4
@NBPD = common dso_local global i32 0, align 4
@INTEL_PTE_VALID = common dso_local global i32 0, align 4
@INTEL_PTE_WRITE = common dso_local global i32 0, align 4
@INTEL_PTE_NX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [74 x i8] c"W+X PTE at 0x%lx, P4: 0x%llx, P3: 0x%llx, P2: 0x%llx, PT: 0x%llx, VP: %u\0A\00", align 1
@KERN_FAILURE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"Completed pmap scan\0A\00", align 1
@VM_REGION_SUBMAP_INFO_COUNT_64 = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"W+X map entry at address 0x%lx\0A\00", align 1
@VM_PROT_READ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [84 x i8] c"PTE/map entry permissions mismatch at address 0x%lx, pte: 0x%llx, protection: 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_permissions_verify(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.vm_region_submap_info_64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %23 = load i32, i32* %7, align 4
  store i32 %23, i32* %9, align 4
  %24 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %24, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %12, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @is_ept_pmap(i32 %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i32, i32* @PAGE_MASK_64, align 4
  %32 = xor i32 %31, -1
  %33 = load i32, i32* %7, align 4
  %34 = and i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* @PAGE_MASK_64, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %8, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %8, align 4
  br label %39

39:                                               ; preds = %155, %102, %78, %4
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %161

43:                                               ; preds = %39
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = icmp ugt i64 %45, 140737488355327
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = icmp ult i64 %49, -140737488355328
  br label %51

51:                                               ; preds = %47, %43
  %52 = phi i1 [ false, %43 ], [ %50, %47 ]
  %53 = zext i1 %52 to i32
  %54 = call i64 @__improbable(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %51
  %58 = load i32, i32* %9, align 4
  %59 = load i32, i32* @PML4MASK, align 4
  %60 = and i32 %58, %59
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %81

62:                                               ; preds = %57
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* %9, align 4
  %65 = call i32* @pmap64_pml4(i32 %63, i32 %64)
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %62
  %68 = load i32, i32* %9, align 4
  %69 = load i32, i32* @NBPML4, align 4
  %70 = add nsw i32 %68, %69
  %71 = load i32, i32* %9, align 4
  %72 = icmp sgt i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load i32, i32* @NBPML4, align 4
  %75 = load i32, i32* %9, align 4
  %76 = add nsw i32 %75, %74
  store i32 %76, i32* %9, align 4
  br label %78

77:                                               ; preds = %67
  br label %161

78:                                               ; preds = %73
  %79 = load i64, i64* %11, align 8
  %80 = add nsw i64 %79, 1
  store i64 %80, i64* %11, align 8
  br label %39

81:                                               ; preds = %62, %57
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @PDMASK, align 4
  %84 = and i32 %82, %83
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %105

86:                                               ; preds = %81
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* %9, align 4
  %89 = call i64 @pmap_pde(i32 %87, i32 %88)
  %90 = icmp eq i64 %89, 0
  br i1 %90, label %91, label %105

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* @NBPD, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %9, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %91
  %98 = load i32, i32* @NBPD, align 4
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %9, align 4
  br label %102

101:                                              ; preds = %91
  br label %161

102:                                              ; preds = %97
  %103 = load i64, i64* %12, align 8
  %104 = add nsw i64 %103, 1
  store i64 %104, i64* %12, align 8
  br label %39

105:                                              ; preds = %86, %81
  %106 = load i32, i32* %5, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32* @pmap_pte(i32 %106, i32 %107)
  store i32* %108, i32** %13, align 8
  %109 = load i32*, i32** %13, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %155

111:                                              ; preds = %105
  %112 = load i32*, i32** %13, align 8
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @INTEL_PTE_VALID, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %155

117:                                              ; preds = %111
  %118 = load i32*, i32** %13, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %117
  %124 = load i32*, i32** %13, align 8
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @INTEL_PTE_NX, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %153, label %129

129:                                              ; preds = %123
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* %5, align 4
  %132 = load i32, i32* %9, align 4
  %133 = call i32* @pmap64_pml4(i32 %131, i32 %132)
  %134 = load i32, i32* %133, align 4
  %135 = load i32, i32* %5, align 4
  %136 = load i32, i32* %9, align 4
  %137 = call i32* @pmap64_pdpt(i32 %135, i32 %136)
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* %9, align 4
  %141 = call i32* @pmap64_pde(i32 %139, i32 %140)
  %142 = load i32, i32* %141, align 4
  %143 = load i32*, i32** %13, align 8
  %144 = load i32, i32* %143, align 4
  %145 = load i32*, i32** %13, align 8
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @pte_to_pa(i32 %146)
  %148 = call i64 @i386_btop(i32 %147)
  %149 = trunc i64 %148 to i32
  %150 = call i32 @pmap_valid_page(i32 %149)
  %151 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str, i64 0, i64 0), i32 %130, i32 %134, i32 %138, i32 %142, i32 %144, i32 %150)
  %152 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %152, i64* %10, align 8
  br label %153

153:                                              ; preds = %129, %123
  br label %154

154:                                              ; preds = %153, %117
  br label %155

155:                                              ; preds = %154, %111, %105
  %156 = load i64, i64* @PAGE_SIZE, align 8
  %157 = load i32, i32* %9, align 4
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %156
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %9, align 4
  br label %39

161:                                              ; preds = %101, %77, %39
  %162 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %163 = load i32, i32* %7, align 4
  store i32 %163, i32* %9, align 4
  store i32 0, i32* %15, align 4
  store i64 0, i64* %18, align 8
  br label %164

164:                                              ; preds = %270, %161
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* %8, align 4
  %167 = icmp slt i32 %165, %166
  br i1 %167, label %168, label %274

168:                                              ; preds = %164
  br label %169

169:                                              ; preds = %181, %168
  %170 = load i32, i32* @VM_REGION_SUBMAP_INFO_COUNT_64, align 4
  store i32 %170, i32* %15, align 4
  %171 = load i32, i32* %6, align 4
  %172 = ptrtoint %struct.vm_region_submap_info_64* %14 to i32
  %173 = call i64 @mach_vm_region_recurse(i32 %171, i32* %9, i32* %16, i64* %18, i32 %172, i32* %15)
  store i64 %173, i64* %19, align 8
  %174 = load i64, i64* @KERN_SUCCESS, align 8
  %175 = icmp ne i64 %173, %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %169
  br label %185

177:                                              ; preds = %169
  %178 = getelementptr inbounds %struct.vm_region_submap_info_64, %struct.vm_region_submap_info_64* %14, i32 0, i32 1
  %179 = load i64, i64* %178, align 8
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %184

181:                                              ; preds = %177
  %182 = load i64, i64* %18, align 8
  %183 = add nsw i64 %182, 1
  store i64 %183, i64* %18, align 8
  br label %169

184:                                              ; preds = %177
  br label %185

185:                                              ; preds = %184, %176
  %186 = load i64, i64* %19, align 8
  %187 = load i64, i64* @KERN_SUCCESS, align 8
  %188 = icmp ne i64 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %185
  br label %274

190:                                              ; preds = %185
  %191 = getelementptr inbounds %struct.vm_region_submap_info_64, %struct.vm_region_submap_info_64* %14, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  store i32 %192, i32* %17, align 4
  %193 = load i32, i32* %17, align 4
  %194 = load i32, i32* @VM_PROT_WRITE, align 4
  %195 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %196 = or i32 %194, %195
  %197 = and i32 %193, %196
  %198 = load i32, i32* @VM_PROT_WRITE, align 4
  %199 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %200 = or i32 %198, %199
  %201 = icmp eq i32 %197, %200
  br i1 %201, label %202, label %206

202:                                              ; preds = %190
  %203 = load i32, i32* %9, align 4
  %204 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %203)
  %205 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %205, i64* %10, align 8
  br label %206

206:                                              ; preds = %202, %190
  %207 = load i32, i32* %17, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %270

209:                                              ; preds = %206
  %210 = load i32, i32* %9, align 4
  store i32 %210, i32* %20, align 4
  br label %211

211:                                              ; preds = %263, %209
  %212 = load i32, i32* %20, align 4
  %213 = load i32, i32* %9, align 4
  %214 = load i32, i32* %16, align 4
  %215 = add nsw i32 %213, %214
  %216 = icmp slt i32 %212, %215
  br i1 %216, label %217, label %269

217:                                              ; preds = %211
  %218 = load i32, i32* %5, align 4
  %219 = load i32, i32* %20, align 4
  %220 = call i32* @pmap_pte(i32 %218, i32 %219)
  store i32* %220, i32** %21, align 8
  %221 = load i32*, i32** %21, align 8
  %222 = icmp eq i32* %221, null
  br i1 %222, label %229, label %223

223:                                              ; preds = %217
  %224 = load i32*, i32** %21, align 8
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @INTEL_PTE_VALID, align 4
  %227 = and i32 %225, %226
  %228 = icmp ne i32 %227, 0
  br i1 %228, label %230, label %229

229:                                              ; preds = %223, %217
  br label %263

230:                                              ; preds = %223
  %231 = load i32, i32* @VM_PROT_READ, align 4
  store i32 %231, i32* %22, align 4
  %232 = load i32*, i32** %21, align 8
  %233 = load i32, i32* %232, align 4
  %234 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %235 = and i32 %233, %234
  %236 = icmp ne i32 %235, 0
  br i1 %236, label %237, label %241

237:                                              ; preds = %230
  %238 = load i32, i32* @VM_PROT_WRITE, align 4
  %239 = load i32, i32* %22, align 4
  %240 = or i32 %239, %238
  store i32 %240, i32* %22, align 4
  br label %241

241:                                              ; preds = %237, %230
  %242 = load i32*, i32** %21, align 8
  %243 = load i32, i32* %242, align 4
  %244 = load i32, i32* @INTEL_PTE_NX, align 4
  %245 = and i32 %243, %244
  %246 = icmp eq i32 %245, 0
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  %248 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %249 = load i32, i32* %22, align 4
  %250 = or i32 %249, %248
  store i32 %250, i32* %22, align 4
  br label %251

251:                                              ; preds = %247, %241
  %252 = load i32, i32* %22, align 4
  %253 = load i32, i32* %17, align 4
  %254 = icmp ne i32 %252, %253
  br i1 %254, label %255, label %262

255:                                              ; preds = %251
  %256 = load i32, i32* %20, align 4
  %257 = load i32*, i32** %21, align 8
  %258 = load i32, i32* %257, align 4
  %259 = load i32, i32* %17, align 4
  %260 = call i32 (i8*, ...) @kprintf(i8* getelementptr inbounds ([84 x i8], [84 x i8]* @.str.3, i64 0, i64 0), i32 %256, i32 %258, i32 %259)
  %261 = load i64, i64* @KERN_FAILURE, align 8
  store i64 %261, i64* %10, align 8
  br label %262

262:                                              ; preds = %255, %251
  br label %263

263:                                              ; preds = %262, %229
  %264 = load i64, i64* @PAGE_SIZE, align 8
  %265 = load i32, i32* %20, align 4
  %266 = sext i32 %265 to i64
  %267 = add nsw i64 %266, %264
  %268 = trunc i64 %267 to i32
  store i32 %268, i32* %20, align 4
  br label %211

269:                                              ; preds = %211
  br label %270

270:                                              ; preds = %269, %206
  %271 = load i32, i32* %16, align 4
  %272 = load i32, i32* %9, align 4
  %273 = add nsw i32 %272, %271
  store i32 %273, i32* %9, align 4
  br label %164

274:                                              ; preds = %189, %164
  %275 = load i64, i64* %10, align 8
  ret i64 %275
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_ept_pmap(i32) #1

declare dso_local i64 @__improbable(i32) #1

declare dso_local i32* @pmap64_pml4(i32, i32) #1

declare dso_local i64 @pmap_pde(i32, i32) #1

declare dso_local i32* @pmap_pte(i32, i32) #1

declare dso_local i32 @kprintf(i8*, ...) #1

declare dso_local i32* @pmap64_pdpt(i32, i32) #1

declare dso_local i32* @pmap64_pde(i32, i32) #1

declare dso_local i32 @pmap_valid_page(i32) #1

declare dso_local i64 @i386_btop(i32) #1

declare dso_local i32 @pte_to_pa(i32) #1

declare dso_local i64 @mach_vm_region_recurse(i32, i32*, i32*, i64*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
