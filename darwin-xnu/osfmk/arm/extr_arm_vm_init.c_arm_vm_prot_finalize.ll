; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_prot_finalize.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/arm/extr_arm_vm_init.c_arm_vm_prot_finalize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@BootCpuData = common dso_local global i32 0, align 4
@segBOOTDATAB = common dso_local global i32 0, align 4
@segSizeBOOTDATA = common dso_local global i32 0, align 4
@gVirtBase = common dso_local global i64 0, align 8
@segSizeTEXT = common dso_local global i64 0, align 8
@segTEXTB = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@ARM_PGBYTES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arm_vm_prot_finalize(%struct.TYPE_3__* %0) #0 {
  %2 = alloca %struct.TYPE_3__*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %2, align 8
  %3 = call i32 @cpu_stack_alloc(i32* @BootCpuData)
  %4 = load i32, i32* @segBOOTDATAB, align 4
  %5 = load i32, i32* @segSizeBOOTDATA, align 4
  %6 = call i32 @ml_static_mfree(i32 %4, i32 %5)
  %7 = load i64, i64* @gVirtBase, align 8
  %8 = load i64, i64* @segSizeTEXT, align 8
  %9 = load i64, i64* @segTEXTB, align 8
  %10 = load i64, i64* @gVirtBase, align 8
  %11 = sub nsw i64 %9, %10
  %12 = add nsw i64 %8, %11
  %13 = load i32, i32* @FALSE, align 4
  %14 = call i32 @arm_vm_page_granular_ROX(i64 %7, i64 %12, i32 %13)
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @phystokv(i32 %17)
  %19 = load i32, i32* @ARM_PGBYTES, align 4
  %20 = mul nsw i32 %19, 9
  %21 = sext i32 %20 to i64
  %22 = add nsw i64 %18, %21
  %23 = load i32, i32* @ARM_PGBYTES, align 4
  %24 = load i32, i32* @FALSE, align 4
  %25 = call i32 @arm_vm_page_granular_RWNX(i64 %22, i32 %23, i32 %24)
  %26 = call i32 (...) @FlushPoC_Dcache()
  %27 = call i32 (...) @flush_mmu_tlb()
  ret void
}

declare dso_local i32 @cpu_stack_alloc(i32*) #1

declare dso_local i32 @ml_static_mfree(i32, i32) #1

declare dso_local i32 @arm_vm_page_granular_ROX(i64, i64, i32) #1

declare dso_local i32 @arm_vm_page_granular_RWNX(i64, i32, i32) #1

declare dso_local i64 @phystokv(i32) #1

declare dso_local i32 @FlushPoC_Dcache(...) #1

declare dso_local i32 @flush_mmu_tlb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
