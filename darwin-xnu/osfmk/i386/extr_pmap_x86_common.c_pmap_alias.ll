; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_alias.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/i386/extr_pmap_x86_common.c_pmap_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@INTEL_PTE_REF = common dso_local global i32 0, align 4
@INTEL_PTE_MOD = common dso_local global i32 0, align 4
@INTEL_PTE_WIRED = common dso_local global i32 0, align 4
@INTEL_PTE_VALID = common dso_local global i32 0, align 4
@VM_PROT_EXECUTE = common dso_local global i32 0, align 4
@INTEL_PTE_NX = common dso_local global i32 0, align 4
@VM_PROT_WRITE = common dso_local global i32 0, align 4
@INTEL_PTE_WRITE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@kernel_pmap = common dso_local global i32 0, align 4
@PT_ENTRY_NULL = common dso_local global i32* null, align 8
@PMAP_EXPAND_OPTIONS_ALIASMAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"pmap_alias: Invalid alias address\00", align 1
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmap_alias(i64 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load i32, i32* @INTEL_PTE_REF, align 4
  %16 = load i32, i32* @INTEL_PTE_MOD, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @INTEL_PTE_WIRED, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @INTEL_PTE_VALID, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @VM_PROT_EXECUTE, align 4
  %24 = and i32 %22, %23
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @INTEL_PTE_NX, align 4
  %28 = load i32, i32* %11, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %26, %5
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @VM_PROT_WRITE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @INTEL_PTE_WRITE, align 4
  %37 = load i32, i32* %11, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %11, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @PAGE_MASK, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  %46 = zext i1 %45 to i32
  %47 = call i32 @assert(i32 %46)
  br label %48

48:                                               ; preds = %95, %39
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %116

52:                                               ; preds = %48
  %53 = load i32, i32* @kernel_pmap, align 4
  %54 = load i64, i64* %6, align 8
  %55 = trunc i64 %54 to i32
  %56 = call i32* @pmap_pte(i32 %53, i32 %55)
  store i32* %56, i32** %13, align 8
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %59 = icmp eq i32* %57, %58
  br i1 %59, label %60, label %77

60:                                               ; preds = %52
  %61 = load i32, i32* %10, align 4
  %62 = load i32, i32* @PMAP_EXPAND_OPTIONS_ALIASMAP, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* @kernel_pmap, align 4
  %67 = load i64, i64* %6, align 8
  %68 = load i32, i32* @PMAP_EXPAND_OPTIONS_ALIASMAP, align 4
  %69 = call i32 @pmap_expand(i32 %66, i64 %67, i32 %68)
  %70 = load i32, i32* @kernel_pmap, align 4
  %71 = load i64, i64* %6, align 8
  %72 = trunc i64 %71 to i32
  %73 = call i32* @pmap_pte(i32 %70, i32 %72)
  store i32* %73, i32** %13, align 8
  br label %76

74:                                               ; preds = %60
  %75 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %76

76:                                               ; preds = %74, %65
  br label %77

77:                                               ; preds = %76, %52
  %78 = load i32*, i32** %13, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i64 @pte_to_pa(i32 %79)
  %81 = icmp eq i64 %80, 0
  %82 = zext i1 %81 to i32
  %83 = call i32 @assert(i32 %82)
  %84 = load i32, i32* @kernel_pmap, align 4
  %85 = load i32, i32* %7, align 4
  %86 = call i32* @pmap_pte(i32 %84, i32 %85)
  store i32* %86, i32** %14, align 8
  %87 = load i32*, i32** %14, align 8
  %88 = load i32*, i32** @PT_ENTRY_NULL, align 8
  %89 = icmp ne i32* %87, %88
  br i1 %89, label %90, label %95

90:                                               ; preds = %77
  %91 = load i32*, i32** %14, align 8
  %92 = load i32, i32* %91, align 4
  %93 = call i64 @pte_to_pa(i32 %92)
  %94 = icmp ne i64 %93, 0
  br label %95

95:                                               ; preds = %90, %77
  %96 = phi i1 [ false, %77 ], [ %94, %90 ]
  %97 = zext i1 %96 to i32
  %98 = call i32 @assert(i32 %97)
  %99 = load i32*, i32** %14, align 8
  %100 = load i32, i32* %99, align 4
  %101 = call i64 @pte_to_pa(i32 %100)
  %102 = call i32 @pa_to_pte(i64 %101)
  %103 = load i32, i32* %11, align 4
  %104 = or i32 %102, %103
  store i32 %104, i32* %12, align 4
  %105 = load i32*, i32** %13, align 8
  %106 = load i32, i32* %12, align 4
  %107 = call i32 @pmap_store_pte(i32* %105, i32 %106)
  %108 = load i64, i64* @PAGE_SIZE, align 8
  %109 = load i64, i64* %6, align 8
  %110 = add nsw i64 %109, %108
  store i64 %110, i64* %6, align 8
  %111 = load i64, i64* @PAGE_SIZE, align 8
  %112 = load i32, i32* %7, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %113, %111
  %115 = trunc i64 %114 to i32
  store i32 %115, i32* %7, align 4
  br label %48

116:                                              ; preds = %48
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32* @pmap_pte(i32, i32) #1

declare dso_local i32 @pmap_expand(i32, i64, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @pte_to_pa(i32) #1

declare dso_local i32 @pa_to_pte(i64) #1

declare dso_local i32 @pmap_store_pte(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
