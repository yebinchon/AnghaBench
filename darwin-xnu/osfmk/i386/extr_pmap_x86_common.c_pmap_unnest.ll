; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_unnest.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_unnest.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PMAP_INVALID_PDPTNUM = common dso_local global i32 0, align 4
@PMAP__UNNEST = common dso_local global i32 0, align 4
@DBG_FUNC_START = common dso_local global i32 0, align 4
@pmap_nesting_size_min = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"pmap_unnest(%p,0x%llx,0x%llx): unaligned...\0A\00", align 1
@NBPDE = common dso_local global i32 0, align 4
@PDESHIFT = common dso_local global i32 0, align 4
@cpu_64bit = common dso_local global i64 0, align 8
@INTEL_PDPTE_NESTED = common dso_local global i32 0, align 4
@NPDEPG = common dso_local global i64 0, align 8
@NBPDPT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [44 x i8] c"pmap_unnest: no pde, grand %p vaddr 0x%llx\0A\00", align 1
@DBG_FUNC_END = common dso_local global i32 0, align 4
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_unnest(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* @PMAP_INVALID_PDPTNUM, align 4
  store i32 %13, i32* %12, align 4
  %14 = load i32, i32* @PMAP__UNNEST, align 4
  %15 = call i32 @PMAP_CODE(i32 %14)
  %16 = load i32, i32* @DBG_FUNC_START, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @VM_KERNEL_ADDRHIDE(i32 %18)
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @VM_KERNEL_ADDRHIDE(i32 %20)
  %22 = call i32 (i32, i32, ...) @PMAP_TRACE(i32 %17, i32 %19, i32 %21)
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* @pmap_nesting_size_min, align 4
  %25 = sub nsw i32 %24, 1
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %34, label %28

28:                                               ; preds = %3
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @pmap_nesting_size_min, align 4
  %31 = sub nsw i32 %30, 1
  %32 = and i32 %29, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %28, %3
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %6, align 4
  %38 = call i32 (i8*, i32, i32, ...) @panic(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %28
  %40 = load i32, i32* %4, align 4
  %41 = call i32 @is_ept_pmap(i32 %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @assert(i32 %44)
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* @NBPDE, align 4
  %48 = sub nsw i32 %47, 1
  %49 = xor i32 %48, -1
  %50 = and i32 %46, %49
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* %6, align 4
  %53 = add nsw i32 %51, %52
  %54 = load i32, i32* @NBPDE, align 4
  %55 = add nsw i32 %53, %54
  %56 = sub nsw i32 %55, 1
  %57 = load i32, i32* @NBPDE, align 4
  %58 = sub nsw i32 %57, 1
  %59 = xor i32 %58, -1
  %60 = and i32 %56, %59
  store i32 %60, i32* %11, align 4
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* %10, align 4
  %63 = sub nsw i32 %61, %62
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @PMAP_LOCK(i32 %64)
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @PDESHIFT, align 4
  %68 = ashr i32 %66, %67
  store i32 %68, i32* %9, align 4
  %69 = load i32, i32* %10, align 4
  store i32 %69, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %70

70:                                               ; preds = %122, %98, %39
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ult i32 %71, %72
  br i1 %73, label %74, label %130

74:                                               ; preds = %70
  %75 = load i32, i32* %4, align 4
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @pdptnum(i32 %75, i32 %76)
  %78 = load i32, i32* %12, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %80, label %112

80:                                               ; preds = %74
  %81 = load i64, i64* @cpu_64bit, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %112

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @pdptnum(i32 %84, i32 %85)
  store i32 %86, i32* %12, align 4
  %87 = load i32, i32* %4, align 4
  %88 = load i32, i32* %5, align 4
  %89 = call i32* @pmap64_pdpt(i32 %87, i32 %88)
  store i32* %89, i32** %7, align 8
  %90 = load i32*, i32** %7, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %111

92:                                               ; preds = %83
  %93 = load i32*, i32** %7, align 8
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @INTEL_PDPTE_NESTED, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %92
  %99 = load i32*, i32** %7, align 8
  %100 = call i32 @pmap_store_pte(i32* %99, i32 0)
  %101 = load i64, i64* @NPDEPG, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %8, align 4
  %106 = load i64, i64* @NBPDPT, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %108, %106
  %110 = trunc i64 %109 to i32
  store i32 %110, i32* %5, align 4
  br label %70

111:                                              ; preds = %92, %83
  br label %112

112:                                              ; preds = %111, %80, %74
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %5, align 4
  %115 = call i32* @pmap_pde(i32 %113, i32 %114)
  store i32* %115, i32** %7, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = icmp eq i32* %116, null
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* %4, align 4
  %120 = load i32, i32* %5, align 4
  %121 = call i32 (i8*, i32, i32, ...) @panic(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i32*, i32** %7, align 8
  %124 = call i32 @pmap_store_pte(i32* %123, i32 0)
  %125 = load i32, i32* %8, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %8, align 4
  %127 = load i32, i32* @NBPDE, align 4
  %128 = load i32, i32* %5, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %70

130:                                              ; preds = %70
  %131 = load i32, i32* %4, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load i32, i32* %11, align 4
  %134 = call i32 @PMAP_UPDATE_TLBS(i32 %131, i32 %132, i32 %133)
  %135 = load i32, i32* %4, align 4
  %136 = call i32 @PMAP_UNLOCK(i32 %135)
  %137 = load i32, i32* @PMAP__UNNEST, align 4
  %138 = call i32 @PMAP_CODE(i32 %137)
  %139 = load i32, i32* @DBG_FUNC_END, align 4
  %140 = or i32 %138, %139
  %141 = load i32, i32* @KERN_SUCCESS, align 4
  %142 = call i32 (i32, i32, ...) @PMAP_TRACE(i32 %140, i32 %141)
  %143 = load i32, i32* @KERN_SUCCESS, align 4
  ret i32 %143
}

declare dso_local i32 @PMAP_TRACE(i32, i32, ...) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRHIDE(i32) #1

declare dso_local i32 @panic(i8*, i32, i32, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @is_ept_pmap(i32) #1

declare dso_local i32 @PMAP_LOCK(i32) #1

declare dso_local i32 @pdptnum(i32, i32) #1

declare dso_local i32* @pmap64_pdpt(i32, i32) #1

declare dso_local i32 @pmap_store_pte(i32*, i32) #1

declare dso_local i32* @pmap_pde(i32, i32) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(i32, i32, i32) #1

declare dso_local i32 @PMAP_UNLOCK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
