; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_enter_pte.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_pmap.c_pmap_enter_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_19__ = type { i32 }
%struct.TYPE_20__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }

@kernel_pmap = common dso_local global %struct.TYPE_18__* null, align 8
@ARM_PTE_WIRED = common dso_local global i32 0, align 4
@task_ledgers = common dso_local global %struct.TYPE_19__ zeroinitializer, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@ARM_PTE_TYPE_FAULT = common dso_local global i32 0, align 4
@ISB_SY = common dso_local global i32 0, align 4
@PMAP__TTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_18__*, i32*, i32, %struct.TYPE_18__*)* @pmap_enter_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmap_enter_pte(%struct.TYPE_18__* %0, i32* %1, i32 %2, %struct.TYPE_18__* %3) #0 {
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_18__*, align 8
  %9 = alloca i32*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_18__* %3, %struct.TYPE_18__** %8, align 8
  %10 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** @kernel_pmap, align 8
  %12 = icmp ne %struct.TYPE_18__* %10, %11
  br i1 %12, label %13, label %58

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @ARM_PTE_WIRED, align 4
  %16 = and i32 %14, %15
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @ARM_PTE_WIRED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %16, %20
  br i1 %21, label %22, label %58

22:                                               ; preds = %13
  %23 = load i32*, i32** %6, align 8
  %24 = call %struct.TYPE_20__* @ptep_get_ptd(i32* %23)
  %25 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %25, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = call i64 @ARM_PT_DESC_INDEX(i32* %27)
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %29, i32 0, i32 0
  store i32* %30, i32** %9, align 8
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @ARM_PTE_WIRED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %46

35:                                               ; preds = %22
  %36 = load i32*, i32** %9, align 8
  %37 = call i32 @OSAddAtomic16(i32 1, i32* %36)
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @task_ledgers, i32 0, i32 0), align 4
  %40 = load i32, i32* @PAGE_SIZE, align 4
  %41 = call i32 @pmap_ledger_credit(%struct.TYPE_18__* %38, i32 %39, i32 %40)
  %42 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %43, i32 0, i32 0
  %45 = call i32 @OSAddAtomic(i32 1, i32* %44)
  br label %57

46:                                               ; preds = %22
  %47 = load i32*, i32** %9, align 8
  %48 = call i32 @OSAddAtomic16(i32 -1, i32* %47)
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @task_ledgers, i32 0, i32 0), align 4
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = call i32 @pmap_ledger_debit(%struct.TYPE_18__* %49, i32 %50, i32 %51)
  %53 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %54, i32 0, i32 0
  %56 = call i32 @OSAddAtomic(i32 -1, i32* %55)
  br label %57

57:                                               ; preds = %46, %35
  br label %58

58:                                               ; preds = %57, %13, %4
  %59 = load i32*, i32** %6, align 8
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @ARM_PTE_TYPE_FAULT, align 4
  %62 = icmp ne i32 %60, %61
  br i1 %62, label %63, label %79

63:                                               ; preds = %58
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @ARM_PTE_IS_COMPRESSED(i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %79, label %68

68:                                               ; preds = %63
  %69 = load i32*, i32** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @WRITE_PTE_STRONG(i32* %69, i32 %70)
  %72 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %74 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %75 = load i32, i32* @PAGE_SIZE, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %74, i64 %76
  %78 = call i32 @PMAP_UPDATE_TLBS(%struct.TYPE_18__* %72, %struct.TYPE_18__* %73, %struct.TYPE_18__* %77)
  br label %85

79:                                               ; preds = %63, %58
  %80 = load i32*, i32** %6, align 8
  %81 = load i32, i32* %7, align 4
  %82 = call i32 @WRITE_PTE(i32* %80, i32 %81)
  %83 = load i32, i32* @ISB_SY, align 4
  %84 = call i32 @__builtin_arm_isb(i32 %83)
  br label %85

85:                                               ; preds = %79, %68
  %86 = load i32, i32* @PMAP__TTE, align 4
  %87 = call i32 @PMAP_CODE(i32 %86)
  %88 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %89 = call i32 @VM_KERNEL_ADDRHIDE(%struct.TYPE_18__* %88)
  %90 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %91 = call i32 @VM_KERNEL_ADDRHIDE(%struct.TYPE_18__* %90)
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %8, align 8
  %93 = load i32, i32* @PAGE_SIZE, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i64 %94
  %96 = call i32 @VM_KERNEL_ADDRHIDE(%struct.TYPE_18__* %95)
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @PMAP_TRACE(i32 3, i32 %87, i32 %89, i32 %91, i32 %96, i32 %97)
  ret void
}

declare dso_local %struct.TYPE_20__* @ptep_get_ptd(i32*) #1

declare dso_local i64 @ARM_PT_DESC_INDEX(i32*) #1

declare dso_local i32 @OSAddAtomic16(i32, i32*) #1

declare dso_local i32 @pmap_ledger_credit(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @OSAddAtomic(i32, i32*) #1

declare dso_local i32 @pmap_ledger_debit(%struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @ARM_PTE_IS_COMPRESSED(i32) #1

declare dso_local i32 @WRITE_PTE_STRONG(i32*, i32) #1

declare dso_local i32 @PMAP_UPDATE_TLBS(%struct.TYPE_18__*, %struct.TYPE_18__*, %struct.TYPE_18__*) #1

declare dso_local i32 @WRITE_PTE(i32*, i32) #1

declare dso_local i32 @__builtin_arm_isb(i32) #1

declare dso_local i32 @PMAP_TRACE(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @PMAP_CODE(i32) #1

declare dso_local i32 @VM_KERNEL_ADDRHIDE(%struct.TYPE_18__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
