; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_arm_clear_fast_fault.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_arm_clear_fast_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@FALSE = common dso_local global i64 0, align 8
@vm_page_fictitious_addr = common dso_local global i32 0, align 4
@PT_ENTRY_NULL = common dso_local global i64* null, align 8
@PV_ENTRY_NULL = common dso_local global i64* null, align 8
@PVH_TYPE_PTEP = common dso_local global i32 0, align 4
@PVH_TYPE_PVEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"pte_p is NULL: pve_p=%p ppnum=0x%x\0A\00", align 1
@ARM_PTE_EMPTY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"pte is NULL: pte_p=%p ppnum=0x%x\0A\00", align 1
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global %struct.TYPE_5__* null, align 8
@ARM_PTE_APMASK = common dso_local global i64 0, align 8
@AP_RWNA = common dso_local global i32 0, align 4
@AP_RWRW = common dso_local global i32 0, align 4
@ARM_PTE_AF = common dso_local global i64 0, align 8
@PP_ATTR_REFERENCED = common dso_local global i32 0, align 4
@PP_ATTR_MODIFIED = common dso_local global i32 0, align 4
@VM_PROT_READ = common dso_local global i32 0, align 4
@ARM_PTE_TYPE_FAULT = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@ISB_SY = common dso_local global i32 0, align 4
@PVH_FLAG_IOMMU = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arm_clear_fast_fault(i32 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64**, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @ptoa(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* @FALSE, align 8
  store i64 %19, i64* %11, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @vm_page_fictitious_addr, align 4
  %22 = icmp ne i32 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @pa_valid(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %2
  %29 = load i64, i64* @FALSE, align 8
  store i64 %29, i64* %3, align 8
  br label %215

30:                                               ; preds = %2
  %31 = load i64, i64* @FALSE, align 8
  store i64 %31, i64* %10, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i64 @pa_index(i32 %32)
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @ASSERT_PVH_LOCKED(i32 %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i64** @pai_to_pvh(i32 %37)
  store i64** %38, i64*** %12, align 8
  %39 = load i64*, i64** @PT_ENTRY_NULL, align 8
  store i64* %39, i64** %8, align 8
  %40 = load i64*, i64** @PV_ENTRY_NULL, align 8
  store i64* %40, i64** %7, align 8
  %41 = load i64**, i64*** %12, align 8
  %42 = load i32, i32* @PVH_TYPE_PTEP, align 4
  %43 = call i64 @pvh_test_type(i64** %41, i32 %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %30
  %46 = load i64**, i64*** %12, align 8
  %47 = call i64* @pvh_ptep(i64** %46)
  store i64* %47, i64** %8, align 8
  br label %57

48:                                               ; preds = %30
  %49 = load i64**, i64*** %12, align 8
  %50 = load i32, i32* @PVH_TYPE_PVEP, align 4
  %51 = call i64 @pvh_test_type(i64** %49, i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %48
  %54 = load i64**, i64*** %12, align 8
  %55 = call i64* @pvh_list(i64** %54)
  store i64* %55, i64** %7, align 8
  br label %56

56:                                               ; preds = %53, %48
  br label %57

57:                                               ; preds = %56, %45
  br label %58

58:                                               ; preds = %207, %57
  %59 = load i64*, i64** %7, align 8
  %60 = load i64*, i64** @PV_ENTRY_NULL, align 8
  %61 = icmp ne i64* %59, %60
  br i1 %61, label %66, label %62

62:                                               ; preds = %58
  %63 = load i64*, i64** %8, align 8
  %64 = load i64*, i64** @PT_ENTRY_NULL, align 8
  %65 = icmp ne i64* %63, %64
  br label %66

66:                                               ; preds = %62, %58
  %67 = phi i1 [ true, %58 ], [ %65, %62 ]
  br i1 %67, label %68, label %208

68:                                               ; preds = %66
  %69 = load i64*, i64** %7, align 8
  %70 = load i64*, i64** @PV_ENTRY_NULL, align 8
  %71 = icmp ne i64* %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i64*, i64** %7, align 8
  %74 = call i64* @pve_get_ptep(i64* %73)
  store i64* %74, i64** %8, align 8
  br label %75

75:                                               ; preds = %72, %68
  %76 = load i64*, i64** %8, align 8
  %77 = load i64*, i64** @PT_ENTRY_NULL, align 8
  %78 = icmp eq i64* %76, %77
  br i1 %78, label %79, label %83

79:                                               ; preds = %75
  %80 = load i64*, i64** %7, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i64* %80, i32 %81)
  br label %83

83:                                               ; preds = %79, %75
  %84 = load i64*, i64** %8, align 8
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @ARM_PTE_EMPTY, align 8
  %87 = icmp eq i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %83
  %89 = load i64*, i64** %8, align 8
  %90 = load i32, i32* %4, align 4
  %91 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64* %89, i32 %90)
  br label %92

92:                                               ; preds = %88, %83
  %93 = load i64*, i64** %8, align 8
  %94 = call %struct.TYPE_5__* @ptep_get_pmap(i64* %93)
  store %struct.TYPE_5__* %94, %struct.TYPE_5__** %16, align 8
  %95 = load i64*, i64** %8, align 8
  %96 = call i64 @ptep_get_va(i64* %95)
  store i64 %96, i64* %13, align 8
  %97 = load i64, i64* %13, align 8
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp sge i64 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %92
  %103 = load i64, i64* %13, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp slt i64 %103, %106
  br label %108

108:                                              ; preds = %102, %92
  %109 = phi i1 [ false, %92 ], [ %107, %102 ]
  %110 = zext i1 %109 to i32
  %111 = call i32 @assert(i32 %110)
  %112 = load i64*, i64** %8, align 8
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %14, align 8
  %114 = load i64, i64* %14, align 8
  store i64 %114, i64* %15, align 8
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @VM_PROT_WRITE, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %154

119:                                              ; preds = %108
  %120 = load i64, i64* %14, align 8
  %121 = call i64 @pte_is_ffr(i64 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %154

123:                                              ; preds = %119
  %124 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** @kernel_pmap, align 8
  %126 = icmp eq %struct.TYPE_5__* %124, %125
  br i1 %126, label %127, label %135

127:                                              ; preds = %123
  %128 = load i64, i64* %14, align 8
  %129 = load i64, i64* @ARM_PTE_APMASK, align 8
  %130 = xor i64 %129, -1
  %131 = and i64 %128, %130
  %132 = load i32, i32* @AP_RWNA, align 4
  %133 = call i64 @ARM_PTE_AP(i32 %132)
  %134 = or i64 %131, %133
  store i64 %134, i64* %15, align 8
  br label %143

135:                                              ; preds = %123
  %136 = load i64, i64* %14, align 8
  %137 = load i64, i64* @ARM_PTE_APMASK, align 8
  %138 = xor i64 %137, -1
  %139 = and i64 %136, %138
  %140 = load i32, i32* @AP_RWRW, align 4
  %141 = call i64 @ARM_PTE_AP(i32 %140)
  %142 = or i64 %139, %141
  store i64 %142, i64* %15, align 8
  br label %143

143:                                              ; preds = %135, %127
  %144 = load i64, i64* @ARM_PTE_AF, align 8
  %145 = load i64, i64* %15, align 8
  %146 = or i64 %145, %144
  store i64 %146, i64* %15, align 8
  %147 = load i64, i64* %15, align 8
  %148 = call i32 @pte_set_ffr(i64 %147, i32 0)
  %149 = load i32, i32* %6, align 4
  %150 = load i32, i32* @PP_ATTR_REFERENCED, align 4
  %151 = load i32, i32* @PP_ATTR_MODIFIED, align 4
  %152 = or i32 %150, %151
  %153 = call i32 @pa_set_bits(i32 %149, i32 %152)
  br label %173

154:                                              ; preds = %119, %108
  %155 = load i32, i32* %5, align 4
  %156 = load i32, i32* @VM_PROT_READ, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %172

159:                                              ; preds = %154
  %160 = load i64, i64* %14, align 8
  %161 = load i64, i64* @ARM_PTE_AF, align 8
  %162 = and i64 %160, %161
  %163 = load i64, i64* @ARM_PTE_AF, align 8
  %164 = icmp ne i64 %162, %163
  br i1 %164, label %165, label %172

165:                                              ; preds = %159
  %166 = load i64, i64* %14, align 8
  %167 = load i64, i64* @ARM_PTE_AF, align 8
  %168 = or i64 %166, %167
  store i64 %168, i64* %15, align 8
  %169 = load i32, i32* %6, align 4
  %170 = load i32, i32* @PP_ATTR_REFERENCED, align 4
  %171 = call i32 @pa_set_bits(i32 %169, i32 %170)
  br label %172

172:                                              ; preds = %165, %159, %154
  br label %173

173:                                              ; preds = %172, %143
  %174 = load i64, i64* %14, align 8
  %175 = load i64, i64* %15, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %198

177:                                              ; preds = %173
  %178 = load i64, i64* %14, align 8
  %179 = load i64, i64* @ARM_PTE_TYPE_FAULT, align 8
  %180 = icmp ne i64 %178, %179
  br i1 %180, label %181, label %190

181:                                              ; preds = %177
  %182 = load i64*, i64** %8, align 8
  %183 = load i64, i64* %15, align 8
  %184 = call i32 @WRITE_PTE_STRONG(i64* %182, i64 %183)
  %185 = load i64, i64* %13, align 8
  %186 = load i32, i32* @PAGE_SIZE, align 4
  %187 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %188 = call i32 @flush_mmu_tlb_region_asid_async(i64 %185, i32 %186, %struct.TYPE_5__* %187)
  %189 = load i64, i64* @TRUE, align 8
  store i64 %189, i64* %11, align 8
  br label %196

190:                                              ; preds = %177
  %191 = load i64*, i64** %8, align 8
  %192 = load i64, i64* %15, align 8
  %193 = call i32 @WRITE_PTE(i64* %191, i64 %192)
  %194 = load i32, i32* @ISB_SY, align 4
  %195 = call i32 @__builtin_arm_isb(i32 %194)
  br label %196

196:                                              ; preds = %190, %181
  %197 = load i64, i64* @TRUE, align 8
  store i64 %197, i64* %10, align 8
  br label %198

198:                                              ; preds = %196, %173
  %199 = load i64*, i64** @PT_ENTRY_NULL, align 8
  store i64* %199, i64** %8, align 8
  %200 = load i64*, i64** %7, align 8
  %201 = load i64*, i64** @PV_ENTRY_NULL, align 8
  %202 = icmp ne i64* %200, %201
  br i1 %202, label %203, label %207

203:                                              ; preds = %198
  %204 = load i64*, i64** %7, align 8
  %205 = call i32 @pve_next(i64* %204)
  %206 = call i64* @PVE_NEXT_PTR(i32 %205)
  store i64* %206, i64** %7, align 8
  br label %207

207:                                              ; preds = %203, %198
  br label %58

208:                                              ; preds = %66
  %209 = load i64, i64* %11, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %213

211:                                              ; preds = %208
  %212 = call i32 (...) @sync_tlb_flush()
  br label %213

213:                                              ; preds = %211, %208
  %214 = load i64, i64* %10, align 8
  store i64 %214, i64* %3, align 8
  br label %215

215:                                              ; preds = %213, %28
  %216 = load i64, i64* %3, align 8
  ret i64 %216
}

declare dso_local i32 @ptoa(i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @pa_valid(i32) #1

declare dso_local i64 @pa_index(i32) #1

declare dso_local i32 @ASSERT_PVH_LOCKED(i32) #1

declare dso_local i64** @pai_to_pvh(i32) #1

declare dso_local i64 @pvh_test_type(i64**, i32) #1

declare dso_local i64* @pvh_ptep(i64**) #1

declare dso_local i64* @pvh_list(i64**) #1

declare dso_local i64* @pve_get_ptep(i64*) #1

declare dso_local i32 @panic(i8*, i64*, i32) #1

declare dso_local %struct.TYPE_5__* @ptep_get_pmap(i64*) #1

declare dso_local i64 @ptep_get_va(i64*) #1

declare dso_local i64 @pte_is_ffr(i64) #1

declare dso_local i64 @ARM_PTE_AP(i32) #1

declare dso_local i32 @pte_set_ffr(i64, i32) #1

declare dso_local i32 @pa_set_bits(i32, i32) #1

declare dso_local i32 @WRITE_PTE_STRONG(i64*, i64) #1

declare dso_local i32 @flush_mmu_tlb_region_asid_async(i64, i32, %struct.TYPE_5__*) #1

declare dso_local i32 @WRITE_PTE(i64*, i64) #1

declare dso_local i32 @__builtin_arm_isb(i32) #1

declare dso_local i64* @PVE_NEXT_PTR(i32) #1

declare dso_local i32 @pve_next(i64*) #1

declare dso_local i32 @sync_tlb_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
