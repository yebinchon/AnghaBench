; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_map_bd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_map_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i64 0, align 8
@INTEL_PTE_REF = common dso_local global i32 0, align 4
@INTEL_PTE_MOD = common dso_local global i32 0, align 4
@INTEL_PTE_WIRED = common dso_local global i32 0, align 4
@INTEL_PTE_VALID = common dso_local global i32 0, align 4
@VM_MEM_NOT_CACHEABLE = common dso_local global i32 0, align 4
@VM_WIMG_USE_DEFAULT = common dso_local global i32 0, align 4
@INTEL_PTE_NCACHE = common dso_local global i32 0, align 4
@VM_MEM_GUARDED = common dso_local global i32 0, align 4
@INTEL_PTE_PTA = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@INTEL_PTE_NX = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@INTEL_PTE_WRITE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@PT_ENTRY_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [36 x i8] c"pmap_map_bd: Invalid kernel address\00", align 1
@TRUE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmap_map_bd(i64 %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i64, i64* %6, align 8
  store i64 %15, i64* %13, align 8
  %16 = load i64, i64* @FALSE, align 8
  store i64 %16, i64* %14, align 8
  %17 = load i64, i64* %7, align 8
  %18 = call i32 @pa_to_pte(i64 %17)
  %19 = load i32, i32* @INTEL_PTE_REF, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @INTEL_PTE_MOD, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @INTEL_PTE_WIRED, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @INTEL_PTE_VALID, align 4
  %26 = or i32 %24, %25
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @VM_MEM_NOT_CACHEABLE, align 4
  %29 = load i32, i32* @VM_WIMG_USE_DEFAULT, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = load i32, i32* @VM_MEM_NOT_CACHEABLE, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %47

34:                                               ; preds = %5
  %35 = load i32, i32* @INTEL_PTE_NCACHE, align 4
  %36 = load i32, i32* %11, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @VM_MEM_GUARDED, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %46, label %42

42:                                               ; preds = %34
  %43 = load i32, i32* @INTEL_PTE_PTA, align 4
  %44 = load i32, i32* %11, align 4
  %45 = or i32 %44, %43
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %42, %34
  br label %47

47:                                               ; preds = %46, %5
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load i32, i32* @INTEL_PTE_NX, align 4
  %54 = load i32, i32* %11, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %11, align 4
  br label %56

56:                                               ; preds = %52, %47
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @VM_PROT_WRITE, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %56
  %62 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %63 = load i32, i32* %11, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %11, align 4
  br label %65

65:                                               ; preds = %61, %56
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = icmp slt i64 %67, %68
  br i1 %69, label %70, label %98

70:                                               ; preds = %66
  %71 = load i32, i32* @kernel_pmap, align 4
  %72 = load i64, i64* %6, align 8
  %73 = call i32* @pmap_pte(i32 %71, i64 %72)
  store i32* %73, i32** %12, align 8
  %74 = load i32*, i32** %12, align 8
  %75 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %76 = icmp eq i32* %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70
  %78 = call i32 @panic(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77, %70
  %80 = load i32*, i32** %12, align 8
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @pte_to_pa(i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %79
  %85 = load i64, i64* @TRUE, align 8
  store i64 %85, i64* %14, align 8
  br label %86

86:                                               ; preds = %84, %79
  %87 = load i32*, i32** %12, align 8
  %88 = load i32, i32* %11, align 4
  %89 = call i32 @pmap_store_pte(i32* %87, i32 %88)
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @pte_increment_pa(i32 %90)
  %92 = load i64, i64* @PAGE_SIZE, align 8
  %93 = load i64, i64* %6, align 8
  %94 = add nsw i64 %93, %92
  store i64 %94, i64* %6, align 8
  %95 = load i64, i64* @PAGE_SIZE, align 8
  %96 = load i64, i64* %7, align 8
  %97 = add nsw i64 %96, %95
  store i64 %97, i64* %7, align 8
  br label %66

98:                                               ; preds = %66
  %99 = load i64, i64* %14, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %111

101:                                              ; preds = %98
  %102 = call i32 (...) @flush_tlb_raw()
  %103 = load i32, i32* @kernel_pmap, align 4
  %104 = load i64, i64* %13, align 8
  %105 = load i64, i64* %13, align 8
  %106 = load i64, i64* %8, align 8
  %107 = add nsw i64 %105, %106
  %108 = load i64, i64* %7, align 8
  %109 = sub nsw i64 %107, %108
  %110 = call i32 @PMAP_UPDATE_TLBS(i32 %103, i64 %104, i64 %109)
  br label %111

111:                                              ; preds = %101, %98
  %112 = load i64, i64* %6, align 8
  ret i64 %112
}

declare dso_local i32 @pa_to_pte(i64) #1

declare dso_local i32* @pmap_pte(i32, i64) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @pte_to_pa(i32) #1

declare dso_local i32 @pmap_store_pte(i32*, i32) #1

declare dso_local i32 @pte_increment_pa(i32) #1

declare dso_local i32 @flush_tlb_raw(...) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
