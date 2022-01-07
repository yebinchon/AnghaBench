; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_map_bd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_map_bd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ARM_PTE_TYPE = common dso_local global i32 0, align 4
@ARM_PTE_AF = common dso_local global i32 0, align 4
@ARM_PTE_NX = common dso_local global i32 0, align 4
@ARM_PTE_PNX = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@AP_RWNA = common dso_local global i32 0, align 4
@AP_RONA = common dso_local global i32 0, align 4
@CACHE_ATTRINDX_DISABLE = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@PT_ENTRY_NULL = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"pmap_map_bd\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8
@ARM_PTE_NG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmap_map_bd(i32 %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load i64, i64* %6, align 8
  %14 = call i32 @pa_to_pte(i64 %13)
  %15 = load i32, i32* @ARM_PTE_TYPE, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @ARM_PTE_AF, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @ARM_PTE_NX, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @ARM_PTE_PNX, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @VM_PROT_WRITE, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* @AP_RWNA, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @AP_RONA, align 4
  br label %31

31:                                               ; preds = %29, %27
  %32 = phi i32 [ %28, %27 ], [ %30, %29 ]
  %33 = call i32 @ARM_PTE_AP(i32 %32)
  %34 = or i32 %22, %33
  %35 = load i32, i32* @CACHE_ATTRINDX_DISABLE, align 4
  %36 = call i32 @ARM_PTE_ATTRINDX(i32 %35)
  %37 = or i32 %34, %36
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %5, align 4
  store i32 %38, i32* %11, align 4
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* %12, align 8
  br label %40

40:                                               ; preds = %53, %31
  %41 = load i64, i64* %12, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp slt i64 %41, %42
  br i1 %43, label %44, label %74

44:                                               ; preds = %40
  %45 = load i32, i32* @kernel_pmap, align 4
  %46 = load i32, i32* %11, align 4
  %47 = call i32* @pmap_pte(i32 %45, i32 %46)
  store i32* %47, i32** %10, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %50 = icmp eq i32* %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %44
  %52 = call i32 @panic(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  br label %53

53:                                               ; preds = %51, %44
  %54 = load i32*, i32** %10, align 8
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @ARM_PTE_IS_COMPRESSED(i32 %55)
  %57 = icmp ne i32 %56, 0
  %58 = xor i1 %57, true
  %59 = zext i1 %58 to i32
  %60 = call i32 @assert(i32 %59)
  %61 = load i32*, i32** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @WRITE_PTE_STRONG(i32* %61, i32 %62)
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @pte_increment_pa(i32 %64)
  %66 = load i64, i64* @PAGE_SIZE, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %68, %66
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %11, align 4
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i64, i64* %12, align 8
  %73 = add nsw i64 %72, %71
  store i64 %73, i64* %12, align 8
  br label %40

74:                                               ; preds = %40
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %6, align 8
  %77 = icmp sge i64 %75, %76
  br i1 %77, label %78, label %85

78:                                               ; preds = %74
  %79 = load i32, i32* %5, align 4
  %80 = load i64, i64* %7, align 8
  %81 = load i64, i64* %6, align 8
  %82 = sub nsw i64 %80, %81
  %83 = trunc i64 %82 to i32
  %84 = call i32 @flush_mmu_tlb_region(i32 %79, i32 %83)
  br label %85

85:                                               ; preds = %78, %74
  %86 = load i32, i32* %11, align 4
  ret i32 %86
}

declare dso_local i32 @pa_to_pte(i64) #1

declare dso_local i32 @ARM_PTE_AP(i32) #1

declare dso_local i32 @ARM_PTE_ATTRINDX(i32) #1

declare dso_local i32* @pmap_pte(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @ARM_PTE_IS_COMPRESSED(i32) #1

declare dso_local i32 @WRITE_PTE_STRONG(i32*, i32) #1

declare dso_local i32 @pte_increment_pa(i32) #1

declare dso_local i32 @flush_mmu_tlb_region(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
