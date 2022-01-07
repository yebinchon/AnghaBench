; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-arm64.c_kasan_map_shadow_early.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-arm64.c_kasan_map_shadow_early.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KASAN_SHADOW_MIN = common dso_local global i64 0, align 8
@KASAN_SHADOW_MAX = common dso_local global i64 0, align 8
@bootstrap_pgtable_phys = common dso_local global i64 0, align 8
@ARM_TT_L1_INDEX_MASK = common dso_local global i64 0, align 8
@ARM_TT_L1_SHIFT = common dso_local global i64 0, align 8
@ARM_TTE_VALID = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_MASK = common dso_local global i32 0, align 4
@ARM_TTE_TYPE_TABLE = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i64 0, align 8
@ARM_TTE_TABLE_MASK = common dso_local global i32 0, align 4
@ARM_TT_L2_INDEX_MASK = common dso_local global i64 0, align 8
@ARM_TT_L2_SHIFT = common dso_local global i64 0, align 8
@ARM_TT_L3_INDEX_MASK = common dso_local global i64 0, align 8
@ARM_TT_L3_SHIFT = common dso_local global i64 0, align 8
@ARM_PTE_TYPE = common dso_local global i32 0, align 4
@ARM_PTE_APMASK = common dso_local global i32 0, align 4
@ARM_PTE_TYPE_VALID = common dso_local global i32 0, align 4
@AP_RWNA = common dso_local global i32 0, align 4
@zero_page_phys = common dso_local global i64 0, align 8
@AP_RONA = common dso_local global i32 0, align 4
@ARM_PTE_AF = common dso_local global i32 0, align 4
@SH_OUTER_MEMORY = common dso_local global i32 0, align 4
@CACHE_ATTRINDX_DEFAULT = common dso_local global i32 0, align 4
@ARM_PTE_NX = common dso_local global i32 0, align 4
@ARM_PTE_PNX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32)* @kasan_map_shadow_early to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @kasan_map_shadow_early(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = call i32 @align_to_page(i64* %4, i64* %5)
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %182, %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* %5, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %186

20:                                               ; preds = %16
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* %7, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @SHADOW_FOR_ADDRESS(i64 %23)
  %25 = sext i32 %24 to i64
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @KASAN_SHADOW_MIN, align 8
  %28 = icmp sge i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @assert(i32 %29)
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @KASAN_SHADOW_MAX, align 8
  %33 = icmp slt i64 %31, %32
  %34 = zext i1 %33 to i32
  %35 = call i32 @assert(i32 %34)
  %36 = load i64, i64* @bootstrap_pgtable_phys, align 8
  %37 = inttoptr i64 %36 to i32*
  store i32* %37, i32** %10, align 8
  %38 = load i32*, i32** %10, align 8
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @ARM_TT_L1_INDEX_MASK, align 8
  %41 = and i64 %39, %40
  %42 = load i64, i64* @ARM_TT_L1_SHIFT, align 8
  %43 = ashr i64 %41, %42
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ARM_TTE_VALID, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %20
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %54 = and i32 %52, %53
  %55 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %56 = icmp eq i32 %54, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 @assert(i32 %57)
  br label %74

59:                                               ; preds = %20
  %60 = call i32 (...) @alloc_page()
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i64, i64* @ARM_PGBYTES, align 8
  %65 = call i32 @__nosan_bzero(i8* %63, i64 %64)
  %66 = load i32, i32* %11, align 4
  %67 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %68 = and i32 %66, %67
  %69 = load i32, i32* @ARM_TTE_VALID, align 4
  %70 = or i32 %68, %69
  %71 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %72 = or i32 %70, %71
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %59, %50
  %75 = load i32*, i32** %8, align 8
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %78 = and i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32*
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = load i64, i64* %9, align 8
  %83 = load i64, i64* @ARM_TT_L2_INDEX_MASK, align 8
  %84 = and i64 %82, %83
  %85 = load i64, i64* @ARM_TT_L2_SHIFT, align 8
  %86 = ashr i64 %84, %85
  %87 = getelementptr inbounds i32, i32* %81, i64 %86
  store i32* %87, i32** %8, align 8
  %88 = load i32*, i32** %8, align 8
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @ARM_TTE_VALID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %74
  %94 = load i32*, i32** %8, align 8
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @ARM_TTE_TYPE_MASK, align 4
  %97 = and i32 %95, %96
  %98 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %99 = icmp eq i32 %97, %98
  %100 = zext i1 %99 to i32
  %101 = call i32 @assert(i32 %100)
  br label %117

102:                                              ; preds = %74
  %103 = call i32 (...) @alloc_page()
  store i32 %103, i32* %12, align 4
  %104 = load i32, i32* %12, align 4
  %105 = sext i32 %104 to i64
  %106 = inttoptr i64 %105 to i8*
  %107 = load i64, i64* @ARM_PGBYTES, align 8
  %108 = call i32 @__nosan_bzero(i8* %106, i64 %107)
  %109 = load i32, i32* %12, align 4
  %110 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %111 = and i32 %109, %110
  %112 = load i32, i32* @ARM_TTE_VALID, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* @ARM_TTE_TYPE_TABLE, align 4
  %115 = or i32 %113, %114
  %116 = load i32*, i32** %8, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %102, %93
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* @ARM_TTE_TABLE_MASK, align 4
  %121 = and i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i32*
  store i32* %123, i32** %10, align 8
  %124 = load i32*, i32** %10, align 8
  %125 = load i64, i64* %9, align 8
  %126 = load i64, i64* @ARM_TT_L3_INDEX_MASK, align 8
  %127 = and i64 %125, %126
  %128 = load i64, i64* @ARM_TT_L3_SHIFT, align 8
  %129 = ashr i64 %127, %128
  %130 = getelementptr inbounds i32, i32* %124, i64 %129
  store i32* %130, i32** %8, align 8
  %131 = load i32*, i32** %8, align 8
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @ARM_PTE_TYPE, align 4
  %134 = load i32, i32* @ARM_PTE_APMASK, align 4
  %135 = or i32 %133, %134
  %136 = and i32 %132, %135
  %137 = load i32, i32* @ARM_PTE_TYPE_VALID, align 4
  %138 = load i32, i32* @AP_RWNA, align 4
  %139 = call i32 @ARM_PTE_AP(i32 %138)
  %140 = or i32 %137, %139
  %141 = icmp eq i32 %136, %140
  br i1 %141, label %142, label %143

142:                                              ; preds = %117
  br label %181

143:                                              ; preds = %117
  %144 = load i32, i32* %6, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %152

146:                                              ; preds = %143
  %147 = load i64, i64* @zero_page_phys, align 8
  %148 = trunc i64 %147 to i32
  %149 = load i32, i32* @AP_RONA, align 4
  %150 = call i32 @ARM_PTE_AP(i32 %149)
  %151 = or i32 %148, %150
  store i32 %151, i32* %13, align 4
  br label %163

152:                                              ; preds = %143
  %153 = call i32 (...) @alloc_page()
  store i32 %153, i32* %14, align 4
  %154 = load i32, i32* %14, align 4
  %155 = sext i32 %154 to i64
  %156 = inttoptr i64 %155 to i8*
  %157 = load i64, i64* @ARM_PGBYTES, align 8
  %158 = call i32 @__nosan_bzero(i8* %156, i64 %157)
  %159 = load i32, i32* %14, align 4
  %160 = load i32, i32* @AP_RWNA, align 4
  %161 = call i32 @ARM_PTE_AP(i32 %160)
  %162 = or i32 %159, %161
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %152, %146
  %164 = load i32, i32* @ARM_PTE_TYPE_VALID, align 4
  %165 = load i32, i32* @ARM_PTE_AF, align 4
  %166 = or i32 %164, %165
  %167 = load i32, i32* @SH_OUTER_MEMORY, align 4
  %168 = call i32 @ARM_PTE_SH(i32 %167)
  %169 = or i32 %166, %168
  %170 = load i32, i32* @CACHE_ATTRINDX_DEFAULT, align 4
  %171 = call i32 @ARM_PTE_ATTRINDX(i32 %170)
  %172 = or i32 %169, %171
  %173 = load i32, i32* @ARM_PTE_NX, align 4
  %174 = or i32 %172, %173
  %175 = load i32, i32* @ARM_PTE_PNX, align 4
  %176 = or i32 %174, %175
  %177 = load i32, i32* %13, align 4
  %178 = or i32 %177, %176
  store i32 %178, i32* %13, align 4
  %179 = load i32, i32* %13, align 4
  %180 = load i32*, i32** %8, align 8
  store i32 %179, i32* %180, align 4
  br label %181

181:                                              ; preds = %163, %142
  br label %182

182:                                              ; preds = %181
  %183 = load i64, i64* @ARM_PGBYTES, align 8
  %184 = load i64, i64* %7, align 8
  %185 = add nsw i64 %184, %183
  store i64 %185, i64* %7, align 8
  br label %16

186:                                              ; preds = %16
  %187 = call i32 (...) @flush_mmu_tlb()
  ret void
}

declare dso_local i32 @align_to_page(i64*, i64*) #1

declare dso_local i32 @SHADOW_FOR_ADDRESS(i64) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @alloc_page(...) #1

declare dso_local i32 @__nosan_bzero(i8*, i64) #1

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
