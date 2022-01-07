; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-arm64.c_kasan_map_shadow_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-arm64.c_kasan_map_shadow_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_PGMASK = common dso_local global i32 0, align 4
@KASAN_SHADOW_MIN = common dso_local global i64 0, align 8
@KASAN_SHADOW_MAX = common dso_local global i64 0, align 8
@cpu_tte = common dso_local global i32* null, align 8
@ARM_TT_L1_INDEX_MASK = common dso_local global i64 0, align 8
@ARM_TT_L1_SHIFT = common dso_local global i64 0, align 8
@ARM_TTE_VALID = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@ARM_TTE_TABLE_MASK = common dso_local global i32 0, align 4
@ARM_TT_L2_INDEX_MASK = common dso_local global i64 0, align 8
@ARM_TT_L2_SHIFT = common dso_local global i64 0, align 8
@ARM_TT_L3_INDEX_MASK = common dso_local global i64 0, align 8
@ARM_TT_L3_SHIFT = common dso_local global i64 0, align 8
@ARM_PTE_TYPE_VALID = common dso_local global i32 0, align 4
@ARM_PTE_APMASK = common dso_local global i32 0, align 4
@AP_RONA = common dso_local global i32 0, align 4
@zero_page_phys = common dso_local global i64 0, align 8
@AP_RWNA = common dso_local global i32 0, align 4
@ARM_PTE_AF = common dso_local global i32 0, align 4
@SH_OUTER_MEMORY = common dso_local global i32 0, align 4
@CACHE_ATTRINDX_DEFAULT = common dso_local global i32 0, align 4
@ARM_PTE_NX = common dso_local global i32 0, align 4
@ARM_PTE_PNX = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i32, i32, i32)* @kasan_map_shadow_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kasan_map_shadow_internal(i64 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load i32, i32* %6, align 4
  %15 = sext i32 %14 to i64
  %16 = add i64 %15, 7
  %17 = and i64 %16, -8
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %6, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @SHADOW_FOR_ADDRESS(i64 %19)
  %21 = load i32, i32* @ARM_PGMASK, align 4
  %22 = call i64 @vm_map_trunc_page(i32 %20, i32 %21)
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @SHADOW_FOR_ADDRESS(i64 %26)
  %28 = load i32, i32* @ARM_PGMASK, align 4
  %29 = call i64 @vm_map_round_page(i32 %27, i32 %28)
  store i64 %29, i64* %10, align 8
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @KASAN_SHADOW_MIN, align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %4
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @KASAN_SHADOW_MAX, align 8
  %36 = icmp sle i64 %34, %35
  br label %37

37:                                               ; preds = %33, %4
  %38 = phi i1 [ false, %4 ], [ %36, %33 ]
  %39 = zext i1 %38 to i32
  %40 = call i32 @assert(i32 %39)
  %41 = load i32, i32* %6, align 4
  %42 = and i32 %41, 7
  %43 = icmp eq i32 %42, 0
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  br label %46

46:                                               ; preds = %190, %37
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = icmp slt i64 %47, %48
  br i1 %49, label %50, label %194

50:                                               ; preds = %46
  %51 = load i32*, i32** @cpu_tte, align 8
  store i32* %51, i32** %11, align 8
  %52 = load i32*, i32** %11, align 8
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* @ARM_TT_L1_INDEX_MASK, align 8
  %55 = and i64 %53, %54
  %56 = load i64, i64* @ARM_TT_L1_SHIFT, align 8
  %57 = ashr i64 %55, %56
  %58 = getelementptr inbounds i32, i32* %52, i64 %57
  store i32* %58, i32** %12, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ARM_TTE_VALID, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %50
  %65 = load i32*, i32** %12, align 8
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %70 = icmp eq i32 %68, %69
  %71 = zext i1 %70 to i32
  %72 = call i32 @assert(i32 %71)
  br label %83

73:                                               ; preds = %50
  %74 = call i64 (...) @alloc_zero_page()
  %75 = trunc i64 %74 to i32
  %76 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %77 = and i32 %75, %76
  %78 = load i32, i32* @ARM_TTE_VALID, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %81 = or i32 %79, %80
  %82 = load i32*, i32** %12, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %73, %64
  %84 = load i32*, i32** %12, align 8
  %85 = load i32, i32* %84, align 4
  %86 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = call i64 @phystokv(i32 %87)
  %89 = inttoptr i64 %88 to i32*
  store i32* %89, i32** %11, align 8
  %90 = load i32*, i32** %11, align 8
  %91 = load i64, i64* %9, align 8
  %92 = load i64, i64* @ARM_TT_L2_INDEX_MASK, align 8
  %93 = and i64 %91, %92
  %94 = load i64, i64* @ARM_TT_L2_SHIFT, align 8
  %95 = ashr i64 %93, %94
  %96 = getelementptr inbounds i32, i32* %90, i64 %95
  store i32* %96, i32** %12, align 8
  %97 = load i32*, i32** %12, align 8
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @ARM_TTE_VALID, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %83
  %103 = load i32*, i32** %12, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %106 = and i32 %104, %105
  %107 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %108 = icmp eq i32 %106, %107
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  br label %121

111:                                              ; preds = %83
  %112 = call i64 (...) @alloc_zero_page()
  %113 = trunc i64 %112 to i32
  %114 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %115 = and i32 %113, %114
  %116 = load i32, i32* @ARM_TTE_VALID, align 4
  %117 = or i32 %115, %116
  %118 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %119 = or i32 %117, %118
  %120 = load i32*, i32** %12, align 8
  store i32 %119, i32* %120, align 4
  br label %121

121:                                              ; preds = %111, %102
  %122 = load i32*, i32** %12, align 8
  %123 = load i32, i32* %122, align 4
  %124 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %125 = and i32 %123, %124
  %126 = call i64 @phystokv(i32 %125)
  %127 = inttoptr i64 %126 to i32*
  store i32* %127, i32** %11, align 8
  %128 = load i32, i32* %8, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %131, label %130

130:                                              ; preds = %121
  br label %190

131:                                              ; preds = %121
  %132 = load i32*, i32** %11, align 8
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* @ARM_TT_L3_INDEX_MASK, align 8
  %135 = and i64 %133, %134
  %136 = load i64, i64* @ARM_TT_L3_SHIFT, align 8
  %137 = ashr i64 %135, %136
  %138 = getelementptr inbounds i32, i32* %132, i64 %137
  store i32* %138, i32** %12, align 8
  %139 = load i32*, i32** %12, align 8
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @ARM_PTE_TYPE_VALID, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %156

144:                                              ; preds = %131
  %145 = load i32*, i32** %12, align 8
  %146 = load i32, i32* %145, align 4
  %147 = load i32, i32* @ARM_PTE_APMASK, align 4
  %148 = and i32 %146, %147
  %149 = load i32, i32* @AP_RONA, align 4
  %150 = call i32 @ARM_PTE_AP(i32 %149)
  %151 = icmp ne i32 %148, %150
  br i1 %151, label %155, label %152

152:                                              ; preds = %144
  %153 = load i32, i32* %7, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %156

155:                                              ; preds = %152, %144
  br label %189

156:                                              ; preds = %152, %131
  %157 = load i32, i32* %7, align 4
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %156
  %160 = load i64, i64* @zero_page_phys, align 8
  %161 = trunc i64 %160 to i32
  %162 = load i32, i32* @AP_RONA, align 4
  %163 = call i32 @ARM_PTE_AP(i32 %162)
  %164 = or i32 %161, %163
  store i32 %164, i32* %13, align 4
  br label %171

165:                                              ; preds = %156
  %166 = call i64 (...) @alloc_zero_page()
  %167 = trunc i64 %166 to i32
  %168 = load i32, i32* @AP_RWNA, align 4
  %169 = call i32 @ARM_PTE_AP(i32 %168)
  %170 = or i32 %167, %169
  store i32 %170, i32* %13, align 4
  br label %171

171:                                              ; preds = %165, %159
  %172 = load i32, i32* @ARM_PTE_TYPE_VALID, align 4
  %173 = load i32, i32* @ARM_PTE_AF, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @SH_OUTER_MEMORY, align 4
  %176 = call i32 @ARM_PTE_SH(i32 %175)
  %177 = or i32 %174, %176
  %178 = load i32, i32* @CACHE_ATTRINDX_DEFAULT, align 4
  %179 = call i32 @ARM_PTE_ATTRINDX(i32 %178)
  %180 = or i32 %177, %179
  %181 = load i32, i32* @ARM_PTE_NX, align 4
  %182 = or i32 %180, %181
  %183 = load i32, i32* @ARM_PTE_PNX, align 4
  %184 = or i32 %182, %183
  %185 = load i32, i32* %13, align 4
  %186 = or i32 %185, %184
  store i32 %186, i32* %13, align 4
  %187 = load i32, i32* %13, align 4
  %188 = load i32*, i32** %12, align 8
  store i32 %187, i32* %188, align 4
  br label %189

189:                                              ; preds = %171, %155
  br label %190

190:                                              ; preds = %189, %130
  %191 = load i64, i64* @ARM_PGBYTES, align 8
  %192 = load i64, i64* %9, align 8
  %193 = add nsw i64 %192, %191
  store i64 %193, i64* %9, align 8
  br label %46

194:                                              ; preds = %46
  %195 = call i32 (...) @flush_mmu_tlb()
  ret void
}

declare dso_local i64 @vm_map_trunc_page(i32, i32) #1

declare dso_local i32 @SHADOW_FOR_ADDRESS(i64) #1

declare dso_local i64 @vm_map_round_page(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @alloc_zero_page(...) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i32 @ARM_PTE_AP(i32) #1

declare dso_local i32 @ARM_PTE_SH(i32) #1

declare dso_local i32 @ARM_PTE_ATTRINDX(i32) #1

declare dso_local i32 @flush_mmu_tlb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
